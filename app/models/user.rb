class User < ActiveRecord::Base
  has_secure_password

  def self.authenticate_with_credentials(email, password)

    user = self.find_by_email(email.strip)

    if user && user.authenticate(password)

      return user
    else 
      return nil
    end
  end

end
