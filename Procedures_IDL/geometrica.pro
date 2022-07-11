FUNCTION geometrica, cosmo=cosmo

z=cosmo.z_LTB

file="/Users/saranobrega/Desktop/2F1_table.txt"
readcol,file,F  

file2="/Users/saranobrega/Desktop/bubble_fnz_original/bubble-master/data/fnz"
readcol,file2,r_fnz,density,a1_fnz,a1dot,a2,a2dot,ht,hr,k,x,x2,zz,x3,x4

a1_z_array=Interpol(a1_fnz,zz,z_array)

result = INTERPOL(F , a1_fnz, a1_z_array) 
RETURN,result