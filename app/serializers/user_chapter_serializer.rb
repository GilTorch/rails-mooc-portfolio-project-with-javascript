class UserChapterSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user 
  belongs_to :chapter
end
