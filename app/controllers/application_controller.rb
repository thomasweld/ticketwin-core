class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include ActionController::RespondWith
  include ActionController::ImplicitRender
  include ActionController::MimeResponds
  include ActionController::Serialization

  respond_to :json
end

