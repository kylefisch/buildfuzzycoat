#!/usr/bin/env python


#start with activating conda envs containing pychimera stuff
#needs to start with just pychimera, otherwise chimera will not be imported
#would suggest typing "pychimera" into the command line, then running the script with python that way
#that way you can perform this from any folder :3
pychimera
import chimera 
from chimera import openModels, Molecule, UserError, numpyArrayFromAtoms

