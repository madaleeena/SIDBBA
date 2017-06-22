class Praia < ApplicationRecord
	has_and_belongs_to_many :clientes
	has_many :leituras
	belongs_to :distrito
end
