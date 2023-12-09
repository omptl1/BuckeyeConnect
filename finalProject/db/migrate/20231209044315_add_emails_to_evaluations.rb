class AddEmailsToEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_column :evaluations, :evaluator_email, :string
    add_column :evaluations, :presented_user_email, :string
  end
end
