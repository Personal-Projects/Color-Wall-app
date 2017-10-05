class AddMoreAnswersToQuiz < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :answer4, :string
    add_column :quizzes, :answer5, :string
    add_column :quizzes, :answer6, :string
    add_column :quizzes, :answer7, :string
    add_column :quizzes, :answer8, :string
    add_column :quizzes, :answer9, :string
    add_column :quizzes, :answer10, :string
  end
end
