class CreateTemperaturas < ActiveRecord::Migration[5.1]
  def change
    create_table :temperaturas do |t|
    	t.belongs_to :leitura, index: true
    	t.column :valor, :float
    end
  end
end
