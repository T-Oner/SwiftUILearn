import Combine

check("FlatMap Operator") {
    [[1, 2, 3], [4, 5, 6]].publisher
        .flatMap { $0.publisher }
}

let p1 = [[1, 2, 3], [4, 5, 6]].publisher
    .flatMap { $0.publisher }

print(type(of: p1))

let p2 = p1.map { $0 * 2 }

print(type(of: p2))

let p3 = p2.eraseToAnyPublisher()

print(type(of: p3))

    
check("Contains") {
    [1, 2, 3, 4, 5].publisher
    .print("[Original]")
    .contains(6)
}
