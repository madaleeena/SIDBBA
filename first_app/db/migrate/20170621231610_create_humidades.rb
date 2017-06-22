class CreateHumidades < ActiveRecord::Migration[5.1]
  def change
    create_table :humidades do |t|
    	t.belongs_to :leituras, index: true
    	t.column :valor, :float
    end
  end
end
