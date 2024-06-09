Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:5173",
            "http://127.0.0.1:5173",
            "https://ewoknock.github.io/whereswaldo",
            "https://ewoknock.github.io"
    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true,
      max_age: 86400
  end
end

Rails.application.config.action_controller.forgery_protection_origin_check = false



