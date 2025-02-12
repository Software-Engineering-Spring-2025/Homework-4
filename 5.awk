# Experiment with task 3
BEGIN {
  FS = ","
  OFS = ", "
}
NR <= 5 {
  print $0 
}
