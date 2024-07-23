import Foundation

struct Seat: Hashable, Decodable {
    let id: Int
    let rowNum: Int
    let colNum: Int
    let name: String // Section 이름
    var isSelected: Bool
    var isAvailable: Bool
}

struct RestSeats: Decodable, Hashable{
    let sectionId : Int
    let name : String
    let restSeat : Int
}

struct SelectableSeat: Decodable, Hashable, Identifiable {
    let seatId: Int // seatId를 그대로 유지
    let rowNum: Int
    let colNum: Int
    let name: String // Section 이름
    let price: Int
    
    var id: Int {
        return seatId
    }
}
