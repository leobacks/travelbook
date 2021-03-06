class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rank_tweets = Tweet.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(5)
    if params[:search] == nil
      @tweets= Tweet.all.page(params[:page]).per(10)
    elsif params[:search] == ''
      @tweets= Tweet.all.page(params[:page]).per(10)
    else
      @tweets = Tweet.where("backpacker LIKE ? ",'%' + params[:search] + '%').or(Tweet.where("price LIKE ? ", "%" + params[:search] + "%")).page(params[:page]).per(10)
    end
  end
  
  def create
    tweet = Tweet.new(tweet_params)
    tweet.user_id = current_user.id
    if tweet.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comments = @tweet.comments
    @comment = Comment.new
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to :action => "show", :id => tweet.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :lat, :country, :image, :q, :lng, :backpacker,:price, tag_ids: [], price_ids: [])
  end

end