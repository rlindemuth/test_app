class User < ActiveRecord::Base
  has_many :received_reviews, 
    :class_name => 'Review', 
    :foreign_key => 'reviewed_user_id'
end
