# define a command class
class AuthenticateUser

  # put SimpleCommand before the class' ancestors chain
  prepend SimpleCommand

  # optional, initialize the command with some arguments
  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
  if user
    tkn = JsonWebToken.encode(user_id: user.id)
    usr = user.serializable_hash.except!('password_digest')

    {
      access_token: tkn,
      user: usr
    }
    end
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end
