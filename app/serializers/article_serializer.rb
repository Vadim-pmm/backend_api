class ArticleSerializer < ActiveModel::Serializer
  #attribute :title, key: :name
  attributes :id, :title
end