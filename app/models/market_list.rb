class MarketList < ApplicationRecord
    has_many :items, dependent: :destroy

    validates :name, presence: true
    validates :market_date, presence: true
end
