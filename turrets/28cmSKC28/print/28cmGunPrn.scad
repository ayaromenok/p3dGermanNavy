include <../../../../lib/lib.scad>
include <../scad/28cmGun.scad>

//28cmGun();
//prnSupportVertical();
//or
28cmGun(ry=90);
prnSupportHorizontal();

module prnSupportVertical(){
    difference(){
        yCyl(r=10, szz=0.6);
        yCyl(r=9, szz=2);
    }   
    yCube(szx=20, szy=1.6, szz=0.6);
    yCube(szx=1.6, szy=20, szz=0.6);
    
    yCube(szx=0.8, szy=3, szz=8, py=4.5, pz=4);
    yCube(szx=0.8, szy=3, szz=8, py=-4.5, pz=4);
}

module prnSupportHorizontal(){
    yCube(szx=100, szy=0.8, szz=1.6, px=40, pz=-2.0);
    yCube(szx=0.8, szy=12, szz=2, px=10, pz=-1.8);
    yCube(szx=5, szy=10, szz=0.6, px=-5, pz=-2.5);
    yCube(szx=5, szy=10, szz=0.6, px=88, pz=-2.5);
}