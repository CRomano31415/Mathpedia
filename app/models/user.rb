class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :wikis, dependent: :destroy
  has_many :collaborations
  has_many :shared_wikis, through: :collaborations, source: :wiki 
  
  enum role: [:member, :premium, :admin]

  before_save { self.role ||= :member }

  def downgrade!
    wikis.update_all(private: false)
    self.update_attribute(:role, 'member')
    self.member!
  end

end
