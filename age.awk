BEGIN {
    sum = 0
    count = 0
}

{
    sum += $5
    count++
}

END {
 print "sum: " sum 
 print "count: " count 
 print "average age: " sum/count
}