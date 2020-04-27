import Combine

check("Empty") { () in
    Empty<Int, SampleError>()
}

check("Just") {
    Just(1)
}

check("Fail") {
    Fail<Int, SampleError>(error: .sampleError)
}
