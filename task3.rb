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
            if hour % 10==1
              name_h='час'
            elsif (1<(hour % 10)) and ((hour % 10)<5)
               name_h='часа'
            else
               name_h='часов'
            end
            min=(itog-hour*3600)/60
            if min % 10==1
              name_m='минута'
            elsif (1<(min % 10)) and ((min % 10)<5)
               name_m='минуты'
            else
               name_m='минут'
            end
            sec=itog-hour*3600-min*60
            if sec % 10==1
              name_s='секунда'
            elsif (1<(sec % 10)) and ((sec % 10)<5)
               name_s='секунды'
            else
               name_s='секунд'
            end
            puts "#{hour} #{name_h} #{min} #{name_m} #{sec} #{name_s}"
	 end
      end 
    end
       
    puts del(ARGV[0].to_i,ARGV[1].to_i)



