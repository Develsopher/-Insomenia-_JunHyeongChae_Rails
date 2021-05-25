  class ImageEachSerializer < Panko::Serializer
    attributes :id, :category_name

    delegate :image_path, to: :object
  end
