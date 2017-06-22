class CreateLeituras < ActiveRecord::Migration[5.1]
  def change
	create_table :leitura do |t|
      t.belongs_to :praia, index: true
      t.column :data, :timestamp
    end
  end
end
