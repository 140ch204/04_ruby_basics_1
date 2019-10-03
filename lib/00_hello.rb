
def say_hello
    # mon code ici
    puts "Hello #{ask_first_name} ! "
end

def ask_first_name
    # mon code ici
    puts "Quel est ton prénom ?"
    print ">"
    first_name = gets.chomp
    return first_name
end




say_hello()
