class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    @snippet.user = User.find(1)

    if @snippet.save
      flash[:notice] = "Snippet has been created."
      redirect_to @snippet
    else
      flash.now[:alert] = "Snippet has not been created."
      render 'new'
    end

  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    if @snippet.update(snippet_params)
      flash[:success] = "Snippet has been updated."
      redirect_to snippet_path(@snippet)
    else
      render 'edit'
    end
  end

  private

  def snippet_params
    params.require(:snippet).permit(:name, :summary, :description)
  end

end
