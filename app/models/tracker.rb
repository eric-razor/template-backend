class Tracker < ApplicationRecord
  has_many :tickers
  has_many :users, through: :tickers
end
