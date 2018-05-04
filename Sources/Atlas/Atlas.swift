
//default:
struct Atlas {
    var text = "Hello, World!"
}

//TODO:
public struct Country {
    public let code: String
    
    public init(code: String) {
        self.code = code.uppercased()
    }
    //modify:
//    public var emojiFlag: String {
//        return "\u{1f1f5}\u{1f1f7}"
//    }
    //
    func regionalIndicatorSymbol(unicodeScalar: UnicodeScalar) -> UnicodeScalar? {
        let uppercaseA = UnicodeScalar("A")!
        let regionalIndicatorSymbolA = UnicodeScalar("\u{1f1e6}")!
        let distance = unicodeScalar.value - uppercaseA.value
        return UnicodeScalar(regionalIndicatorSymbolA.value + distance)
    }
    //
    public var emojiFlag: String {
        return code.unicodeScalars.map {
            String(regionalIndicatorSymbol(unicodeScalar: $0)!) } .joined()
    }
}
