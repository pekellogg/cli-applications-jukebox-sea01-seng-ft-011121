# Add your code here
require 'pry'
# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end
def list(arr)
    arr.each_with_index do |e, i|
        puts "#{i + 1}. #{e}"
    end
end
def play(songs)
    puts "Please enter a song name or number:"
    input = gets.strip
    number = input.to_i - 1
    if input == "exit"
        exit_jukebox
    elsif number < 0 && songs.include?(input)
        index = songs.index(input)
        puts "Playing #{songs[index]}"
    elsif number >= 0 && songs[number] != nil
        puts "Playing #{songs[number]}"
    else
        puts "Invalid input, please try again"
    end
end
def exit_jukebox
    puts "Goodbye!"
end
def run(songs)
    methods = ["help", "list", "play", "exit"]
    puts "Please enter a command:"
    input = gets.strip
while !methods.include?(input)
    puts "Please enter a command:"
    input = gets.strip
end
case input
when "help"
    help
when "play"
    play(songs)
when "list"
    list(songs)
when "exit"
    exit_jukebox
    exit
end
run(songs)
end
