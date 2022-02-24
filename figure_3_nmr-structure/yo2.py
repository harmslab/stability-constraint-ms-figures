
import sys

with open(sys.argv[1]) as f:
    for line in f:
        if line[:4] in ["ATOM","HETA"]:
            print(f"{line[:21]}A{line[22:]}",end="")
        else:
            print(line,end='')

