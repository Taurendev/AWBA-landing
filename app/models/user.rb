class User < ApplicationRecord
  before_create :member_since_generate
  before_create :set_account_status
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  self.per_page = 5

  private

  def member_since_generate
    self.member_since = Time.zone.now
  end

  def set_account_status
    self.account_status = "Guest"
  end

end
