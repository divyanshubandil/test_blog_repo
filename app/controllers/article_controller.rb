# require 'jbuilder'

class ArticleController < ApplicationController
  # permitted_parameters(:show, {})
  def show
    @article = Article.find(1)
    # puts @article.title, @article.body
    # render json: @article
    @article
    # render 'views/article/show.json.jbuilder'
    # render 'article/show', formats: :json, handlers: :jbuilder
    # render 'fkjadlkfjadlfjal', formats: :json, handlers: :jbuilder
    # render tempelate: 'article/show', assigns: { article: @article }
    # render json: Jbuilder.new { |json| json.call(@article, :title, :body) }

    # format.json { render json: Jbuilder.new { |json| json.call(@article, :title, :body) } }
    
  end

  # permitted_parameters(:create, {})
  def create
    article = Article.new(title: 'Hello Rails', body: 'I am on Rails!')
    article.save
    head :ok
  end
end
