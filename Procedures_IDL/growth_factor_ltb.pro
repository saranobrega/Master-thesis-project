
FUNCTION growth_factor_ltb, z_array,cosmo=cosmo
z_array=indgen(60)*0.1
a1_fnz=cosmo.a1_LTB
zz=cosmo.z_LTB
a_array=INTERPOL(a1_fnz,zz,z_array)
F_final=geometrica(cosmo=cosmo, a_array)

shear=shear(z_array, cosmo=cosmo)

g0=geometrica(cosmo=cosmo, 1)

RETURN,a_array*F_final*(1+2*shear)/g0

END