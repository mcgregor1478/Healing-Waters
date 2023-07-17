fun main() {
    val healingWaters = "Healing Waters"

    println("Welcome to $healingWaters! \n")

    // Variables
    var numVisits: Int = 0
    var waitList: Int = 0
    var numPatients: Int = 0

    // Functions
    fun getNumVisits(): Int {
        println("Enter the number of visits for $healingWaters:")
        numVisits = readLine()!!.toInt()
        return numVisits
    }

    fun setWaitList(): Int {
        println("Enter the number of people on the waitlist for $healingWaters:")
        waitList = readLine()!!.toInt()
        return waitList
    }

    fun setNumPatients(): Int {
        println("Enter the number of patients currently at $healingWaters:")
        numPatients = readLine()!!.toInt()
        return numPatients
    }

    fun checkPatient(): Boolean {
        if (numPatients == 0) {
            println("\nNo patients currently at $healingWaters! \n")
            return false
        }
        return true
    }

    fun checkWaitList(): Boolean {
        if (waitList == 0) {
            println("\nNo waitlist for $healingWaters! \n")
            return false
        }
        return true
    }

    // Main
    var isPatient: Boolean
    var isWaitList: Boolean

    numVisits = getNumVisits()
    waitList = setWaitList()
    numPatients = setNumPatients()

    isPatient = checkPatient()
    isWaitList = checkWaitList()

    if (isPatient) {
        if (isWaitList) {
            println("\nCurrently $numPatients patients at $healingWaters with a waitlist of $waitList people.")
        } else {
            println("\nCurrently $numPatients patients at $healingWaters with no waitlist.")
        }
    } else {
        if (isWaitList) {
            println("\nCurrently no patients at $healingWaters with a waitlist of $waitList people.")
        } else {
            println("\nCurrently no patients at $healingWaters with no waitlist.")
        }
    }

    println("\nVisits for $healingWaters: $numVisits \n")

}