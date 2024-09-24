class Publication < ApplicationRecord
  belongs_to :user
  has_many :postulations, dependent: :destroy
  has_one_attached :image, dependent: :destroy

  validates :content, presence: true
end
