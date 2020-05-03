import Combine
import Foundation

struct Response: Decodable {
    struct Args: Decodable {
        let foo: String
    }
    let args: Args?
}

let input = PassthroughSubject<String, Error>()

let session = check("URL Session") {
    URLSession.shared
        .dataTaskPublisher(
            for: URL(string: "https://httpbin.org/get?foo=bar")!)
        .map { data, _ in data }
        .decode(type: Response.self, decoder: JSONDecoder())
        .compactMap { $0.args?.foo }
}
