require 'pry'

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

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    if (1..9).include?(input.to_i)
        puts "Playing #{songs[input.to_i - 1]}"
    elsif songs.include?(input)
        puts "Playing #{input}"
    else
        puts "Invalid input, please try again"
    end
end

def list(songs)
    songs.each_with_index do |song, index|
        puts "#{index+1}. #{song}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    loop do
        puts "Please enter a command:"
        input = gets.chomp
        case input
        when "help"
            help
        when "list"
            list
        when "play"
            play
        when "exit"
            exit
        end
        if input == "exit"
            break
        end
    end    
end
