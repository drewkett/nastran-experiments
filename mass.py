import sys
from pyNastran.bdf.bdf import read_bdf

bdf_xref = read_bdf(sys.argv[1], xref=True)
mass, cg, I = bdf_xref.mass_properties()
print("mass = %s\n" % mass)