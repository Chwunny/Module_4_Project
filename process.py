log_file = open("um-server-01.txt") # This line opens the 'server txt' file, which makes it so we can access the data in said file


def sales_reports(log_file): # Defines a function called 'sales_reports' which has 1 parameter, 'log_file' (Open file from above)
    for line in log_file: # For each line of data in the open file
        line = line.rstrip() # Removes any trailing whitespace from current line
        day = line[0:3] # Assigns 'day' the value of line at indices 0-3 [starting at 0: until 3], this assigns the value of the first 3 letters(values) of the string
        if day == "Mon": # If the first 3 letters of the line are "Mon":
            print(line)     # Print line


# sales_reports(log_file) # Invoke function



# EXTRA CREDIT #


def over_10_melons (file):
    for line in file:
        line = line.rstrip().split(' ')
        if int(line[2]) > 10:
            print(' '.join(line))




over_10_melons(log_file)