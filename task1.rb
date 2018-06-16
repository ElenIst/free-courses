# Программа проверки строки (A не палиндром ли это?)
  def pal(str) 

   str1=str.delete(' ').upcase
   dlina=str1.length 
   
   if dlina % 2==0
      puts "NO"
   else
      seredina=(dlina-1)/2
      $i=0
      $j=-1 
      while $i<=seredina do
        if str1[$i]==str1[$j]
          $i+=1
          $j-=1
          result=true
        else
          result=false          
          break    
        end
      end
      if result  
        puts "YES"
      else 
        puts "NO"
      end
   end
 end

 puts pal(ARGV[0]), "\n"

        

	

