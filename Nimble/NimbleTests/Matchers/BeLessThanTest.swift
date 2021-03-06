import XCTest
import Nimble

class BeLessThanTest: XCTestCase {

    func testLessThan() {
        expect(2).to(beLessThan(10))
        expect(2).toNot(beLessThan(1))
        expect(NSNumber.numberWithInteger(2)).to(beLessThan(10))
        expect(NSNumber.numberWithInteger(2)).toNot(beLessThan(1))

        expect(2).to(beLessThan(NSNumber.numberWithInteger(10)))
        expect(2).toNot(beLessThan(NSNumber.numberWithInteger(1)))

        failsWithErrorMessage("expected <2> to be less than <0>") {
            expect(2).to(beLessThan(0))
            return
        }
        failsWithErrorMessage("expected <0> to not be less than <1>") {
            expect(0).toNot(beLessThan(1))
            return
        }
    }

    func testLessThanOperator() {
        expect(0) < 1
        expect(NSNumber.numberWithInt(0)) < 1

        failsWithErrorMessage("expected <2> to be less than <1>") {
            expect(2) < 1
            return
        }
    }
}
