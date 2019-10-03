
def say_hello
    # Display " Hello and first name "
    puts "Hello #{ask_first_name} ! "
end

def ask_first_name
    # Asking user his first name
    # Return a string with first name
    puts "Quel est ton prénom ?"
    print ">"
    first_name = gets.chomp             # Asking first name
    return first_name
end

# Starting method
say_hello()
