# frozen_string_literal: true

json.call(@article, :title, :body)

json.article do
  json.title @article.title
  json.body @article.body
end
