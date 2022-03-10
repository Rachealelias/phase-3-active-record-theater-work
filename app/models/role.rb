class Role < ActiveRecord::Base
    has_many :auditions, dependent: :destroy

    def actors
        self.auditions.map{|audition| audition.actor}
    end

    def locations
        self.auditions.map(&:location)
    end

    def lead
       Audition.where(hired: true, role:self).first || "no actor has been hired for this role" 
    end

    def understudy
        Audition.where(hired: true, role:self).second || "no actor has been hired for this role" 
     end
end