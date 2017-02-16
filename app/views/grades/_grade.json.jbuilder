json.extract! grade, :id, :letter_grade, :comment, :course, :user_id, :created_at, :updated_at
json.url grade_url(grade, format: :json)