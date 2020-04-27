import Combine

check("Sequence") {
    [1, 2, 3].publisher
        .map { (value) -> Int in
            value * 2
    }
}

check("Reduce") {
    [1, 2, 3, 4, 5].publisher
        .reduce(0, +)
}

check("Scan") {
    [1, 2, 3, 4, 5].publisher
        .scan(0, +)
}

check("Compact Map") {
    ["1", "2", "3", "cat", "5"].publisher
        .compactMap({
            Int($0)
        })
}

check("Compact Map By Filter") {
    ["1", "2", "3", "cat", "5"].publisher
        .map({ Int($0) })
        .filter({$0 != nil})
        .map({$0})
}

check("Flat Map 1") {
    [[1, 2, 3], ["a", "b", "c"]].publisher
        .flatMap {
            return $0.publisher
    }
}

check("Flat Map 2") {
    ["A", "B", "C"].publisher
        .flatMap { letter in
            [1, 2, 3].publisher
                .map {
                    "\(letter)\($0)"
            }
    }
}

check("Remove Duplicates") {
    ["S", "Sw", "Sw", "Sw", "Swi",
     "Swif", "Swift", "Swift", "Swif"].publisher
        .removeDuplicates()
}
