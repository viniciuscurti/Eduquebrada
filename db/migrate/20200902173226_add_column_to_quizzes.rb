class AddColumnToQuizzes < ActiveRecord::Migration[6.0]
  def change
    add_column :quizzes, :answer_5, :string
  end
end
