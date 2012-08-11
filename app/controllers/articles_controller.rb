class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all 
  end

  def show
    if params.include? :id
      @article = Article.find(params[:id])
    else
      @article = Article.find_by_slug(params[:slug])
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = "Article was saved"
      redirect_to articles_path
    else
      flash[:error] = "Article was not saved"
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
