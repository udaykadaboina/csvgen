require 'CSV'
class Csvposgen
    def initialize
        @tcurrent
    end

# include Threads
    def start
        @tcurrent = 0
        t = Thread.new do
            CSV.open("p_list.csv", "wb") do |csv|
                mm = 0
                until mm == 60 do 
                interval = 30
                @tcurrent += interval            
                mm,ss = @tcurrent.divmod(60)
                pos = rand(30) + 40
                a = ["00:#{mm}:#{ss}", pos]
                puts a
                csv << a
                end
            end
        end #thread


    end #start
 
end #class

gen = Csvposgen.new
gen.start