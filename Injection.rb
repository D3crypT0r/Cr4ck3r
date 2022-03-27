#/usr/bin/ruby -w
require "open-uri"
require "net/http"
require "colorize"
system("cls")
system("clear")
print " 
                                                                                                                                                                                   
                                                                                                                                                                                   
                                                                                                                                          
                                                                                                                                          
IIIIIIIIII                 jjjj                                                  tttt            iiii                                     
I::::::::I                j::::j                                              ttt:::t           i::::i                                    
I::::::::I                 jjjj                                               t:::::t            iiii                                     
II::::::II                                                                    t:::::t                                                     
  I::::Innnn  nnnnnnnn   jjjjjjj    eeeeeeeeeeee        ccccccccccccccccttttttt:::::ttttttt    iiiiiii    ooooooooooo   nnnn  nnnnnnnn    
  I::::In:::nn::::::::nn j:::::j  ee::::::::::::ee    cc:::::::::::::::ct:::::::::::::::::t    i:::::i  oo:::::::::::oo n:::nn::::::::nn  
  I::::In::::::::::::::nn j::::j e::::::eeeee:::::ee c:::::::::::::::::ct:::::::::::::::::t     i::::i o:::::::::::::::on::::::::::::::nn 
  I::::Inn:::::::::::::::nj::::je::::::e     e:::::ec:::::::cccccc:::::ctttttt:::::::tttttt     i::::i o:::::ooooo:::::onn:::::::::::::::n
  I::::I  n:::::nnnn:::::nj::::je:::::::eeeee::::::ec::::::c     ccccccc      t:::::t           i::::i o::::o     o::::o  n:::::nnnn:::::n
  I::::I  n::::n    n::::nj::::je:::::::::::::::::e c:::::c                   t:::::t           i::::i o::::o     o::::o  n::::n    n::::n
  I::::I  n::::n    n::::nj::::je::::::eeeeeeeeeee  c:::::c                   t:::::t           i::::i o::::o     o::::o  n::::n    n::::n
  I::::I  n::::n    n::::nj::::je:::::::e           c::::::c     ccccccc      t:::::t    tttttt i::::i o::::o     o::::o  n::::n    n::::n
II::::::IIn::::n    n::::nj::::je::::::::e          c:::::::cccccc:::::c      t::::::tttt:::::ti::::::io:::::ooooo:::::o  n::::n    n::::n
I::::::::In::::n    n::::nj::::j e::::::::eeeeeeee   c:::::::::::::::::c      tt::::::::::::::ti::::::io:::::::::::::::o  n::::n    n::::n
I::::::::In::::n    n::::nj::::j  ee:::::::::::::e    cc:::::::::::::::c        tt:::::::::::tti::::::i oo:::::::::::oo   n::::n    n::::n
IIIIIIIIIInnnnnn    nnnnnnj::::j    eeeeeeeeeeeeee      cccccccccccccccc          ttttttttttt  iiiiiiii   ooooooooooo     nnnnnn    nnnnnn
                          j::::j                                                                                                          
                jjjj      j::::j                                                                                                          
               j::::jj   j:::::j                                                                                                          
               j::::::jjj::::::j                                                                                                          
                jj::::::::::::j                                                                                                           
                  jjj::::::jjj                                                                                                            
                     jjjjjj                                                                                                                                                                                                                                                           
                                                                                                                                                                                   
                                                                                                                                                                                   
                                                                                                                                                                                   
                                                                                                                                                                                                                             
".red

list = ARGV[0]
if (ARGV.length < 1) then 
	puts "USAGE <./Injection.rb sites.txt >"
	exit 
	
	 end
File.open("#{list}","r").each do |target|  
	
	

payload =["'","/*","/>X"]
e = 1
payload.each do |i|

response = Net::HTTP.get_response(URI.parse("#{target}#{i}"))
if ("400" < response.code) then 
	print "#{target} "
	print " =========== > SQL DETECTED\n\n".red
	

elsif ("300"<response.code) and (response.code<"400") then 
print "#{target}"
print "=============> Redirect" 
end
$site = open("#{target}#{i}", 'User-Agent' => 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:2.0b8pre) Gecko/20101114 Firefox/4.0b8pre').read

 
if($site["You have an erro"].nil?) and ($site["SQL"].nil?) and ($site["MYSQL"].nil?)then 
	puts "#{target}"
	puts "Test N : #{e}"
	puts"=============== >[*] Not vulnrable\n\n".green
	e = e + 1
else 
	print "#{target} "
	print " =========== > [*] SQL DETECTED\n\n".red
	break
end


end
end
