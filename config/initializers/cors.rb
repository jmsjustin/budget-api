# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com", "localhost:5173", "<budget-frontend-app.onrender.com/>"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end
