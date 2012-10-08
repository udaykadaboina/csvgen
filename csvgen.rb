require 'CSV'
class Csvgen

    def intialize
        @my_interval
        @jersey_rand
        @win_lose
        @tcurrent
    

    end
#include Threads
    def start
        @tcurrent = 0

        
        t = Thread.new do
            CSV.open("events_list.csv", "wb") do |csv| 
            while true do
                @my_interval = rand(9)
            #    puts "random num: is #{@my_interval}"
            #    puts "next num will be generated in #{@my_interval} seconds" 
                @tcurrent += @my_interval
                mm, ss = @tcurrent.divmod(60)  
                @jersey_rand = [ 3, 5 , 11, 13, 22, 23, 99, 10, 12, 8 ].sample # generates the random jersey number
                @win_lose = [:won, :lost].sample 
                a = [@jersey_rand, @win_lose, "#{mm}:#{ss}"] # this array is fed to CSV file
                puts "#{@jersey_rand} has #{@win_lose} 50-50 at #{mm}:#{ss}"
                puts a
                # => Feed a into CSV file now!
                
                 csv << a
                end

                sleep @my_interval
            end
            
        end 
    end
    
end


gen = Csvgen.new

gen.start


