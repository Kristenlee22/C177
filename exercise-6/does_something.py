import sys

file_name = sys.argv[1]

families = []
with open(file_name, encoding = "ISO-8859-1") as csv_file:
    reader = csv.reader(csv_file)
    for i in range(1):
        reader.__next__()  # skip the first 1 lines of ouf the nature csv file
    for row in reader:
        families.append(row[7])
        

counted = Counter(families)
for key, value in counted.items():
    print(str(value) + " total species in Family " + key)


