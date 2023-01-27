module Deductions where

thresholdStudentLoan :: Float
thresholdStudentLoan = 27248.00


studentLoanRepayment :: Float->Float
studentLoanRepayment income =
    if income > thresholdStudentLoan then income - (income - thresholdStudentLoan)*0.09
    else income