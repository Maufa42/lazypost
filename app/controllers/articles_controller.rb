class ArticlesController < ApplicationController
  def index
    @article_index = Article.all
  end

  def show
    @article_show = Article.find(params[:id])
  end

  def new
    @article_new = Article.new
  end

  def create
    @article_new = Article.new(article_params)
    debugger
    if @article_new.save
      redirect_to @article  
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def article_params
    params.require(:article).permit(:title,:body)
  end
end
