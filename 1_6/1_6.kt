fun main() {
    println("Enter your string:")
    val str = readLine()
    if (str != null) { // конструкция чтобы ввести строку
        val result = checkChar(str)
        println(result)
    } else {
        println("No input provided.")
    }
}

fun checkChar(str: String): String {
    val glasLet = "aeiouyAEIOUY"
    val soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var glasCount = 0
    var soglasCount = 0

    for (ch in str) {
        if (glasLet.contains(ch)) {
            glasCount++
        } else if (soglasLet.contains(ch)) {
            soglasCount++
        }
    }

    return when {
        glasCount > soglasCount -> "yes" // не работает русский вывод 
        glasCount < soglasCount -> "no"
        else -> "same"
    }
}
