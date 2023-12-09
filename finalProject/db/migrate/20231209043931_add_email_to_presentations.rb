class AddEmailToPresentations < ActiveRecord::Migration[7.0]
  def change
    add_column :presentations, :user_email, :string
  end
end
