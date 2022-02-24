# To use:
# On command line, type `pymol dir_with_pdb/*.pdb`
# In resulting pymol window, type @plot_hdx.pml

# For raw hdx values (figure 4bd) use this spectrum
spectrum b, blue_white_red, minimum=10,maximum=90

# For differences in hdx values (figure 4f, 5d), use this spectrum
#spectrum b, blue_white_red, minimum=-40,maximum=40

hide eve, resid 1-5
hide eve, resid 87-114

show spheres, resname CA2

cartoon putty
set cartoon_putty_radius, 1
set cartoon_putty_scale_power, 1.5
set cartoon_putty_scale_max, 1.5
set cartoon_putty_quality, 10

set orthoscopic
set ray_trace_mode, 1
set ray_shadows, 0

select unknown, b < 0.1 and b > -0.1
color gray, unknown
bg_color white

color green, resname CA2
zoom visi

show spheres, (resid 63) and sidechain
show spheres, (resid 63) and name CA

set_view (\
     0.847351730,   -0.512521207,   -0.138986692,\
    -0.082676962,    0.131210223,   -0.987900436,\
     0.524556100,    0.848590016,    0.068808831,\
     0.000000000,    0.000000000, -129.924743652,\
    87.215187073,   -0.971584320,    0.363822937,\
    94.762184143,  165.087356567,   20.000000000 )
