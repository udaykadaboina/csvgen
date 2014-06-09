require 'CSV'
class Possession
  # Every 30 secs a random posession # will be created which is used to create a csv file & create a graph using.
  # use of Threads
  def start
    tcurrent = 0
    t = Thread.new do
      CSV.open("p_list.csv", "wb") do |csv|
        mm = 0
        until mm == 70 do 
        interval = 30
        tcurrent += interval            
        mm,ss = tcurrent.divmod(60)
        pos = rand(30) + 40 #creates random posession #.
        if ss == 0 then
          ss = "00"
        elsif
          ss = ss
        end             
        a = [" #{mm}:#{ss}", pos]
        puts a
        csv << a
        end
      end
      end #thread
  end #start
 
end #class

gen = Possession.new
gen.start