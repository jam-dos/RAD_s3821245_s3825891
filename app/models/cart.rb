class Cart < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :cart_items
end
