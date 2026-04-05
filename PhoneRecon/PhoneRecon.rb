# Tool ini mungkin sederhana, tapi dibuat dengan usaha.
# Jangan copy–paste tanpa izin.
# Respect the author.
require "net/http"
require "json"
require "uri"

# Warna untuk CLI
module Color
  RESET = "\033[0m"
  RED = "\033[31m"
  GREEN = "\033[32m"
  YELLOW = "\033[33m"
  BLUE = "\033[34m"
  CYAN = "\033[36m"
  WHITE = "\033[37m"
end

def banner
puts"#{Color::RED}██████╗ ██╗  ██╗ ██████╗ ███╗   ██╗███████╗        ██████╗ ███████╗ ██████╗ ██████╗ ███╗   ██╗
██╔══██╗██║  ██║██╔═══██╗████╗  ██║██╔════╝        ██╔══██╗██╔════╝██╔════╝██╔═══██╗████╗  ██║
██████╔╝███████║██║   ██║██╔██╗ ██║█████╗          ██████╔╝█████╗  ██║     ██║   ██║██╔██╗ ██║
██╔═══╝ ██╔══██║██║   ██║██║╚██╗██║██╔══╝          ██╔══██╗██╔══╝  ██║     ██║   ██║██║╚██╗██║
██║     ██║  ██║╚██████╔╝██║ ╚████║███████╗███████╗██║  ██║███████╗╚██████╗╚██████╔╝██║ ╚████║
╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝
                                                                                              #{Color::RESET}"
puts"#{Color::YELLOW}# Author: Andriano#{Color::RESET}"
end
banner
puts "#{Color::CYAN}==================================== CATATAN =======================================#{Color::RESET}"
puts "Untuk menggunakan tool ini, kamu wajib sudah memiliki API Key dari veriphone.io.
Jika belum punya, silakan daftar dan ambil API Key di:
https://veriphone.io/app"
puts "#{Color::CYAN}====================================================================================#{Color::RESET}"
puts "This tool requires a valid API Key from veriphone.io to function.
If you don’t have one yet, register and obtain your API key here:
https://veriphone.io/app"
puts "#{Color::CYAN}=====================================================================================#{Color::RESET}"
puts "Lanjut(y/n):"
ans = gets.chomp
 if ans == "y"
   puts "Masukan API_KEY = "
   apikey = gets.chomp
   puts "Masukan No_Telepon = "
   no     = gets.chomp
   no = URI.encode_www_form_component(no)
   url = URI("https://api.veriphone.io/v2/verify?phone=#{no}&key=#{apikey}")

   response = Net::HTTP.get(url)
   request = JSON.parse(response)
   if request["status"] == "success"
     puts "#{Color::YELLOW}Pesan               : #{request["status"]}#{Color::RESET}"
     puts "#{Color::YELLOW}Nomor               : #{request["phone"]}#{Color::RESET}"
     puts "#{Color::YELLOW}No_Valid            : #{request["phone_valid"]}#{Color::RESET}"
     puts "#{Color::YELLOW}Tipe_No             : #{request["phone_type"]}#{Color::RESET}"
     puts "#{Color::YELLOW}Negara              : #{request["phone_region"]}#{Color::RESET}"
     puts "#{Color::YELLOW}Provinsi/Kawasan    : #{request["country"]}#{Color::RESET}"
     puts "#{Color::YELLOW}Kode_Negara         : #{request["country_code"]}#{Color::RESET}"
     puts "#{Color::YELLOW}carrier             : #{request["carrier"]}#{Color::RESET}"
     puts "#{Color::YELLOW}Nomor_Lokal         : #{request["local_number"]}#{Color::RESET}"
     puts "#{Color::YELLOW}Nomor_internasional : #{request["international_number"]}#{Color::RESET}"
   else
     puts "#{Color::RED}#{request["message"]}#{Color::RESET}"
   end
 else
  puts "Bye"
 end
