class Leitura < ApplicationRecord
	has_one :temperaturas
	has_one :luminosidades
	has_one :pressaos
	has_one :humidades
	belongs_to :praias
end
