class Category < ActiveRecord::Base
	validates :name, :type_id, presence: true
	validates :type_id, numericality: {greater_than_or_equal_to:0}
	has_many :sac_entries
end
