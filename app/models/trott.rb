class Trott < ActiveRecord::Base
  default_scope order: 'created_at DESC'
  attr_accessible :text, :user_id
  belongs_to :user

  validates :text, length: { minimum: 1, maximum: 140 }
end
