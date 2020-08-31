class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :phone, :string
    add_column :users, :occupation, :string
    add_column :users, :teacher, :boolean, default: false
  end
end
