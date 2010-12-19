class Post < ActiveRecord::Base
    validates :name,  :presence => true,
                    :length => {:minimum => 1, :maximum => 50}
    validates :context, :presence => true,
                    :length => { :minimum => 1, :maximum => 65536}
    validates :title, :presence => true,
                    :length => { :minimum => 5 , :maximum => 50}

end
