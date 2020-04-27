import Combine

enum MyError: Error {
    case myError
}

check("Fail") {
    Fail<Int, SampleError>(error: .sampleError)
}

check("Map Error") {
    Fail<Int, SampleError>(error: .sampleError)
        .mapError { _ in MyError.myError }
}
