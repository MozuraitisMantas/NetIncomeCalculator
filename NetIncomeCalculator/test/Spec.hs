import Test.HUnit

import Deductions

main :: IO ()
main = do
    runTestTT allTests
    return()


allTests :: Test
allTests = TestList [
    TestCase (assertEqual "Test 1 - Over the threshold for student repayment" 37032.32 (studentLoanRepayment 38000)),
    TestCase (assertEqual "Test 2 - Under the threshold for student repayment" 18634.20 (studentLoanRepayment 18634.20)),
    TestCase (assertEqual "Test 3 - Same as threshold for student repayment" 27248 (studentLoanRepayment 27248))
    ] 