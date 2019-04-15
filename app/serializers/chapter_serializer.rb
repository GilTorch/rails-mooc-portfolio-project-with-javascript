class ChapterSerializer < ActiveModel::Serializer
  attributes :id,:title
  has_many :user_chapters 
  has_many :users, through: :user_chapters 
  belongs_to :course
  has_many :lessons
end
