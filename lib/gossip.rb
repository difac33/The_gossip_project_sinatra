#require 'csv'
#require 'pry'

class Gossip 

  attr_reader :author, :content
    
    def initialize(author, content)

      @author = author

      @content = content

    end

      def save

        CSV.open("./db/gossip.csv", "ab") do |csv|

          csv << [@author, @content]

        end

        puts "Gossip saved in .CSV file."

      end

      Gossip.new("super_auteur", "super gossip").save





end

#binding.pry
