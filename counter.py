file_path = '/home/results'

f = open(file_path, 'r')
# Number of ticks
num = 0
# Sum of ticks
sum = 0
# Flag for pass
flag = 0
# Counter
i = 0
# Number of all measures
all = 100
for char in f.read():
    if char.isdigit():
        num = num * 10 + int(char)
    elif char == '\n':
        # The first 2 measurements should be skipped
        if flag > 2:
            sum += num
        flag += 1
        num = 0
    # The results are separated by symbol '-' in file
    elif char == '-':
        print(str(i+1) + ": " + str(sum / (all - 2)))
        i += 1
        flag = 0
        sum = 0
print(str(i+1) + ": " + str(sum / (all - 2)))
f.close()
