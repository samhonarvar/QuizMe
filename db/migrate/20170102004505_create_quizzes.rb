class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :field_id
      t.integer :category_id
      t.string :question
      t.string :answer
      t.timestamp :last
      t.boolean :was_correct

      t.timestamps null: false
    end
  end
end
