class Administrator::TweetsController < ApplicationController
  before_action :admin_user
 
  def index
    @tweet = Tweet.new
    @tweets = params[:tag_id].present? ? Tag.find(params[:tag_id]).tweets : Tweet.all
  end

  private
    def admin_user
      redirect_to(root_url) unless current_user.administrator?
    end
end
