class RemovePasswordValidateFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :password_validate, :string
  end
end
