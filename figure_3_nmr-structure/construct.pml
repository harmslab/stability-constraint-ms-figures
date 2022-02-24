load 1irj.pdb, xtal

load refine_0.sa.pdb_A.pdb
load refine_0.sa.pdb_B.pdb
load refine_1.sa.pdb_A.pdb
load refine_1.sa.pdb_B.pdb
load refine_23.sa.pdb_A.pdb
load refine_23.sa.pdb_B.pdb
load refine_26.sa.pdb_A.pdb
load refine_26.sa.pdb_B.pdb
load refine_44.sa.pdb_A.pdb
load refine_44.sa.pdb_B.pdb
load refine_55.sa.pdb_A.pdb
load refine_55.sa.pdb_B.pdb
load refine_60.sa.pdb_A.pdb
load refine_60.sa.pdb_B.pdb
load refine_73.sa.pdb_A.pdb
load refine_73.sa.pdb_B.pdb
load refine_83.sa.pdb_A.pdb
load refine_83.sa.pdb_B.pdb
load refine_87.sa.pdb_A.pdb
load refine_87.sa.pdb_B.pdb

align xtal and resid 6-86 and (chain A,B), refine_0.sa.pdb_* and resid 6-86

alter 1-114/, ss="L"

alter 7-25/, ss="H"
alter 34-44/, ss="H"
alter 50-54/, ss="H"
alter 56-66/, ss="H"
alter 76-86/, ss="H"

color gray20, chain A
color white, chain B
color green, resn CA 

sele H3n, refine_0.sa.pdb_A and resid 56-66
sele H4n, refine_0.sa.pdb_A and resid 76-86
sele H3x, xtal and chain A and resid 56-66
sele H4x, xtal and chain A and resid 76-86

import anglebetweenhelices
angle_between_helices H3x, H4x
angle_between_helices H3n, H4n

color gray20, refine_*A
color white, refine_*B
set cartoon_tube_radius, 1
set cartoon_loop_radius, 0.7
hide eve, resid 86-114
hide eve, resid 1-5
show spheres, resn CA2
show spheres, resn CA
color green, resn CA2
color green, resn CA
hide eve, resn HOH

zoom visi

set cartoon_cylindrical_helices, 2
set ray_shadow, 0
set orthoscopic, 1
bg_color white 
cartoon tube
