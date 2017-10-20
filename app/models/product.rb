class Product < ApplicationRecord
  include ImageUploader::Attachment.new(:image)
  belongs_to :user, optional: true
  has_many :reviews , :dependent => :destroy

  def self.search(search)
   where("name LIKE ?", "%#{search}%")
  end

end
