BEGIN {
  FS = ","  # Set field separator to comma
  print "Survival Rates by Class"
  print "------------------------"
}

NR > 1 { # Skip the header row
  pclass = $3     # Assuming Pclass is in the 3rd field. Adjust if needed.
  survived = $2   # Assuming Survived is in the 2nd field. Adjust if needed.

  if (survived == 1) {
    pclass_survived[pclass]++
  }
  pclass_total[pclass]++ # Keep track of total for each class
}

END {
  for (pclass in pclass_total) {
    survival_rate = (pclass_survived[pclass] / pclass_total[pclass]) * 100
    printf "Class %s: %.2f%% survival rate (%d survived of %d)\n", pclass, survival_rate, pclass_survived[pclass], pclass_total[pclass]
  }
}