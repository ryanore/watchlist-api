# define a command class
class AuthenticateUser

	# put SimpleCommand before the class' ancestors chain
  prepend SimpleCommand

  # optional, initialize the command with some arguments
  def initialize(email, password)
    @user = email
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
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
