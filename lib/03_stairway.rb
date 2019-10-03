def start_game
    # Start the game
    # Return the number of attemp to reach 10

    # Initialization : 
    player_position = 1 # Variable for the position of player :  1 is the first step
    puts "Bonjour, le jeu commence :-)" 
    puts "Marche : #{player_position}, " 
    nb_draw = 0 # count the number of atttempt : no attempt done for the moment

    # Process

    while player_position != 10 # loop until we are on the final step 10
        player_position = next_position(player_position,next_move) # Calculate the new position
        puts "Marche : #{player_position}, " # Display the new position
        nb_draw += 1 # increase the attempt counter

    end

    puts "Félicitations ! Vous êtes arrivé à la marche #{player_position} :-)" # Victory display
    puts nb_draw # For debug
    return nb_draw
end


def draw
    # return a number within 1 and 6. 

    # Init
    prng = Random.new
    #Results
    return (prng.rand(6)+1)
end

 

def next_move
    # launch a new draw 
    # return 1 (forward) , 0  (stay), -1  (backward)
    drawed = draw
    print "Lancé : ", drawed, ", "
    case drawed
    when 5, 6
       puts "On monte"
       return 1
    when 1
        puts "On descend"
        return -1
    when 2, 3, 4
        puts "On reste"
        return 0
    end
    print draw
end

def next_position(init, move)
    # Init = initial position of the player 
    # move = next move asked
    # Return the new position 

    if init + move == 0
        puts "impossible de reculer plus"
        return 1
    else
        return init + move
    end

end

def average_finish_time(nb)
    # 
    # Return the average of attempt to reach 10 calculated with nb games
    # nb = number of game of averaging

    # initialization of average with the first value 
    average = start_game.to_f 

    # Process
    for i in (2..nb) 
        #Average algorithm : Moyenne pondérée entre les anciennes partie et la nouvelle
        average = ((i-1) * average.to_f + start_game.to_f)/( i ) 
        puts "La moyenne de lancé de dés sur #{nb} parties pour atteindre la marche 10 est de #{average}"
    end
    
end

# Starting method

#start_game
average_finish_time(100)