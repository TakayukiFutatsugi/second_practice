class Message < ApplicationRecord
  belongs_to :chat
  
  validates :message, presence: true
end
