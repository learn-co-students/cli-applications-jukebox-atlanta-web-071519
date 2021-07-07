# Add your code here

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_chosen = gets.chomp
  i=0
  songs.each_with_index do |track, index|
    if song_chosen.to_i == (index+1) || song_chosen.to_s == track
      puts "Playing #{track}"
    else
      i+=1
    end
  end
  if i==9
    puts "Invalid input, please try again"
  end
end

def list (songs)
  songs.each_with_index do |track, index|
    new_track ="#{index + 1}. #{track} "
    puts new_track
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  i=0
  while i<10
    puts "Please enter a command:"
    command = gets.chomp
    if command.to_s == "help"
      help
    elsif command.to_s == "list"
      list(songs)
    elsif command.to_s == "play"
      play (songs)
    elsif command.to_s == "exit"
      exit_jukebox
    end
  i+=1
  end
end
