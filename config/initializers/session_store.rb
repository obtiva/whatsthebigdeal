# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_whatsthebigdeal_session',
  :secret      => 'ef181b456680b1c5b3eb2d491f09228cbb1f6dfbb0ef3065fdde0502fe12fe4b4b7730976803c37bdddab971f86c5087cbc2ea06497d46f74bd84cef5b26b44e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
