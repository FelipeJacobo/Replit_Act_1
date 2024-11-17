print("¿Cuál es tu nombre?")
if let nombre = readLine() {
    print("Hola, \(nombre)! Bienvenido.")

    var continuar = true

    while continuar {
        // Se pide un número al usuario
        print("\n\(nombre), ingresa un número:")
        if let input = readLine(), let number = Int(input) {
            // Determina si el número es par o impar
            if number % 2 == 0 {
                print("\(number) es un número par.")
            } else {
                print("\(number) es un número impar.")
            }
        } else {
            print("Entrada no válida. Por favor, ingresa un número entero.")
        }

        // Pregunta si quiere continuar
        print("\n¿Quieres ingresar otro número? (si/no)")
        if let respuesta = readLine()?.lowercased() {
            if respuesta == "no" {
                continuar = false
                print("Gracias por participar, \(nombre). ¡Hasta luego!")
            } else if respuesta == "si" {
                // Si el usuario dice "si", sigue pidiendo números
                continue
            } else {
                print("Respuesta no reconocida, terminando el programa. ¡Adiós, \(nombre)!")
                continuar = false
            }
        }
    }
}
