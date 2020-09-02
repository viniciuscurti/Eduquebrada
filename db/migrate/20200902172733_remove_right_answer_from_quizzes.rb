class RemoveRightAnswerFromQuizzes < ActiveRecord::Migration[6.0]
  def change
    remove_column :quizzes, :right_answer, :string
  end
end
