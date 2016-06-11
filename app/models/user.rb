class User < ActiveRecord::Base

	require "cpf_cnpj"

	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length:{maximum: 60}
  validates :nickname, presence: true, length:{maximum: 40}, uniqueness: true
  validates :email, presence: true, length:{maximum: 255},
  format: { with:  VALID_EMAIL },
  uniqueness: { case_sensitive: false }
  validates :address, presence:true
	validate :validate_cpf

	def validate_cpf
		unless CPF.valid?(self.cpf)
			errors.add(:cpf, "inválido")
		end
	end

end