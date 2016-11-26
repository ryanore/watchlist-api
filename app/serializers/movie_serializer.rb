class MovieSerializer < ActiveModel::Serializer
  attributes :id, :data, :user_id, :tags
end
