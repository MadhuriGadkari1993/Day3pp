                                 Data Analysis/Manipulation(awk)


Id EmployeeName JobTitle        BasePay OvertimePay OtherPay TotalPay TotalPayBenefits
1  NATHANIEL    GM              167411  0           400184   567595   567595
2  GARY         CAPTAIN         155966  245131      137811   538909   538909
3  ALBERT       CAPTAIN         212739  106088      16452    335279   335279
4  CHRISTOPHER  MECHANIC        77916   56120       198306   332343   332343
5  PATRICK      DEPUTYCHIEF     134401  9737        182234   326373   326373
6  DAVID        ASSTDEPUTY      118602  8601        189082   316285   316285
7  ALSON        BATTALIONCHIEF  92492   89062       134426   315981   315981
8  DAVID        DEPUTYDIRECTOR  256576  0           51322    307899   307899
10 JOANNE       CHIEF           285262  0           17115    302377   302377
12 PATRICIA     CAPTAIN         99722   87082       110804   297608   297608

1.	Print EmployeeName and TotalPay who has BasePay greater  than 10000 

                 $ cat data.csv | awk '{$4>10000} {print $2} {print $7}'

a. Read data file ‘data.csv’ from command line and extract rows which have BasePay > 10000

                 $ cat data.csv | awk  ' {$4>10000}  {print $0} '

b. Print only EmployeeName  and  TotalPay

                $ cat data.csv | awk  ' {print $2}  {print $7} '

2.	What is aggregate TotalPay of employees whose jobtitle is ‘CAPTAIN’

         $ cat data.csv | grep CAPTAIN | awk  ' {sum+= $7} END {print sum/NR} '

    a.	Read data file ‘data.csv’ from command line and extract row which have ‘CAPTAIN’   in column ‘JobTitle

         $ cat data.csv | grep CAPTAIN | awk  ' {print $3} {print $0}'

    b.	Extract TotalPay and calculate sum and Print the result on terminal

                 $ cat data.csv | awk  ' {sum+= $7} END {print sum} '

3.	Print JobTitle and Overtime Pay is between 7000 and 10000
               
4.	Print average BasePay

                $ cat data.csv | awk  ' { sum+= $4 } END {print sum/NR }'

