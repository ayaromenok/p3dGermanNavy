include <../../../../lib/lib.scad>
include <../scad/28cmGun.scad>

28cmGun();
prnSupport();
module prnSupport(){
    difference(){
        yCyl(r=10, szz=0.6);
        yCyl(r=9, szz=2);
    }   
    yCube(szx=20, szy=1.6, szz=0.6);
    yCube(szx=1.6, szy=20, szz=0.6);
    
    yCube(szx=0.8, szy=3, szz=8, py=4.5, pz=4);
    yCube(szx=0.8, szy=3, szz=8, py=-4.5, pz=4);
}