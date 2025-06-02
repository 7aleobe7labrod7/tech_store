class HomeController < ApplicationController
  def index
    @services = Service.limit(3)
    @tutorials = Tutorial.limit(3)
    @prompts = Prompt.limit(3)
    @posts = Post.order(created_at: :desc).limit(3)
  end
end
