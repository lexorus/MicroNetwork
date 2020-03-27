import XCTest
@testable import MicroNetwork

final class IntExtensionsTests: XCTestCase {
    // MARK: - isSuccessStatusCode
    func test_whenIntIsLowerThan200_thenItIsNotSuccessfulStatusCode() {
        // GIVEN
        let continueStatusCode = 100

        // WHEN
        let result = continueStatusCode.isSuccessStatusCode

        // THEN
        XCTAssertFalse(result)
    }

    func test_whenIntIsGreaterThan299_thenItIsNotSuccessfulStatusCode() {
        // GIVEN
        let multipleChoicesStatusCode = 300

        // WHEN
        let result = multipleChoicesStatusCode.isSuccessStatusCode

        // THEN
        XCTAssertFalse(result)
    }

    func test_whenIntIsBetween200and299_thenItIsSuccessfulStatusCode() {
        // GIVEN
        let okStatusCode = 200

        // WHEN
        let result = okStatusCode.isSuccessStatusCode

        // THEN
        XCTAssertTrue(result)
    }
}
