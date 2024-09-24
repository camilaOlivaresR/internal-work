class Postulation < ApplicationRecord
  belongs_to :user
  belongs_to :publication

  validates :description, presence: true
end
