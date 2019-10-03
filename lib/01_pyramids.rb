def half_pyramid
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
    puts "wtf_pyramids : Combien d'étages veux-tu ? Merci de saisir un Nombre impair "
    print ">"
    number = gets.chomp.to_i

    if (number%2 !=0 ) then 
    number = (number + 1) / 2

        for n in (1..number)
            puts (" " * (number - n)) + ("#" * (2 * n - 1))
        end

        for i in (1..number-1)
            puts (" " * (i)) + ("#" * (2 * (number-i) - 1))
        end
    else
        puts "Vous n'avez pas saisi un nombre impair"
    end
end

half_pyramid

full_pyramid

wtf_pyramid