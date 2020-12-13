class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :cards

  validates :password, length: { minimum: 5 }, if: lambda {
    new_record? || changes[:crypted_password]
  }

  validates :password, confirmation: true, if: lambda {
    new_record? || changes[:crypted_password]
  }
  validates :password_confirmation, presence: true, if: lambda {
    new_record? || changes[:crypted_password]
  }

  validates :email, uniqueness: true, presence: true

  authenticates_with_sorcery!

  def author?(resource)
    resource.user_id == id
  end
end