fun checkDate(num: Int): Boolean {
    val daysInMonth = intArrayOf(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
    var day = 0
    var month = 0
    if (num in 11..99) {
        return true
    }
    if (num in 101..999) {
        day = num / 10
        month = num % 10
        if (daysInMonth[month - 1] >= day) {
            return true
        }
        day = num / 100
        month = num % 100
        if (month in 1..12 && daysInMonth[month - 1] >= day) {
            return true
        }
    }
    if (num in 1000..9999) {
        day = num / 100
        month = num % 100
        if (month in 1..12 && daysInMonth[month - 1] >= day) {
            return true
        }
    }
    return false
}

fun main() {
    val count = readLine()?.toInt() ?: return
    val numbers = mutableListOf<Int>()
    repeat(count) {
        readLine()?.toInt()?.let { numbers.add(it) }
    }
    
    for (num in numbers) {
        if (checkDate(num)) {
            println("YES ")
        } else {
            println("NO ")
        }
    }
}