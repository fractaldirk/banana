Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '486210298118961', 'cb39738435fb48ff7d6860599869e118', scope: "email,publish_stream"
end
