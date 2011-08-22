class Merchant < ActiveRecord::Base
  
  named_scope :by_name, :order => "name ASC"
  
end
