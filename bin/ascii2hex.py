 
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


while True:
    char = ifile.read(1)
    if not char:
        break
    ofile.write("%s "%format(ord(char),'02x'))
ofile.write("00");

ifile.close()
ofile.close()
