class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at, :url

  def url
    object.try(:track).try(:url)
  end
end