def half_pyramid
    # Ask height and display an half pyramid of # 
    puts "Half pyramids : Combien d'étages veux-tu ?"
    print ">"
    number = gets.chomp.to_i
    if (number > 0 ) then 

        for n in (1..number)
            puts "#" * n
        end
    end
end

def full_pyramid
    # Ask height and display an full pyramid of # 
    puts "Full pyramids : Combien d'étages veux-tu ?"
    print ">"
    number = gets.chomp.to_i
    if (number > 0 ) then 
        
        for n in (1..number)
            puts (" " * (number - n)) + ("#" * (2 * n - 1))
        end
    end
end


def wtf_pyramid
    # Ask height and display a wtf pyramid of # 

    # Asking the number of floor wished
    puts "wtf_pyramids : Combien d'étages veux-tu ? Merci de saisir un Nombre impair "
    print ">"
    number = gets.chomp.to_i

    # Display wtf pyramid 
    if (number%2 != 0 ) then # test if odd or not
    number = (number + 1) / 2 # Recalculating number in order to correspond with the good number of floor

        # Display Top pyramid
        for n in (1..number)
            puts (" " * (number - n)) + ("#" * (2 * n - 1)) # build and display floor n
        end

        # Display Bottom pyramid
        for i in (1..number-1)
            puts (" " * (i)) + ("#" * (2 * (number-i) - 1)) # build and display floor i
        end
    else
        puts "Vous n'avez pas saisi un nombre impair"
    end
end

# # Starting the 3 methods 

half_pyramid

full_pyramid

wtf_pyramid