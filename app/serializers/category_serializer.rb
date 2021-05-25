class CategorySerializer < Panko::Serializer
  attributes :id, :category_name, :image, :category_name_eng
  # attributes :id, :title, :position, :image_path
  delegate :image, to: :object
end
