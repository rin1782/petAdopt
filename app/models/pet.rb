class Pet < ApplicationRecord
    belongs_to :user

    #class method that handles arr of posts
    def self.arr_to_json
        self.all.map do |p|
            p.instance_to_json
        end 
    end 

    # instance method that handles one specific post
    def instance_to_json
        { 
            id: self.id,
            name: self.name,
            about: self.about,
            img_url: self.img_url,
            inquiries: self.inquiries,
            user: {
                id: self.user.id,
                name: self.user.name
             }
         }
    end 
end
