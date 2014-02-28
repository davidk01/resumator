require "resumator/version"

module Resumator
  
  class Resume
    
    class Contact < Struct.new(:name, :phone, :email)
      def markdown
        <<-eos
## Contact Information
#{name} - #{email} - #{phone}

        eos
      end
    end

    class Summary < Struct.new(:summary)
      def markdown
        <<-eos
## Summary
#{summary}

        eos
      end
    end

    class Experience < Struct.new(:title, :company, :start_date, :end_date, :summary)
      def markdown
        <<-eos
* ### #{company} - #{title} : #{start_date} - #{end_date}
#{summary}

        eos
      end
    end

    class Project < Struct.new(:title, :link, :summary)
      def markdown
        <<-eos
* ### [#{title}](#{link})
#{summary}

        eos
      end
    end

    class Education < Struct.new(:school, :degree, :start_date, :end_date)
      def markdown
        <<-eos
* ### #{school} - #{degree} : #{start_date} - #{end_date}

        eos
      end
    end

    def initialize
      @summary, @contact = nil, nil
      @projects, @education, @experience = [], [], []
    end

    def contact(name:, phone:, email:); @contact = Contact.new(name, phone, email); end

    def summary(s); @summary = Summary.new(s); end

    def experience(title:, company:, start_date:, end_date: 'Present', summary:)
      @experience << Experience.new(title, company, start_date, end_date, summary)
    end

    def project(title:, link:, summary:); @projects << Project.new(title, link, summary); end

    def education(school:, degree:, start_date:, end_date:)
      @education << Education.new(school, degree, start_date, end_date)
    end

    def markdown
      md = ""
      md << @contact.markdown
      md << @summary.markdown
      md << "# Education\n"
      @education.each {|ed| md << ed.markdown}
      md << "# Experience\n"
      @experience.each {|exp| md << exp.markdown}
      md << "# Projects\n"
      @projects.each {|proj| md << proj.markdown}
      md
    end

  end

  def self.resume(&blk)
    resume = Resume.new
    resume.instance_eval(&blk)
    resume
  end

end
