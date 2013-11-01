# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
	  File.read(token_file).chomp
	else 
	  token = SecureRandom.hex(64)
	  File.write(token_file,token)
	  token
	end
end	    	
SampleApp::Application.config.secret_key_base = '8e25634f74bb572e11565642e2f954804768e7503a65cae442ead7f6403bbf1570e0e2c6fa70f0d64f79cdced1186b995bc78304ea914f8e796f82b071d2ce0c'
