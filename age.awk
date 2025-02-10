BEGIN {
  FS = ","  # Set field separator to comma
  print "Average Age"
  print "------------------------"
  count = 0
  sum = 0
}

NR > 1 { # Skip the header row
  age = $7   
  sum += age
  count++
}

END {
    print "Sum: " sum 
    print "Count: " count 
    print "Average age: " sum/count
}