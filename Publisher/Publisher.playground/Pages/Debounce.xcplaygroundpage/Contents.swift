import Combine
import Foundation

let searchText1 = PassthroughSubject<String, Never>()

let session = check("Debounce") {
    searchText1.debounce(for: .seconds(1), scheduler: RunLoop.main)
}

delay(0) {
    searchText1.send("S")
}
delay(0.1) {
    searchText1.send("Sw")
}
delay(0.2) {
    searchText1.send("Swi")
}
delay(1.3) {
    searchText1.send("Swif")
}
delay(1.4) {
    searchText1.send("Swift")
}

struct Response: Decodable {
    struct Foo: Decodable {
        let foo: String
    }
    let args: Foo?
}

let searchText2 = PassthroughSubject<String, Error>()

let s2 = check("Debounce") {
    searchText2.flatMap { text in
        URLSession.shared.dataTaskPublisher(for: URL(string: "https://httpbin.org/get?foo=\(text)")!)
            .debounce(for: .seconds(1), scheduler: RunLoop.main)
            .map { data, _ in data }
            .decode(type: Response.self, decoder: JSONDecoder())
            .compactMap { $0.args?.foo }
    }
}

delay(0.1) { searchText2.send("I") }
delay(0.2) { searchText2.send("Love") }
delay(0.5) { searchText2.send("SwiftUI") }
delay(1.6) { searchText2.send("And") }
delay(2.0) { searchText2.send("Combine") }
