import XCTest
import fugle_realtime_swift

final class IntradayRouterTests: XCTestCase {
    private let parameters = ["key" : "value"]

    func testMeta() {
        let sut = IntradayRouter.meta(parameters: parameters)

        XCTAssertEqual(sut.url, URL(string: "https://api.fugle.tw/realtime/v0.3/intraday/meta?key=value"))
    }

    func testQuote() {
        let sut = IntradayRouter.quote(parameters: parameters)

        XCTAssertEqual(sut.url, URL(string: "https://api.fugle.tw/realtime/v0.3/intraday/quote?key=value"))
    }
}
