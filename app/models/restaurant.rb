class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :delete_all

  validates :name, :address, :category, :phone_number, presence: true, allow_blank: false
  validates :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}

end
