fun main() { 
    println("Enter numbers:") 
    val input = readLine() 
    val numbers = input?.split(" ") 
    var count = 0
    
    for (number in numbers.orEmpty()) { 
        if (number.isNotEmpty() && number.length % 2 != 0 && number.length > 2) { 
            count++ 
        } 
    } 
 
    println(count) 
}