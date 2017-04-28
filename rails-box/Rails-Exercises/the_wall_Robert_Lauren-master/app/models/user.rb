class User < ActiveRecord::Base
  def self.verify email, password
    return self.find_by(email: email,password: password)
  end
end
