class RemoveUserIdConstraintFromEvaluations < ActiveRecord::Migration[7.0]
  def change
    change_column :evaluations, :user_id, :integer, null: true
  end
end
