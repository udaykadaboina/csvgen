class Csvgen
    def intialize
        @my_interval
        @jersey_rand = [ 3, 5 , 11, 13, 22, 23, 99, 10, 12, 8 ]
        @win_lose
        @tcurrent
    

    end
#include Threads
    def start
        @tcurrent = 0
        t = Thread.new do
            while true do
                @my_interval = rand(9)
            #    puts "random num: is #{@my_interval}"
            #    puts "next num will be generated in #{@my_interval} seconds" 
                @tcurrent += @my_interval               
                puts "#{[ 3, 5 , 11, 13, 22, 23, 99, 10, 12, 8 ].sample} has #{[:won, :lost].sample} 50-50 at #{@tcurrent}"
                sleep @my_interval
            end
        end
    end
    
end


gen = Csvgen.new

gen.start


