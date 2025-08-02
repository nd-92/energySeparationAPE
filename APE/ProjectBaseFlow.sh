rm -rf BaseFlow/*.fld
rm -rf BaseFlow/*.dat

rm SmoothenedBaseFlow.dat
rm BaseFlow.dat

FieldConvert --verbose --no-equispaced -m interppointdatatofld:frompts=BaseFlow/ProjectedBaseFlow.pts Mesh.xml BaseFlow/BaseFlowConditions.xml BaseFlow/BaseFlow.fld
FieldConvert --verbose --no-equispaced -m C0Projection:usexmlbcs Mesh.xml BaseFlow/BaseFlowConditions.xml BaseFlow/BaseFlow.fld BaseFlow/SmoothenedBaseFlow.fld

FieldConvert --verbose --no-equispaced Mesh.xml BaseFlow/BaseFlowConditions.xml BaseFlow/BaseFlow.fld BaseFlow.dat
FieldConvert --verbose --no-equispaced Mesh.xml BaseFlow/BaseFlowConditions.xml BaseFlow/SmoothenedBaseFlow.fld SmoothenedBaseFlow.dat