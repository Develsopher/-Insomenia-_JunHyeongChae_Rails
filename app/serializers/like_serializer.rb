class LikeSerializer < Panko::Serializer
  attributes :id, :user_id, :item_id
  has_one :item, serializer: ItemSerializer
end