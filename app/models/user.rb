class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :movies
  has_many :reviews, dependent: :destroy
  
  def create
  @user= User.new
    
    if @user.save
      ModelMailer.new_record_notification(@user).deliver
      redirect_to @user
    end
  end
  
end
