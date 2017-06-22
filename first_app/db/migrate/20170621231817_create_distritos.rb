class CreateDistritos < ActiveRecord::Migration[5.1]
  def change
    create_table :distritos do |t|
    	t.column :descricao, :string
    end
  end
end
