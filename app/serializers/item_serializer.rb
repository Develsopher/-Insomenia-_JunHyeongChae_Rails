class ItemSerializer < Panko::Serializer
  attributes :id, :image, :brand, :name, :price, :reviews_average, :reviews_count, :category_id, :category_name, :description
  has_many :options, serializer: OptionEachSerializer
  has_one :category, serializer: CategorySerializer
end