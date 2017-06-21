class Praia < ApplicationRecord
	has_and_belongs_to_many :cliente
	has_many :leitura
end
