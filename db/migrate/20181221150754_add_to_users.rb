class AddToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :company, :string
    add_column :users, :industry, :string
    add_column :users, :email, :string
    add_column :users, :position, :string
  end
end
