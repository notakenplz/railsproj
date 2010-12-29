class Post < ActiveRecord::Base
    validates :name,  :presence => true,
                    :length => {:minimum => 1, :maximum => 50}
    validates :context, :presence => true,
                    :length => { :minimum => 1, :maximum => 65536}
    validates :title, :presence => true,
                  :length => { :minimum => 1 , :maximum => 50}
    self.per_page = 10;
    
    def self.search(search, page)
      paginate :per_page => 10, :page => page,
           :conditions => ['name like ? OR context like?', "%#{search}%", "%#{search}%"], :order => '6 DESC'
    end
    
end
