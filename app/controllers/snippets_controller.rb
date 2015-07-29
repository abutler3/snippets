class SnippetsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  before_action :set_snippet, only: [:show, :edit, :update, :like, :destroy]

  def index
    @snippets = Snippet.all
  end

  def show
    # @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    # @snippet.user = User.find(1)
    @snippet.user = current_user

    if @snippet.save
      flash[:notice] = "Snippet has been created."
      redirect_to @snippet
    else
      flash.now[:alert] = "Snippet has not been created."
      render 'new'
    end

  end

  def edit
    # @snippet = Snippet.find(params[:id])
  end

  def update
    # @snippet = Snippet.find(params[:id])
    if @snippet.update(snippet_params)
      flash[:success] = "Snippet has been updated."
      redirect_to snippet_path(@snippet)
    else
      flash.now[:alert] = "Snippet has not been updated."
      render 'edit'
    end
  end

  def destroy
    @snippet.destroy
    flash[:notice] = "Snippet has been deleted."

    redirect_to @snippet
  end

  def like
    @snippet.user = current_user
    like = Like.create(like: params[:like], user: current_user, snippet: @snippet)
    if like.valid?
      flash[:success] = "Your selection was recorded"
      redirect_to :back
    else
      flash[:danger] = "You can only like/dislike a snippet once"
      redirect_to :back
    end
  end

  private

  def snippet_params
    params.require(:snippet).permit(:name, :summary, :description)
  end

  def set_snippet
    @snippet = Snippet.find(params[:id])
  end

end
