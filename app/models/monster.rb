class Monster < ApplicationRecord
    validates :name, presence: true
    validates :ac, presence: true
    validates :hp, presence: true
end