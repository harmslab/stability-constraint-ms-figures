
import sys

chain = None
out = []
cas = []
with open(sys.argv[1]) as f:
    for line in f:
        if line[0:4] == "ATOM":

            if chain is None:
                chain = "A"
                last_seen = -1
                out.append([])

            if line[17:20] == "CA2":
                cas.append(line)
                continue

    
            resid = int(line[20:26])
            if resid < last_seen:
                chain = "B"
                out.append([])

            last_seen = resid
            
            out[-1].append(line) 

out[0].extend(cas[:2])
out[1].extend(cas[2:])

f = open(f"{sys.argv[1]}_A.pdb","w")
f.write("".join(out[0]))
f.close()

f = open(f"{sys.argv[1]}_B.pdb","w")
f.write("".join(out[1]))
f.close()

