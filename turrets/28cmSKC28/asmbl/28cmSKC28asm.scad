include <../scad/28cmSKC28.scad>
include <../scad/28cmGun.scad>
include <../scad/barbetTop.scad>    
include <../scad/turretRoof.scad>  

//28cmSKC28();
turretRoof();
28cmGun(px=-10, pz=5, ry=-85);
28cmGun(px=-10, py=19, pz=5, ry=-85);
28cmGun(px=-10, py=-19, pz=5, ry=-85);