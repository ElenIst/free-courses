# encoding: UTF-8
# Программа подсчета остатка дней до нового года
	
def convert_days(secs)

 time = secs.round           
 sec = time % 60             
 time /= 60                 
 mins = time % 60            
 time /= 60                  
 hrs = time % 24            
 time /= 24                 
 days = time                
 [days, hrs, mins, sec]      # возвращаем массив [d,h,m,s].

end


def do_NewYear(d, m, y)
 if m =='января'
   d_pm = 0
 elsif m =='февраля'  
    d_pm = 31
elsif m == 'марта'
   d_pm = 59
elsif m == 'апреля'
   d_pm=90
elsif m == 'мая'
   d_pm=120
elsif m == 'июня'
   d_pm=151
elsif m == 'июля'
   d_pm=181
elsif m == 'августа'
   d_pm=212
elsif m == 'сентября'
   d_pm=243
elsif m == 'октября'
   d_pm=273
elsif m == 'ноября' 
   d_pm=304
 elsif m == 'декабря'
   d_pm=334
end
to_date=365*86400  # секунд на конец года 31.12.2018
v=d_pm.to_i+d.to_i
from_date=86400*v.to_i     # секунд на заданную дату 
razn= to_date - from_date 

resultat=convert_days(razn)

puts "#{resultat[0]} дней"
end
 puts do_NewYear(ARGV[0], ARGV[1], ARGV[2])
 