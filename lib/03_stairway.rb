def start_game
    # Init
    player_position = 1
    puts "Bonjour, le jeu commence :-)"
    puts "Marche : #{player_position}, "
    nb_draw = 0

    # Process
    while player_position !=10
        player_position = next_position(player_position,next_move)
        puts "Marche : #{player_position}, "
        nb_draw += 1

    end

    puts "Félicitations ! Vous etes arrivé à la marche #{player_position} :-)"
    puts nb_draw
    return nb_draw
end


def draw
    # return a number within 1 and 6
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

def average_finish_time
    #init
    average = start_game.to_f

    #Process
    for i in (2..10) 
        average = ((i-1) * average.to_f + start_game.to_f)/i
        puts "La moyenne de lancé de dés pour atteindre la marche 10 est de #{average}"
    end
    
end

average_finish_time