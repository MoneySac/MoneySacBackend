class SacEntry < ActiveRecord::Base
	validates :description, :amount, :category_id, :date, :type_id, :recurring, presence: true
	belongs_to :category
end
