class Ticker < ApplicationRecord
  belongs_to :user
  belongs_to :tracker
end
