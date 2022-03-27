#/usr/bin/ruby -w

# Xss Detection tool Powred by baha
require "open-uri"
require "net/http"
require "colorize"
system("cls")
print " 
                                                                                                                                                          
                                                                                                                                                          
XXXXXXX       XXXXXXX   SSSSSSSSSSSSSSS    SSSSSSSSSSSSSSS         SSSSSSSSSSSSSSS                                                                        
X:::::X       X:::::X SS:::::::::::::::S SS:::::::::::::::S      SS:::::::::::::::S                                                                       
X:::::X       X:::::XS:::::SSSSSS::::::SS:::::SSSSSS::::::S     S:::::SSSSSS::::::S                                                                       
X::::::X     X::::::XS:::::S     SSSSSSSS:::::S     SSSSSSS     S:::::S     SSSSSSS                                                                       
XXX:::::X   X:::::XXXS:::::S            S:::::S                 S:::::S                     cccccccccccccccc       aaaaaaaaaaaaa        nnnn  nnnnnnnn    
   X:::::X X:::::X   S:::::S            S:::::S                 S:::::S                   cc:::::::::::::::c       a::::::::::::a       n:::nn::::::::nn  
    X:::::X:::::X     S::::SSSS          S::::SSSS               S::::SSSS               c:::::::::::::::::c       aaaaaaaaa:::::a      n::::::::::::::nn 
     X:::::::::X       SS::::::SSSSS      SS::::::SSSSS           SS::::::SSSSS         c:::::::cccccc:::::c                a::::a      nn:::::::::::::::n
     X:::::::::X         SSS::::::::SS      SSS::::::::SS           SSS::::::::SS       c::::::c     ccccccc         aaaaaaa:::::a        n:::::nnnn:::::n
    X:::::X:::::X           SSSSSS::::S        SSSSSS::::S             SSSSSS::::S      c:::::c                    aa::::::::::::a        n::::n    n::::n
   X:::::X X:::::X               S:::::S            S:::::S                 S:::::S     c:::::c                   a::::aaaa::::::a        n::::n    n::::n
XXX:::::X   X:::::XXX            S:::::S            S:::::S                 S:::::S     c::::::c     ccccccc     a::::a    a:::::a        n::::n    n::::n
X::::::X     X::::::XSSSSSSS     S:::::SSSSSSSS     S:::::S     SSSSSSS     S:::::S     c:::::::cccccc:::::c     a::::a    a:::::a        n::::n    n::::n
X:::::X       X:::::XS::::::SSSSSS:::::SS::::::SSSSSS:::::S     S::::::SSSSSS:::::S      c:::::::::::::::::c     a:::::aaaa::::::a        n::::n    n::::n
X:::::X       X:::::XS:::::::::::::::SS S:::::::::::::::SS      S:::::::::::::::SS        cc:::::::::::::::c      a::::::::::aa:::a       n::::n    n::::n
XXXXXXX       XXXXXXX SSSSSSSSSSSSSSS    SSSSSSSSSSSSSSS         SSSSSSSSSSSSSSS            cccccccccccccccc       aaaaaaaaaa  aaaa       nnnnnn    nnnnnn
                                                                                                                                                          
                                                                                                                                                          
                                                                                                                                                          
                                                                                                                                                          
                                                                                                                                                          
                                                                                                                                                          
                                                                                                                                                          
                                                           
 \n".red

list = ARGV[0]

if (ARGV.length < 1) then 
	def ban()
	puts "USAGE <./RSDScan.rb sites.txt >"
	exit 
	end
	ban()
	 end
File.open("#{list}","r").each do |target|  

#Payloads encoded with  http encode
payload =["%22%3EXXTES%3C","%2F%22%3EXXTES%3C","%2522%253EXXTES%253C","%3Ca%20href%3D%22google.com%22%3EXXTES%3C%2Fa%3E"]
e = 1
payload.each do |i|


result = open("#{target}#{i}").read
response = Net::HTTP.get_response(URI.parse("#{target}#{i}"))
if (response.code != "200") then 
	puts " #{target} Maybe Vulnrable \n\n".yellow
	break
end
if (result[">XXTES<"].nil?) then
 puts " #{target}  Not vulnrable to xss"
else 
	puts "#{target} XSS DETECTED"
	break
  end
end
end
