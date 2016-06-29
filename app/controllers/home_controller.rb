class HomeController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @posts = Post.all.order("created_at DESC")
  end
end
