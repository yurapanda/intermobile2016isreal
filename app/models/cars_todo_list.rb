class CarsTodoList < ActiveRecord::Base
	has_many :service_todos
	belongs_to :user
	has_many :comments
	has_many :searches


#validations
	validates :image ,					 presence: true
	validates :car_plate_number, 		 presence: true, length: {maximum: 8, minimum: 1}
	validates :car_model, 		 	     presence: true
	validates :paid_amount,			 presence: true, numericality: {greater_than_or_equal_to: 0}

 	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
	

	validates_attachment_content_type :image, :content_type=> /\Aimage\/.*\Z/






	def ready_for_pickup?
  		!ready_for_pickup_at.blank? 
  	end

  	def pickedup?
  		 !pickedup_at.blank?
  	end

  	def has_image?
  		 !image.blank?
  	end
end
