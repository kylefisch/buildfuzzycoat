#!/usr/bin/env python

#start with activating conda envs containing pychimera info from chimera_installation.sh
#needs to start with just pychimera, otherwise chimera will not be imported
pychimera

#import chimera dependencies
import chimera
from chimera import openModels, Molecule, UserError, numpyArrayFromAtoms, Xform
import pandas as pd
import biopandas as bp
from biopandas.pdb import PandasPdb as ppdb
import os
import pawk

#read the pdb file that you want to adjust 
#assumes it's within the current directory
ppdb.read_pdb('$/5o3l.pdb')

#define the atoms 
atom=ppdb.df['ATOM']
x=ppdb.df[$7]
y=ppdb.df[$8]
z=ppdb.df[$9]

#for loop, checking the coordinates in the pdb file to determine significant overlap
for i in atom:
