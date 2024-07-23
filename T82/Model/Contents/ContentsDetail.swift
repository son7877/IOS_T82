import Foundation

struct ContentsDetail: Hashable, Decodable {
    var title: String
    var description: String
    var rating: Double
    var runningTime: String
    var ageRestriction: String
    var placeName: String
    var totalSeat: Int
}
