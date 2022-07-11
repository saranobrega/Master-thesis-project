;FUNCTION HUBBLE_AT_Z, z_array, cosmo=cosmo
;+
; NAME:
;    HUBBLE_AT_Z
; ONE LINE HELP:
;    Compute the value of the Hubble parameter H(z) at redshift z
;    (km/s/Mpc) for LTB model.
; PURPOSE:
;    Compute the value of the Hubble parameter H(z) at redshift z
;    (km/s/Mpc) for a LTB model.
; CALLING SEQUENCE:
;    H_array = HUBBLE_AT_Z_LTB(z_array, cosmo=cosmo)
; INPUT:
;    z_array : an array of redshift values
;
; OUTPUT:
;    H_array : the array of Hubble parameters corresponding to z_array
;    
; KEYWORDS:
;    cosmo : the structure containing the cosmological parameters
; EXAMPLE:
; 
;
; PROCEDURES CALLED:
;
; REVISION HISTORY
;    Written from HUBBLE_AT_Z, Jean-Baptiste Melin, July 1 2004
;-



; qual das means?


FUNCTION HUBBLE_AT_Z_LTB, z_array, cosmo=cosmo

z=cosmo.z_LTB
th= cosmo.th_LTB
;Hr= cosmo.Hr_LTB
th_new=INTERPOL(th,z,z_array)

;geometrical mean

;output= (Hr*Ht^2)^(1/3.)

;other mean

;output=(2*Ht+Hr)/3

RETURN, 100*th_new
closing:
END



