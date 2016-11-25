# define a command class
class AuthorizeApiRequest
  # put SimpleCommand before the class' ancestors chain
  prepend SimpleCommand

  # optional, initialize the command with some arguments
  def initialize(headers = {})
    @headers = headers
  end

  # Required call method returns user method which does the work
  def call
    user
  end

  attr_reader :headers

  # fetch user by auth token (once decoded)
  def user
    @user ||= User.find(decode_auth_token[:user_id]) if decode_auth_token
    @user || errors.add(:token, 'Invalid Token') && nil
  end

  #  decode what's sent through header
  def decode_auth_token
    @decode_auth_token ||= JsonWebToken.decode(http_auth_header)
  end

  # Return header if it exists
  def http_auth_header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    else
      errors.add(:token, 'Missing Token')
    end
    nil
  end
end
