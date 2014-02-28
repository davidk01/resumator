require 'resumator'

resume = Resumator.resume do
  
  contact name: "david karapetyan", phone: "8185232661", email: "dkarapetyan@gmail.com"

  summary "I solve problems with software."

  education school: "USC", degree: "M.A. in Mathematics", start_date: "2007", end_date: "2010"

  education school: "UC Davis", degree: "B.S. in Mathematics", start_date: "2005", end_date: "2007"

  experience title: "devops", company: "Platfora", start_date: "Jan. 2014",
   summary: %Q(DevOps, Infrastructure, Tools, Automation, etc.)

  experience title: "software engineer", company: "ebay", start_date: "Sep. 2012",
   end_date: "Jan. 2014",
   summary: %Q(I was part of the release engineering team at ebay local and helped
    migrate the legacy deployment pipeline from Puppet to debian packages that used
    chef-solo for (pre/post)-install logic. Along the way I also built a few orchestration
    tools to declaratively describe infrastructure using OpenStack APIs.)
  
  experience title: "software test engineer", company: "esolar", start_date: "Oct. 2011",
   end_date: "Sep. 2012",
   summary: %Q(I designed and implemented software tools for testing and verification of 
    systems that run solar power plants using a combination of C#, PowerShell and bits and 
    pieces of Ruby and Python. My crowning achievement was a ray tracer that was a few orders 
    of magnitude faster than all previously built versions and helped track down a bug in the 
    heliostat tracking table generation and compression pipeline.)

  project title: "decmux", link: "https://github.com/davidk01/declarative-tmux-layouts",
   summary: %Q(Ruby DSL for declarative tmux layout configuration along with command 
   execution and nesting.)

  project title: "pegrb", link: "https://github.com/davidk01/pegrb",
   summary: %Q(A small embedded Ruby DSL that is a combination of PEGs and some bits 
    from OMeta for specifying formal grammars. Currently a work in progress. I'm using
    it to learn about parsers, compilers, virtual machines, etc. by implementing subsets
    of various languages.)

  project title: "oat (OpenStack API Toolkit)", link: "https://github.com/davidk01/oat",
   summary: %Q(Internal Ruby DSL that strives to provide a declarative way of describing
    virtual machine clusters. I developed this during my time at ebay in order to streamline
    the testing and deployment pipeline.)

  project title: "apt-repo-construction-kit",
   link: "https://github.com/davidk01/apt-repo-construction-kit",
   summary: %Q(Part of maintaining infrastructure is making sure there is a central 
    repository of software for easy deployment, rollback, and provisioning. For debian 
    based distribution you want to set up a debian repository. This project codifies 
    the process.)

  project title: "rpc-experiment", link: "https://github.com/davidk01/rpc-experiment",
   summary: %Q(A little experiment with nio4r (non-blocking asynchronous I/O), celluloid 
    (actor based concurrency), and JRuby (super easy deployment) for building a scalable 
    and plugin based orchestration mechanism.)

  project title: "BuyThisLater", link: "http://www.buythislater.net/",
   summary: %Q(A small web2py based web application for tracking prices on Amazon.com. 
   The interface is a very simple bookmarklet that can be activated on any Amazon.com 
   product page.)

end

puts resume.markdown
