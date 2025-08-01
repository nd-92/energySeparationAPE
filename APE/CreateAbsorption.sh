rm -rf Absorption/*.fld

FieldConvert --verbose -m fieldfromstring:fieldstr="-504000*exp(-(64*(250*(x^2 + y^2)^(1/2) - 3)^2)/9)":fieldname="p" Mesh.xml Absorption/AbsorptionConditions.xml Absorption/pAbsorption.fld
FieldConvert --verbose -m fieldfromstring:fieldstr="-(3*554529255^(1/2)*exp(-(64*(250*(x^2 + y^2)^(1/2) - 3)^2)/9)*((1247169392722986^(1/2)*(41929*20279^(1/2)*415723130907662^(1/2) + 59411132812500)^(1/2))/2 + 46875*8430449371676477698^(1/2))^(1/2))/660153875":fieldname="u" Mesh.xml Absorption/AbsorptionConditions.xml Absorption/uAbsorption.fld
FieldConvert --verbose -m fieldfromstring:fieldstr="-(3*554529255^(1/2)*exp(-(64*(250*(x^2 + y^2)^(1/2) - 3)^2)/9)*((1247169392722986^(1/2)*(41929*20279^(1/2)*415723130907662^(1/2) + 59411132812500)^(1/2))/2 + 46875*8430449371676477698^(1/2))^(1/2))/660153875":fieldname="v" Mesh.xml Absorption/AbsorptionConditions.xml Absorption/vAbsorption.fld

FieldConvert --verbose Absorption/pAbsorption.fld Absorption/uAbsorption.fld Absorption/vAbsorption.fld Absorption/Absorption.fld

FieldConvert --verbose -m C0Projection:usexmlbcs Mesh.xml Absorption/AbsorptionConditions.xml Absorption/pAbsorption.fld Absorption/pSmoothenedAbsorption.fld
FieldConvert --verbose -m C0Projection:usexmlbcs Mesh.xml Absorption/AbsorptionConditions.xml Absorption/uAbsorption.fld Absorption/uSmoothenedAbsorption.fld
FieldConvert --verbose -m C0Projection:usexmlbcs Mesh.xml Absorption/AbsorptionConditions.xml Absorption/vAbsorption.fld Absorption/vSmoothenedAbsorption.fld
FieldConvert --verbose Absorption/pSmoothenedAbsorption.fld Absorption/uSmoothenedAbsorption.fld Absorption/vSmoothenedAbsorption.fld Absorption/SmoothenedAbsorption.fld

rm Absorption/pAbsorption.fld
rm Absorption/uAbsorption.fld
rm Absorption/vAbsorption.fld
rm Absorption/pSmoothenedAbsorption.fld
rm Absorption/uSmoothenedAbsorption.fld
rm Absorption/vSmoothenedAbsorption.fld