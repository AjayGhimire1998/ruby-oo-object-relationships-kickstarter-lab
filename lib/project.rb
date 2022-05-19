class Project 
    attr_reader :title

    def initialize title 
        @title = title
    end

    def add_backer backer
        ProjectBacker.new(self, backer)
    end

    def backers 
        backed_projects =  ProjectBacker.all.select do |pb|
            pb.project == self
        end
        backed_projects.map do |proj|
            proj.backer
        end
    end
end