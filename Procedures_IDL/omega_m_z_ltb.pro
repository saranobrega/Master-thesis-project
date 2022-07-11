FUNCTION omega_m_z_ltb, z_array, cosmo=cosmo

om= cosmo.om_LTB
z=cosmo.z_LTB
om_interpol=INTERPOL(om,z,z_array)

RETURN, om_interpol
END
