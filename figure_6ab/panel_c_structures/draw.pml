run cgo_arrow.py

load 1e8a.cif, a12
load 1irj.cif, a9
load 1mr8.cif, a8

create a9, a9 and (chain A,B)

align a12 and resid 5-85 and chain A, a9 and resid 5-85 and chain A
align a8 and resid 5-85 and chain A, a9 and resid 5-85 and chain A

sele a12_pair, a12 and (resid 32,57) and chain A
sele a9_pair, a9 and (resid 37,63) and chain A
sele a8_pair, a8 and (resid 34,55) and chain A

zoom visi
hide eve, resn CPS
hide eve, resn HOH
show spheres, resn CA
set ray_trace_mode, 1
set ray_shadows, 0
set orthoscopic, 1

cartoon tube
set cartoon_tube_radius, 0.8

color white, chain B
color gray20, chain A
color green, resn CA
bg_color white

show sticks, *_pair and (sidechain or name CA)
show spheres, *_pair and name CA
set sphere_scale, 0.5

hide cartoon
hide eve, resn CA
set stick_radius, 0.3

cgo_arrow A9//A/37/CA,  A9//A/37/CZ, 0.5, hlength=1.5, color=red, name=a9_37
cgo_arrow A9//A/63/CA,  A9//A/63/CE, 0.5, hlength=1.5, color=red, name=a9_63
cgo_arrow A9//A/63/CA,  A9//A/37/CA, 0.3, hlength=0, color=gray, name=a9_caca
dihedral A9//A/63/CE, A9//A/63/CA, A9//A/37/CA, A9//A/37/CZ


cgo_arrow a12//A/32/CA,  a12//A/32/CG, 0.5, hlength=1.5, color=red, name=a12_37
cgo_arrow a12//A/57/CA,  a12//A/57/CZ, 0.5, hlength=1.5, color=red, name=a12_63
cgo_arrow a12//A/32/CA,  a12//A/57/CA, 0.3, hlength=0, color=gray, name=a12_caca

cgo_arrow a8//A/34/CA,  a8//A/34/CG, 0.5, hlength=1.5, color=red, name=a8_37
cgo_arrow a8//A/55/CA,  a8//A/55/CZ, 0.5, hlength=1.5, color=red, name=a8_63
cgo_arrow a8//A/34/CA,  a8//A/55/CA, 0.3, hlength=0, color=gray, name=a8_caca

set_view (\
    -0.739171982,   -0.660818636,    0.130140007,\
    -0.653462946,    0.750450730,    0.099026278,\
    -0.163096622,   -0.011846737,   -0.986527979,\
     0.000000000,    0.000000000,  -23.857515335,\
    24.442262650,   53.974170685,   -3.812859297,\
    -5.302119255,   53.017131805,   20.000000000 )

show cartoon
set cartoon_fancy_helices, 1
set cartoon_tube_radius, 0.5

disable *
enable a9*
disable a9_caca
scene a9_close, store

disable *
enable a8*
disable a8_caca
scene a8_close, store

disable *
enable a12*
disable a12_caca
scene a12_close, store
