class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :cliente do |t|
      t.column :nomeutilizador, :string, :limit => 32, :null => false
      t.column :email, :string, :limit => 100, :null => false
      t.column :nome, :string, :limit => 50, :null => false
      t.column :passe, :string, :limit => 20, :null => false
    end

  end
end
