class CreateLeituras < ActiveRecord::Migration[5.1]
  def change
    create_table :leituras do |t|
    	t.belongs_to :praias, index: true
      	t.column :data, :timestamp
    end
  end
end
