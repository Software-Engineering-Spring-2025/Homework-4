# Find all lines containing "banana":
grep banana sample.txt 
printf "######################################\n"

# Find lines that do not contain "banana":
grep -v banana sample.txt
printf "######################################\n"

# Use uniq to find unique lines (output should be the above file, with only one line each for apple, banaona, cherry, date)
sort sample.txt | uniq 
printf "######################################\n"

# run the command man uniq. Use what you found to extend the uniq comment to count the occurange of each work
#man uniq sample.txt

# Step 1. Use what you found to extend the uniq comment to count the occurange of each work
sort sample.txt | uniq -c  
printf "######################################\n"

# Combine grep and uniq to count occurrences of lines containing "banana":
grep banana sample.txt | uniq -c
