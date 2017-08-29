/*
                     --------------------------------------------------Part 1--------------------------------------------------
We have provided information for the 18 players in the Player Info spreadsheet. Please choose an appropriate data type to store the information for each player. In addition, create an empty collection variable to hold all the players’ data. Once you have decided on what tools to use, manually enter the player data so it can be used in Part 2.
                     --------------------------------------------------Part 1--------------------------------------------------
*/
//information for each player
let player1: [String: Any] = [
    "name": "Joe Smith",
    "height": 42.0,
    "hasExperience": true,
    "guardian": "Jim and Jan Smith"
]

let player2: [String: Any] = [
    "name": "Jill Tanner",
    "height": 36.0,
    "hasExperience": true,
    "guardian": "Clara Tanner"
]

let player3 : [String: Any] = [
    "name": "Bill Bon",
    "height": 43.0,
    "hasExperience": true,
    "guardian": "Sara and Jenny Bon"
]

let player4 : [String: Any] = [
    "name": "Eva Gordon",
    "height": 45.0,
     "hasExperience": false,
    "guardian": "Wendy and Mike Gordon"
]

let player5 : [String: Any] = [
    "name": "Matt Gill",
    "height": 40.0,
    "hasExperience": false,
    "guardian": "Charles and Sylvia Gill"
]

let player6 : [String: Any] = [
    "name": "Kimmy Stein",
    "height": 41.0,
    "hasExperience": false,
    "guardian": "Bill and Hillary Stein"
]

let player7 : [String: Any] = [
    "name": "Sammy Adams",
    "height": 45.0,
    "hasExperience": false,
    "guardian": "Jeff Adams"
]

let player8 : [String: Any] = [
    "name": "Karl Saygan",
    "height": 42.0,
    "hasExperience": true,
    "guardian": "Heather Bledsoe"
]

let player9 : [String: Any] = [
    "name": "Suzanne Greenberg",
    "height": 44.0,
    "hasExperience": true,
    "guardian": "Henrietta Dumas"
]

let player10 : [String: Any] = [
    "name": "Sal Dali",
    "height": 41.0,
    "hasExperience": false,
    "guardian": "Gala Dali"
]

let player11 : [String: Any] = [
    "name": "Joe Kavalier",
    "height": 39.0,
    "hasExperience": false,
    "guardian": "Sam and Elaine Kavalier"
]

let player12 : [String: Any] = [
    "name": "Ben Finkelstein",
    "height": 44.0,
    "hasExperience": false,
    "guardian": "Aaron and Jill Finkelstein"
]

let player13 : [String: Any] = [
    "name": "Diego Soto",
    "height": 41.0,
    "hasExperience": true,
    "guardian": "Robin and Sarika Soto"
]

let player14 : [String: Any] = [
    "name": "Chloe Alaska",
    "height": 47.0,
    "hasExperience": false,
    "guardian": "David and Jamie Alaska"
]

let player15 : [String: Any] = [
    "name": "Arnold Willis",
    "height": 43.0,
    "hasExperience": false,
    "guardian": "Claire Willis"
]

let player16 : [String: Any] = [
    "name": "Phillip Helm",
    "height": 44.0,
    "hasExperience": true,
    "guardian": "Thomas Helm and Eva Jones"
]

let player17 : [String: Any] = [
    "name": "Les Clay",
    "height": 42.0,
    "hasExperience": true,
    "guardian": "Wynonna Brown"
]

let player18 : [String: Any] = [
    "name": "Herschel Krustofski",
    "height": 45.0,
    "hasExperience": true,
    "guardian": "Hyman and Rachel Krustofski"
]



//put all players information in dictionary

var players = [
    player1,
    player2,
    player3,
    player4,
    player5,
    player6,
    player7,
    player8,
    player9,
    player10,
    player11,
    player12,
    player13,
    player14,
    player15,
    player16,
    player17,
    player18]

/*
 --------------------------------------------------Part 2--------------------------------------------------
 Create logic to iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable for use in Part 3. (Please note: your logic should work correctly regardless of the initial ordering of the players and should work, if we theoretically had more or less than 18 players, so NO MAGIC NUMBERS!)
 
 Also, if you would like to attain an “exceeds expectations” rating for this project, add logic to ensure that each team's average height is within 1.5 inches of the others.
 --------------------------------------------------Part 2--------------------------------------------------
 */

//Three group: Dragons. Sharks, Raptors
var dragonsTeam: [[String:Any]] = []
var sharksTeam: [[String:Any]] = []
var raptorsTeam: [[String:Any]] = []

//Sort by experience and append them into dictionary
var hasExperience: [[String:Any]] = []
var noExperience: [[String:Any]] = []

for player in players {
    let isExperenced: Bool = player["hasExperience"] as! Bool
    if isExperenced == true {
        hasExperience.append(player)
    } else {
        noExperience.append(player)
    }
}

//group experience players and no experience in each team with evenly numbers of experience/no experience players
for expPlayers in hasExperience {
    if sharksTeam.count <= dragonsTeam.count && sharksTeam.count <= raptorsTeam.count {
    sharksTeam.append(expPlayers)
    } else if dragonsTeam.count <= sharksTeam.count && dragonsTeam.count <= raptorsTeam.count {
        dragonsTeam.append(expPlayers)
    } else if raptorsTeam.count <= dragonsTeam.count && raptorsTeam.count <= sharksTeam.count{
        raptorsTeam.append(expPlayers)
    } else {
        print("error")
    }
}

for noExpPlayers in noExperience {
    if sharksTeam.count <= dragonsTeam.count && sharksTeam.count <= raptorsTeam.count {
        sharksTeam.append(noExpPlayers)
    } else if dragonsTeam.count <= sharksTeam.count && dragonsTeam.count <= raptorsTeam.count {
        dragonsTeam.append(noExpPlayers)
    } else if raptorsTeam.count <= dragonsTeam.count && raptorsTeam.count <= sharksTeam.count {
        raptorsTeam.append(noExpPlayers)
    } else {
        print("error")
    }
}


/* 
             -------------------------------------------------result for each team--------------------------------------------------------
print(dragonsTeam)
[["name": "Jill Tanner", "height": 36.0, "hasExperience": true, "guardian": "Clara Tanner"], 
 ["name": "Suzanne Greenberg", "height": 44.0, "hasExperience": true, "guardian": "Henrietta Dumas"], 
 ["name": "Les Clay", "height": 42.0, "hasExperience": true, "guardian": "Wynonna Brown"], 
 ["name": "Matt Gill", "height": 40.0, "hasExperience": false, "guardian": "Charles and Sylvia Gill"], 
 ["name": "Sal Dali", "height": 41.0, "hasExperience": false, "guardian": "Gala Dali"], 
 ["name": "Chloe Alaska", "height": 47.0, "hasExperience": false, "guardian": "David and Jamie Alaska"]]

dragonsTeam.count //6
 
print(sharksTeam)
 [["name": "Joe Smith", "height": 42.0, "hasExperience": true, "guardian": "Jim and Jan Smith"], 
  ["name": "Karl Saygan", "height": 42.0, "hasExperience": true, "guardian": "Heather Bledsoe"], 
  ["name": "Phillip Helm", "height": 44.0, "hasExperience": true, "guardian": "Thomas Helm and Eva Jones"], 
  ["name": "Eva Gordon", "height": 45.0, "hasExperience": false, "guardian": "Wendy and Mike Gordon"], 
  ["name": "Sammy Adams", "height": 45.0, "hasExperience": false, "guardian": "Jeff Adams"], 
  ["name": "Ben Finkelstein", "height": 44.0, "hasExperience": false, "guardian": "Aaron and Jill Finkelstein"]]

sharksTeam.count //6
 
print(raptorsTeam)
 [["name": "Bill Bon", "height": 43.0, "hasExperience": true, "guardian": "Sara and Jenny Bon"], 
  ["name": "Diego Soto", "height": 41.0, "hasExperience": true, "guardian": "Robin and Sarika Soto"], 
  ["name": "Herschel Krustofski", "height": 45.0, "hasExperience": true, "guardian": "Hyman and Rachel Krustofski"], 
  ["name": "Kimmy Stein", "height": 41.0, "hasExperience": false, "guardian": "Bill and Hillary Stein"], 
  ["name": "Joe Kavalier", "height": 39.0, "hasExperience": false, "guardian": "Sam and Elaine Kavalier"], 
  ["name": "Arnold Willis", "height": 43.0, "hasExperience": false, "guardian": "Claire Willis"]]
 
raptorsTeam.count //6
             -------------------------------------------------result for each team--------------------------------------------------------
*/

/*
                     --------------------------------------------------Part 3--------------------------------------------------
 Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardian names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows:
 
 Dragons - March 17, 1pm
 Sharks - March 17, 3pm
 Raptors - March 18, 1pm
 When your complete code is run in a playground the letters should be stored in a collection variable named 'letters'. When the code is run, the letters should be visible in the console.
 
 You can reference the resources provided in the Project Resources area for additional information on how to implement and use the Swift Collections.
 
 As always, meaningful and concise code comments are expected. Your code should be written and refined in an Xcode playground. Be sure to upload it to GitHub, as per the instructions provided in the Soccer Coordinator Video Instruction (see the link below).
 
 One note regarding the usage of GitHub. Since it is a version control tool, and it is best to do an incremental check in when you completed a feature, fix, or enhancement. Also when adding comment to each check-in, a good practice is to add comments for the specific things that's changed, e.g. "added logic for height based assignment", "fixed duplicate printing of dragon team". This way you can go back and know exactly where certain enhancements/bugs might be introduced.

                     --------------------------------------------------Part 3--------------------------------------------------
 */


//

























