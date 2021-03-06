class User < ActiveRecord::Base
    attr_accessor :name, :email, :password
    has_one :country_culture
   before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 51 }
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 256 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
   #has_secure_password
    validates :password, length: { minimum: 6 }
    
     def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end

