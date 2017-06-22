class Leitura < ApplicationRecord
	has_one :temperatura
	has_one :luminosidade
	has_one :pressao
	has_one :humidade
	belongs_to :praia
end
