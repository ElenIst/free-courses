# Task 3
# Программа cложения временных промежутков
	
   def del(t1,t2) 
      if (t1<1) or (t2<1) or (t2>100000)
         puts "We need positive integer arguments in the range from 1 to 100 000"
      else 
         itog=t1+t2
         if itog < 60
            puts "#{itog} секунд"
	 elsif (itog>=60) and (itog<3600)
            min=itog/60
            puts " #{min} минут #{(itog-min*60)} секунд"
         elsif (itog>=3600) and (itog<216000)
            hour=itog/3600
            min=(itog-hour*3600)/60
            puts "#{hour} час #{min} минут #{(itog-hour*3600-min*60)} секунд"
	 end
      end 
    end
       
    puts del(ARGV[0].to_i,ARGV[1].to_i)
    
