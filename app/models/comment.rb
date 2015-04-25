class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  validates_associated :user
  validates_associated :article
  
  validates :corpse, presence: true
  
end
