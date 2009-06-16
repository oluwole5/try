# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_try_session',
  :secret      => 'feb2cb7ce2db35e73a05fe168e52aa90be031f3f9dcd7aff5db063125f59643371c8a0ac51444ac0080ac6c826f06c129c93a499df1d494f30a9574c1ef054a6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
