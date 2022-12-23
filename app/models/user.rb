class User < ApplicationRecord
  belongs_to :country
  validates :name, length: { maximum: 50 }
  validate :validate_age
  def validate_age
    return if age >= 18 && age <= 99

    errors.add :user, :invalid, message: 'El usuario debe tener entre 18 y 99 años'
  end
end
