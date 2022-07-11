

FUNCTION shear, z_array, cosmo=cosmo

z=cosmo.z_LTB
th= cosmo.th_LTB
rh= cosmo.rh_LTB

th_new=100*INTERPOL(th,z,z_array)
rh_new=100*INTERPOL(rh,z,z_array)

a=th_new-rh_new
b=2*th_new+rh_new
RETURN, a/b
END