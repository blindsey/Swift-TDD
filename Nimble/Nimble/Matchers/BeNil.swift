import Foundation

func beNil<T>() -> MatcherFunc<T?> {
    return MatcherFunc { actualExpression, failureMessage in
        failureMessage.postfixMessage = "be nil"
        let actualValue = actualExpression.evaluate()
        return !actualValue.getLogicValue()
    }
}

extension NMBObjCMatcher {
    class func beNilMatcher() -> NMBObjCMatcher {
        return NMBObjCMatcher { actualBlock, failureMessage, location in
            let block = ({ actualBlock() as NSObject? })
            let expr = Expression(expression: block, location: location)
            return beNil().matches(expr, failureMessage: failureMessage)
        }
    }
}
