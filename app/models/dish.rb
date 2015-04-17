class Dish < ActiveRecord::Base

	has_many :dish_nums
	has_many :orders, through: :dish_nums

	has_attached_file :image, :styles => { :large => "600x600", :medium => "210x125#", :thumb => "130x100#" }, :default_url => "/dish_images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.png|jpeg|jpg\Z/

    scope :best_dish, -> { where(best_dish: true) }
    scope :special_offer, -> { where(special_offer: true) }

end
