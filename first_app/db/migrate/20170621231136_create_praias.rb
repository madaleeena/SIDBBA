class CreatePraias < ActiveRecord::Migration[5.1]
  def change
    create_table :praias do |t|
      t.belongs_to :distritos, index: true
      t.column :name, :string, :limit => 32, :null => false
      t.column :location, :string, :limit => 32, :null => false
    end
    
      create_table :praias_utilizadors, id: false do |t|
      t.belongs_to :utilizador, index: true
      t.belongs_to :praia, index: true
    end
  end
end
