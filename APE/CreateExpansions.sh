rm p.dat
rm p.fld

FieldConvert --verbose --no-equispaced -m fieldfromstring:fieldstr="0":fieldname="p" Mesh.xml Conditions.xml p.fld
FieldConvert --verbose --no-equispaced Mesh.xml Conditions.xml p.fld p.dat
