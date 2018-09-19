import sys, getopt

inputfile = ''
outputfile = ''
try:
    opts, args = getopt.getopt(sys.argv[1:],"hi:o:",[])
except getopt.GetoptError:
    print('compiler.py -i <inputfile> -o <outputfile>')
    sys.exit(2)
for opt, arg in opts:
    if opt == '-h':
        print('compiler.py -i <inputfile> -o <outputfile>')
        sys.exit()
    elif opt in ("-i"):
        inputfile = arg
    elif opt in ("-o"):
        outputfile = arg     
print('Input file is "%s"'%(inputfile))
print('Output file is "%s"'%(outputfile))

ofile = open(outputfile, 'w')
ifile = open(inputfile, 'r')


opcode = {
        ">":"000",
        "<":"001",
        "+":"010",
        "-":"011",
        ".":"100",
        ",":"101",
        "[":"110",
        "]":"111"
    }


while True:
    char=ifile.read(1)
    if not char:
        break
    o = opcode.get(char,"")
    if char != "":
        ofile.write(o+" ")

ifile.close()
ofile.close()
