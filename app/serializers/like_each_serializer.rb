class LikeEachSerializer < Panko::Serializer
  attributes :id, :user_id, :item_id
  # has_one :user, serializer: UserSerializer
  has_one :item, serializer: ItemSerializer
end