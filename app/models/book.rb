class Book < ApplicationRecord
  scope :costly, -> {where("price > ?", 3000)}    # Book.costly
  scope :written_about, ->(theme) {where("name like ?", "%#{theme}%")}    # Book.written_about(theme)
end
