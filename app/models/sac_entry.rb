class SacEntry < ActiveRecord::Base
	validates :description, :amount, :category_id, :date, :type_id, presence: true
	belongs_to :category
	belongs_to :user
end
