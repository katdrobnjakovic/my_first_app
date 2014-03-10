 class NewsPostsController < ApplicationController
  
  before_action :deny_access_for_non_admins, except:[:index,:show] #can use the keyword only to do the opposite

  def index
  	@news_posts = NewsPost.all #variables with an @ are instance variables
  end

  def show
  	#@my_test_value = params[:id] #uses the params hash to get the key (id for news_post)
  	@news_post = NewsPost.find(params[:id])

  end

  def new
    @news_post = NewsPost.new #dummy object to build the form
  end

  def create
    @news_post = NewsPost.new(news_post_params)
    if @news_post.save #saves to the database
      redirect_to @news_post
    else
      # DO SOMETHING ELSE
    end
  end

  def edit
    @news_post = NewsPost.find(params[:id])
  end

  def update
    @news_post = NewsPost.find(params[:id]) #fetch an existing record

    if @news_post.update(news_post_params)
      redirect_to @news_post #redirect to show - breaks rails conventions
    else
      # DO SOMETHING ELSE 
    end

  end

  def destroy
    @news_post = NewsPost.find(params[:id])
    @news_post.destroy
    redirect_to news_posts_path #redirect to index (all the newsposts) after destroy
  end


  private

    def news_post_params
      params.require(:news_post).permit(:title,:body) #sanitizes the hash
    end


end
