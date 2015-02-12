class User < ActiveRecord::Base
  has_many :recipes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :allergies

  ratyrate_rater

  validates :name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :allergy_ids

def allergy?(allergy_sym)
    allergies.any? { |r| r.name.underscore.to_sym == allergy_sym }
  end

  # Default role is "User"
  def setup_allergy
    if self.allergy_ids.empty?
      self.allergy_ids = [9]
    end
  end
end
