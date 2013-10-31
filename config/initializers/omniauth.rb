OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :facebook, '244145872408846', '9dbfe4980482e20e4765eb6fe40b20a7', {:provider_ignores_state => true}
  provider :google_oauth2, "552614324079", "zJZiGIotoyxIkCcj-H0Am3y0"
end