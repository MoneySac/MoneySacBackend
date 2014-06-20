class Category < ActiveRecord::Base
	validates :name, :type_id, presence: true
	has_many :sac_entries
end
