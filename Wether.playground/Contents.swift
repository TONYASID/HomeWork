import UIKit

// Wind : power, direction Enum, timeless !
// Rain, snow : millimetres
// Humidity: %
// Pressure: mm.mercury
// Temperature: degrees (Celcius, Fahrenheit)
// Cloudines: Sunny, Cloudi, NoSun, Fog !
// Location: latitude, longitude !
// Day of week: Enum !

enum Degrees {
    case celcius (degrees: Int)
    case fahrenheit (degrees: Int)
}
enum Precipitation {
    case rain (millimeters: Int)
    case snow (millimeters: Int)
}
enum DayOfTheWeek: String {
    case monday = "monday"
    case tuesday = "tuesday"
    case wednesday = "wednesday"
    case thursday = "thursday"
    case friday = "friday"
    case saturday = "saturday"
    case sunday = "sunday"
}
enum Direction: String {
    case south = "south"
    case north = "north"
    case west = "west"
    case east = "east"
    case southEast = "southEast"
    case southWest = "southWest"
    case northEast = "northEast"
    case northWest = "northWest"
}
enum Cloudines: String {
    case sunny = "sunny"
    case cloudi = "cloudi"
    case noSun = "noSun"
    case fog = "fog"
}

extension Wind: CustomStringConvertible {
    var description: String {
        return "(direction is \(direction), the power is \(power), and is it gusti? : \(isGusty))"
    }
}
struct Wind {
    var power: Int
    var isGusty: Bool
    var direction: Direction
}
let wind = Wind(power: 5, isGusty: true, direction: .northEast)

struct Location {
    var latitude: Double
    var longitude: Double
}
let location = Location(latitude: 55.154, longitude: 61.4291)

struct MainIndicators {
    var precipitation: Precipitation
    var humidity: Int
    var pressure: Int
    var temperature: Degrees
    var cloud: Cloudines
    var dayOfTheWeek: DayOfTheWeek
    func discription() -> String {
        "Today is \(dayOfTheWeek) and the wether is: \(precipitation), the wind is: \(wind), \(location), humidity \(humidity) persent, pressure \(pressure) mm of mercury, temperature \(temperature), cloud situation: \(cloud)"
    }
}
let test = MainIndicators(precipitation: .rain(millimeters: 7), humidity: 70, pressure: 760, temperature: .celcius(degrees: 27), cloud: .cloudi, dayOfTheWeek: .saturday)
//let test1 = MainIndicators
print(test.discription())

