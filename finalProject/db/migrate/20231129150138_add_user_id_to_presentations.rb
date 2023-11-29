class AddUserIdToPresentations < ActiveRecord::Migration[7.0]
  def change
    add_reference :presentations, :user, null: false, foreign_key: true
  end
end
