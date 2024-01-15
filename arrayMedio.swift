import Foundation

func byJJ() {
    let startTime = Date()

    var v = [7, 28, 2, 53, 1, 5, 6, 344, 54, 87]

    let size = v.count

    var aux: Int
    var posMin: Int
    var posMax: Int
    var posFinal: Int = size - 1

    print(v)
 
  

    for i in 0..<(size / 2) {
        posMin = i // 2 4 5
        posMax = i // 0 1 3

        for j in i...posFinal {
          
            if v[j] > v[posMax] {
                 posMax = j
            }
            if v[j] < v[posMin] {
                posMin = j
            }
        }
         print("prueba 1", v)

        print("min", v[posMin])
      
        
        aux = v[posMin]
        v[posMin] = v[i]
        v[i] = aux

      
        print("aux", aux)
        print("v[posMin]", v[posMin])
        print("v[i]", v[i])
        
       
        print("If", posMax ,"==", i)
        if posMax == i {
          print(posMax, "=", posMin)
            posMax = posMin
        }
      
        print("prueba 2", v)
      
        aux = v[posFinal]
        v[posFinal] = v[posMax]
        v[posMax] = aux
        posFinal -= 1

         
        print("prueba 3", v)
    


         
    }

    print("\n")
    for element in v {
        print("\(element) ", terminator: "")
    }

    let endTime = Date()
    let executionTime = endTime.timeIntervalSince(startTime)

    print("\n\nExecution Time byJJ: \(executionTime) seconds")
}

// Ejemplo de uso
byJJ()