class Dm < ApplicationRecord
  validates :user_id, {presence: true}
  validates :to_user_id, {presence: true}
  validates :content, {presence: true, length: {maximum: 140}}
end
