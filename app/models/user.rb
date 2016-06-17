class User < ActiveRecord::Base

	require "cpf_cnpj"
	require "bcrypt"

    belongs_to :profile

	has_secure_password

    has_attached_file :validation_image
    validates_attachment :validation_image,
        content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

	before_save	{	self.email	=	email.downcase	}

	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length:{maximum: 60}
  validates :nickname, presence: true, length:{maximum: 40}, uniqueness: true
  validates :email, presence: true, length:{maximum: 255},
  format: { with:  VALID_EMAIL },
  uniqueness: { case_sensitive: false }
  validates :address, presence:true
	validate :validate_cpf
	validates :password, length:{minimum: 6}

	def validate_cpf
		unless CPF.valid?(self.cpf)
			errors.add(:cpf, "inválido")
		end
	end

	def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Password.create(string, cost: cost)
  	end

end