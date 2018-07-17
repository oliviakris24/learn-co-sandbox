require 'colorize'

class Snapchat
 
 attr_accessor :user, :pass, :message, :who,
 
 def initialize(user, pass, message, who)
   @user = user
   @pass = pass
   @message = message
   @who = who
 end

 def create_user
   puts "Welcome to Snapchat! What is your username?".yellow 
     new_user = gets.strip
     @user = new_user
 end
    
 def create_password
   puts "What is your password?".light_blue
     new_password = gets.strip.gsub(/[abcdefghijklmonpqrstuvwxyz1234567890]/,'*')
     @pass = new_password.gsub(/[abcdefghijklmonpqrstuvwxyz1234567890]/,'*')
 end
 
 def create_message
   puts "Would you like to send a message?".blue
   answer = gets.strip.downcase
     if answer == "yes"
       puts "What is your message?".magenta
       new_mess = gets.strip
       @message = new_mess
     else
       puts "That sucks! >:((((((".red 
     end 
 end

 def send_who
   puts "Who would you like to snap?".light_yellow
     new_person = gets.strip
     @who = new_person
 end

 def display_info
   puts "Would you like to see all of your information?".light_green
   reply = gets.strip.downcase
   if reply == "yes"
     puts "Hello #{user}!".cyan
     puts "Your password is #{pass}.".cyan
     puts "Your message, '#{message}', is sent to #{who}.".cyan
   else
     puts "Your loss :(".blue 
   end
 end
end

person=Snapchat.new("gyug", "dhjs", "jks", "jskas")

person.create_user

person.create_password

person.create_message

person.send_who

person.display_info
      ____     ____________
     |    |   /            \
    ---------                ----------
  /             ___________             \
 |             /           \             |
 |            |             |            |
 |            |             |            |
 |            |             |            | 
 |            |             |            |
 |             \___________/             |
  \                                     /
    -----------------------------------