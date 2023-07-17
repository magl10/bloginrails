json.extract! administrador, :id, :username, :email, :password, :password_confirmation, :created_at, :updated_at
json.url administrador_url(administrador, format: :json)
