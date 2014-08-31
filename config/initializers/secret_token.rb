# Generate secure token
#   This function and call dynamically generates a secure token and
#   places it in a separate file that will be excluded by .gitignore.
#   This ensures that a secure token if the file is shared on a 
#   public repository
#
#   It appears on www.railstutorial.org
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

TheGingerArmadillo::Application.config.secret_key_base = secure_token
