class Cliente < ApplicationRecord
	has_and_belongs_to_many :praias
end
