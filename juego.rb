if Gem.win_platform?
    system "cls"
  else
    system "clear"
  end
  
  respuesta = ""
  respuestaPc = ""
    
  # argumento
  respuesta = ARGV[0]
  numero_aleatorio = rand(1..3)
  if numero_aleatorio == 1
    respuestaPc = "piedra"
  elsif numero_aleatorio == 2
    respuestaPc = "papel"
  else
    respuestaPc = "tijera"
  end
  
  if respuesta != "piedra" && respuesta != "papel" && respuesta != "tijera"
      puts "Argumento invalido: Debe ser piedra, papel o tijera."
  else
      if respuesta == respuestaPc
          puts "computadora jugo #{respuestaPc}"
          puts "Empate"
        elsif respuesta == "piedra" && respuestaPc == "tijeras" || 
              respuesta == "papel" && respuestaPc == "piedra" ||
              respuesta == "tijeras" && respuestaPc == "papel"
          puts "computadora jugo #{respuestaPc}"
          puts "Ganaste"
        else
          puts "computadora jugo #{respuestaPc}"
          puts "Perdiste"
        end
  end