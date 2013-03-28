class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price , :shelf , :shelf_id
  attr_accessible :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",


                    :storage => :s3,
                    :bucket => 'grocerybackend',
                    :s3_credentials => {
                        :access_key_id => 'AKIAISYLROIF7PPBROIA',
                        :secret_access_key => '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'
                    }          ,
                    :path => "/:style/:id/:filename"

     belongs_to :shelf


end
