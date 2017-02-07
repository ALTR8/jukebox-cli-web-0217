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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  if (1..9).to_a.include?(request.to_i)
    puts "Playing #{songs[request.to_i - 1]}"
  elsif songs.include?(request)
    puts "Playing #{request}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def get_user_input
  puts "Please enter a command:"
  input = gets.chomp
end

def run(songs)
  until get_user_input == "exit"
    help
    get_user_input
    if get_user_input == "list"
      list(songs)
      get_user_input
    elsif get_user_input == "play"
      play(songs)
      get_user_input
    elsif get_user_input == "help"
      help
      get_user_input
    end
  end
  exit_jukebox
end
