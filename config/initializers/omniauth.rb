Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :twitter, 's0ycTXJTIFWhdDM9Pn93QQ', 'D1nla0qxFM5wJqTbvMRSDerMeHuwCxMtpzWwFBUJGU'
  provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
