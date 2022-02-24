set dot_solvent, 1
set dot_density, 4

load 1irj.cif
create whole, 1irj and (chain A,B) and (resid 6-86 or resn CA) and not elem H
get_area (elem C) and whole
delete whole

create whole, 1irj and (chain C,D) and (resid 6-86 or resn CA) and not elem H
get_area (elem C) and whole
delete whole

create whole, 1irj and (chain E,F) and (resid 6-86 or resn CA) and not elem H
delete whole
get_area (elem C) and whole

create whole, 1irj and (chain G,H) and (resid 6-86 or resn CA) and not elem H
get_area (elem C) and whole
delete whole

load refine_0.sa.pdb_A.pdb, cA
load refine_0.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_1.sa.pdb_A.pdb, cA
load refine_1.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_23.sa.pdb_A.pdb, cA
load refine_23.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_26.sa.pdb_A.pdb, cA
load refine_26.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_44.sa.pdb_A.pdb, cA
load refine_44.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_55.sa.pdb_A.pdb, cA
load refine_55.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_60.sa.pdb_A.pdb, cA
load refine_60.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_73.sa.pdb_A.pdb, cA
load refine_73.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_83.sa.pdb_A.pdb, cA
load refine_83.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

load refine_87.sa.pdb_A.pdb, cA
load refine_87.sa.pdb_B.pdb, cB
create whole, (cA or cB) and (resid 6-86 or resn CA2) and not elem H
get_area (elem C) and whole
delete cA cB whole

quit
