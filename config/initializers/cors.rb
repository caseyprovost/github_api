Rails.application.configure do |config|
  config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "*"
      resource "/api/v5/*",
        headers: %w[Authorization],
        methods: :any,
        max_age: 600,
        expose: %w[Authorization]
    end
  end
end
