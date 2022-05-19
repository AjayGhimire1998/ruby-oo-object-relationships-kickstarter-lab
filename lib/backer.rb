class Backer 
    attr_reader :name 

    def initialize name 
        @name = name
    end

    def back_project project 
        ProjectBacker.new(project, self)
    end

    def backed_projects 
        backed_backers = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        backed_backers.map do |proj|
            proj.project
        end
    end
end