class Room < ApplicationRecord
  belongs_to :user, optional: true
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
end
