class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :publication, optional: true
  validates :content, presence: true
end
