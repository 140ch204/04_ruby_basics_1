def signup
    # Initialisation
    $password=nil
    
    # Process
    puts "Sign up : Mot de passe à définir"
    print ">"
    $password = gets.chomp
    
    # Results
    puts "Votre nouveau mot de passe est #{$password}"
end

def login
    # Initialisation
    password_try = ""

    # Process



    while password_try != $password
        puts "Login : Quel est votre mot de passe ?"
        print ">"
        password_try = gets.chomp
        if password_try != $password
            puts "Mot de passe erroné, merci de réssayer  "
        end

    end

    welcome_screen


    # Results

end

def welcome_screen
    puts "Welcome screen : Bienvenu dans la zone secrete"
    puts "Mon secret est que je suis ceinture noire de Judo "

end

def perform
    signup
    login
end

perform
