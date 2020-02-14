
#Justin Zhang
#!/bin/bash
# Authors : Justin Zhang
# Date: 02/07/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Please input a filename..?"
read FileName #store the filename
echo "Please input a regular expresson.."
read Expr
echo "Try to search $Expr in $FileName"
grep $Expr $FileName

echo "Try to count number of phone numbers in regex_practice.txt"
grep -P -c '\d{3}-\d{3}-\d{4}' regex_practice.txt #count of the number
						#of phone numbers
echo "Try to count the number of emails in regex"
egrep -c '@.+\..+$' regex_practice.txt  #count the number of emails

echo "Try to list all the phone numbers in 303"
grep -P -c '^303-\d{3}-\d{4}' regex_practice.txt #A list of all the phone numbers in the 303  area code. (Hint: grep -o will print only the matching (non-empty) parts of a line)

echo "Try to list and store all emails with geocities.com"
grep '@geocities.com$' regex_practice.txt > email_results.txt

