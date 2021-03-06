class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :sac_entries
  has_and_belongs_to_many :users
  belongs_to :user
end
