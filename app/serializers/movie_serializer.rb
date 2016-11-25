class MovieSerializer < ActiveModel::Serializer
  attributes :id, :data, :user_id, :list_id
end
