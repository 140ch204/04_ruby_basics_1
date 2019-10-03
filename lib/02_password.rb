def signup
    # Method to register a password
    # Initialisation
    $password = nil # $password is a global string
    
    # Process
    puts "Sign up : Mot de passe à définir"
    print ">"
    $password = gets.chomp  # $password is a global string
     
    # Results
    puts "Votre nouveau mot de passe est #{$password}"
end

def login
    # Method to login and check password

    # Initialisation
    password_try = ""

    # Process

    while password_try != $password # Checking password
        puts "Login : Quel est votre mot de passe ?"
        print ">"
        password_try = gets.chomp # Asking password attempt
        if password_try != $password # Checking attempt with password
            puts "Mot de passe erroné, merci de réssayer  "
        end

    end

    welcome_screen # entering in secret area


    # Results

end

def welcome_screen
    # Welcoming user in his area and give my secret
    puts "Welcome screen : Bienvenu dans la zone secrete"
    puts "Mon secret est que je suis ceinture noire de Judo "

end

def perform
    # Starting signup and login processes
    signup
    login
end

# Starting method
perform
