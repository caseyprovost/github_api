module Api
  module V5
    class BaseController < ApplicationController
      include Graphiti::Rails::Responders
    end
  end
end
