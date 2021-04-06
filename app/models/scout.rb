class Scout < ApplicationRecord
  belongs_to :candidate
  belongs_to :corporation
end
