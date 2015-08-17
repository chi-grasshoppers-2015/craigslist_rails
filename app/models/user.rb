require 'bcrypt'
class User < ActiveRecord::Base
  validates :password, confirmation: true

  has_many :articles
  has_many :categories

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: params[:email])
    return @user if @user && @user.password == password
    redirect_to categories_path
  end

end
