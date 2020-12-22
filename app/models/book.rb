class Book < ApplicationRecord
  scope :costly, -> {where("price > ?", 3000)}    # Book.costly
  scope :written_about, ->(theme) {where("name like ?", "%#{theme}%")}    # Book.written_about(theme)

  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :name, presence: true
  validates :name, length: {maximum: 25}
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # numericality: { only_integer: true} => 整数値のみ
  # numericality: { greater_than_or_equal_to: 0 } => 0より大きな数字
end
