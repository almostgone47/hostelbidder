class User < ApplicationRecord
  include Clearance::User
  validates :email, :full_name, :age, presence: :true

end
