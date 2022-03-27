#/usr/bin/ruby -w
require "open-uri"
require "net/http"
require "colorize"
system("cls")
system("clear")
print " 
                                                                                                                                                                                   
                                                                                                                                                                                   
   SSSSSSSSSSSSSSS      QQQQQQQQQ     LLLLLLLLLLL                     SSSSSSSSSSSSSSS              CCCCCCCCCCCCC                    AAA                    NNNNNNNN        NNNNNNNN
 SS:::::::::::::::S   QQ:::::::::QQ   L:::::::::L                   SS:::::::::::::::S          CCC::::::::::::C                   A:::A                   N:::::::N       N::::::N
S:::::SSSSSS::::::S QQ:::::::::::::QQ L:::::::::L                  S:::::SSSSSS::::::S        CC:::::::::::::::C                  A:::::A                  N::::::::N      N::::::N
S:::::S     SSSSSSSQ:::::::QQQ:::::::QLL:::::::LL                  S:::::S     SSSSSSS       C:::::CCCCCCCC::::C                 A:::::::A                 N:::::::::N     N::::::N
S:::::S            Q::::::O   Q::::::Q  L:::::L                    S:::::S                  C:::::C       CCCCCC                A:::::::::A                N::::::::::N    N::::::N
S:::::S            Q:::::O     Q:::::Q  L:::::L                    S:::::S                 C:::::C                             A:::::A:::::A               N:::::::::::N   N::::::N
 S::::SSSS         Q:::::O     Q:::::Q  L:::::L                     S::::SSSS              C:::::C                            A:::::A A:::::A              N:::::::N::::N  N::::::N
  SS::::::SSSSS    Q:::::O     Q:::::Q  L:::::L                      SS::::::SSSSS         C:::::C                           A:::::A   A:::::A             N::::::N N::::N N::::::N
    SSS::::::::SS  Q:::::O     Q:::::Q  L:::::L                        SSS::::::::SS       C:::::C                          A:::::A     A:::::A            N::::::N  N::::N:::::::N
       SSSSSS::::S Q:::::O     Q:::::Q  L:::::L                           SSSSSS::::S      C:::::C                         A:::::AAAAAAAAA:::::A           N::::::N   N:::::::::::N
            S:::::SQ:::::O  QQQQ:::::Q  L:::::L                                S:::::S     C:::::C                        A:::::::::::::::::::::A          N::::::N    N::::::::::N
            S:::::SQ::::::O Q::::::::Q  L:::::L         LLLLLL                 S:::::S      C:::::C       CCCCCC         A:::::AAAAAAAAAAAAA:::::A         N::::::N     N:::::::::N
SSSSSSS     S:::::SQ:::::::QQ::::::::QLL:::::::LLLLLLLLL:::::L     SSSSSSS     S:::::S       C:::::CCCCCCCC::::C        A:::::A             A:::::A        N::::::N      N::::::::N
S::::::SSSSSS:::::S QQ::::::::::::::Q L::::::::::::::::::::::L     S::::::SSSSSS:::::S        CC:::::::::::::::C       A:::::A               A:::::A       N::::::N       N:::::::N
S:::::::::::::::SS    QQ:::::::::::Q  L::::::::::::::::::::::L     S:::::::::::::::SS           CCC::::::::::::C      A:::::A                 A:::::A      N::::::N        N::::::N
 SSSSSSSSSSSSSSS        QQQQQQQQ::::QQLLLLLLLLLLLLLLLLLLLLLLLL      SSSSSSSSSSSSSSS                CCCCCCCCCCCCC     AAAAAAA                   AAAAAAA     NNNNNNNN         NNNNNNN
                                Q:::::Q                                                                                                                                            
                                 QQQQQQ                                                                                                                                            
                                                                                                                                                                                   
                                                                                                                                                                                   
                                                                                                                                                                                   
                                                                                                                                                                                   
                                                                                                                                                                                                                             
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
