class Chat < ApplicationRecord
  belongs_to :candidate
  belongs_to :corporation
  has_many :messages, dependent: :destroy 
end
