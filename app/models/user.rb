class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:trackable, :validatable, :rememberable#
         #:recoverable, , :trackable, :validatable
  has_many :cars_todo_list
  has_many :comments
  
  validates :name, presence: true  , length: {minimum: 3}
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "25x25>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
