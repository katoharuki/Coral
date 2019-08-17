# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :text
#  name       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_many :post_tag_relations, dependent: :delete_all
    has_many :tags, through: :post_tag_relations

    validates :name, presence: true, length: { maximum: 30 }
    validates :title, presence: true, length: { maximum: 30 }
    validates :content, presence: true, length: { maximum: 1000 }
end

def user
  return User.find_by(id: self.user_id)
end
