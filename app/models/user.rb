class User < ApplicationRecord
  enum :role, [:user, :admin]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :publications, dependent: :destroy
         has_many :postulations, dependent: :destroy
         has_one_attached :image, dependent: :destroy
end
