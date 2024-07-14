class Employee < ApplicationRecord
  belongs_to :department
  has_many :bills, dependent: :destroy

  validates :first_name, :last_name, :email, :department_id, :designation, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end