class Staff < ActiveRecord::Base
  self.inheritance_column = "not_sti"
  validates :name, presence: true, length: { maximum: 50 },
            uniqueness: true
  validates :signature, length: { maximum: 255 }  

  
  has_secure_password
  validates :password, length: { minimum: 6 }


 # def User.digest(string)
 #   cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
 #            BCrypt::Engine.cost
 #   BCrypt::Password.create(string, cost: cost)
 # end


end
