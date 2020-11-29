class Administrator::ListsController < ApplicationController

  before_action :admin_user

  def index
    @tweets = Tweet.all
  end

  private
    def admin_user
      redirect_to(root_url) unless current_user.administrator?
    end
end