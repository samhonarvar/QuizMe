json.extract! quiz, :id, :field_id, :category_id, :question, :answer, :last, :was_correct, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)