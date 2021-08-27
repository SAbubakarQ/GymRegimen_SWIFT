// Bismillah - AbubakarQ
//-- Structured Gym Regimen --// 

// Write your code below 💪
struct Exercise {
  // structure declared
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int
  // variables declared

  init(name: String, muscleGroups: [String], reps: Int, sets: Int) { // init function for readability
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
    // init readability assigning functions parameters
  } // init end
} // structure end

// Adding Exercise Instnaces

// pushUp Instance
var pushUp = Exercise(name: "Push up", muscleGroups: ["Tricep", "Chest", "Shoulders"], reps: 10, sets: 3)
//print(pushUp)

// creating sit-up and squat //
// sit-up
var sitUp = pushUp
sitUp.muscleGroups = ["Abs", "Obliques"]
sitUp.name = "Sit-Up"
//print(sitUp)

// squat
var squat = pushUp
squat.name = "Squat"
squat.muscleGroups = ["Quads", "Hamstrings", "Glutes"]
//print(squat)

// Regimen Structure
struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) { 
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  } // end of init 

  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and the plan is to: ")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)")
      print("That's a total of \(exercise.totalReps) \(exercise.name)")
    } 
  }

} // end of structure Regimen

// checking Regimen Structure
var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])
//print(mondayRegimen)

// Checking to see if .printExerisePlan() instance/method works
mondayRegimen.printExercisePlan()


