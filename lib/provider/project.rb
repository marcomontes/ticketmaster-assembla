module TicketMaster::Provider
  module Assembla
    # Project class for ticketmaster-assembla
    #
    #
    class Project < TicketMaster::Provider::Base::Project
      #API = Assembla::Project # The class to access the api's projects
      # declare needed overloaded methods here
      
      
      # copy from this.copy(that) copies that into this
      def copy(project)
        project.tickets.each do |ticket|
          copy_ticket = self.ticket!(:title => ticket.title, :description => ticket.description)
          ticket.comments.each do |comment|
            copy_ticket.comment!(:body => comment.body)
            sleep 1
          end
        end
      end

    end
  end
end


