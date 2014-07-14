class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :categories
  has_many :categories
  has_many :sac_entries
  #has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png",
   #:path => ':rails_root/public/system/:class/:attachment/:id_partition/:style/:filename'
   :url  => "/assets/avatars/:id/:style/:basename.:extension",
   :path => ":rails_root/public/assets/avatars/:id/:style/:basename.:extension"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
