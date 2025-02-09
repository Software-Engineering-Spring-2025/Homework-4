BEGIN {
  FS = ","  # Set field separator to comma
  print "Passenger Count per Class"
  print "--------------------------"
}

NR > 1 { # Skip the header row
  pclass = $3  # Assuming Pclass is in the 3rd field. Adjust if needed.
  pclass_count[pclass]++ # Increment count for each Pclass
}

END {
  for (pclass in pclass_count) {
    printf "Class %s: %d passengers\n", pclass, pclass_count[pclass]
  }
}