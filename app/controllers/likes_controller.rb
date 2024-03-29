class LikesController < ApplicationController
  before_action :authenticate_account!
  
  # def save_like
  #   @like = Like.new(post_id: params[:post_id], account_id: current_account.id)
  #   @post_id = params[:post_id]

  #   respond_to do |format|
  #     format.js {
  #       if @like.save
  #         @success: true 
  #       else
  #         @success: false 
  #       end

  #       render "post/like"
  #     }
  #   end
  # end
  def create
    @like = current_account.likes.build(like_params)
    @post = @like.post
    if @post == nil
      print('asdf')
      flash[:alert] = "Post has been deleted"
    end
    if @like.save
      respond_to :js
    else 
      flash[:alert] = "something went wrong"
    end
    
  end 

  def destroy
    @like = Like.find(params[:id])
    @post = @like.post
    if @like.destroy
      respond_to :js
    else 
      flash[:alert] = "something went wrong"
    end
  end
  
  def index
    @likes = Like.all.includes(:post, :account).order(created_at: :desc)
  end

  private
  def like_params
    params.permit :post_id
  end
end
