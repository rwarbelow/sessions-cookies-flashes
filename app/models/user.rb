class User < ActiveRecord::Base
  validates :first_name, presence: true, uniqueness: { scope: :last_name }
  validates :last_name, presence: true
end
