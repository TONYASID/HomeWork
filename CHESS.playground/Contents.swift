import UIKit


//func makeChessboard(side: Int) -> [String: String] {
//    var chessBoard = ["":""]
//    var chessBoardIntHorisontal: [String] = []
//    var chessBoardIntVertical: [String] = []
//    var count = 1
//    var stepLine = ""
//    for index in 1 ... side {
//            chessBoardIntHorisontal += ["\(index).\(index)"]
//        chessBoardIntHorisontal += ["\(index).\(count)"]
//count += 1
//    }
//    print(chessBoardIntHorisontal)
//    print(chessBoardIntVertical )
//    return ["1.1" : "White"]
//}
//makeChessboard(side: 4)
func makeChessboard(number: Int) -> [String:String] {
    var chessboardDict = [String:String]()
    for i in 1...number {
        for j in 1...number {
            chessboardDict["\(i).\(j)"] = (i + j) % 2 == 0 ? "white" : "black"
        }
    }
    return chessboardDict
}

print(makeChessboard(number: 2))

var pictures = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var count = 0
for _ in pictures {
    count += 1
    print("\(count)")
}

let dict: Dictionary<Character, Character> = ["(": ")", "{": "}", "[": "]"]
func validString(_ string: String) {
    
}
