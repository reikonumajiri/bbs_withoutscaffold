class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :boards, dependent: :destroy
  has_many :messages, dependent: :destroy

  def boards
    return Board.where(user_id: self.id)
  end

  def messages
    return Message.where(user_id: self.id)
  end
end
