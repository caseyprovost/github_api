Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: {format: :jsonapi} do
    mount VandalUi::Engine, at: "/vandal"
    # your routes go here
  end
end
