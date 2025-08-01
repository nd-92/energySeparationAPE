rm -rf BaseFlow/*.fld

FieldConvert --verbose -m interppointdatatofld:frompts="BaseFlow/BaseFlow.pts" Mesh.xml BaseFlow/BaseFlowConditions.xml BaseFlow/BaseFlow.fld

FieldConvert --verbose -m C0Projection:usexmlbcs Mesh.xml BaseFlow/BaseFlowConditions.xml BaseFlow/BaseFlow.fld BaseFlow/SmoothenedBaseFlow.fld