class Praia < ApplicationRecord
	self.table_name = "praias"
 	has_and_belongs_to_many :utilizadors
	has_many :leituras
	belongs_to :distritos
end
