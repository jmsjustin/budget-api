json.id category.id
json.name category.name
json.recommended_percent category.recommended_percent
json.expenses category.expenses
json.progress current_user ? category.progress(current_user) : "0%"
json.description category.description
json.created_at category.created_at
json.updated_at category.updated_at