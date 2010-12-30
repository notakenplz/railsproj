class Post < ActiveRecord::Base
    validates :name,  :presence => true,
                    :length => {:minimum => 1, :maximum => 100}
    validates :context, :presence => true,
                    :length => { :minimum => 1, :maximum => 1000000}
    validates :title, :presence => true,
                  :length => { :minimum => 1 , :maximum => 100}
    self.per_page = 10;
    
    #search functionality
    def self.search(search, page)
      paginate :per_page => 10, :page => page,
           :conditions => ['name like ? OR context like?', "%#{search}%", "%#{search}%"], :order => '6 DESC'
    end
    
end
