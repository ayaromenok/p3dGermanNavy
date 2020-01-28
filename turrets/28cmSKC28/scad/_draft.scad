include <lib/primitives.scad>
yVersion(); // 0.1.20200127

//support
yCyl(rb=37, rt=37, pz=-1, clr="white");

draftTurret();
mirror([0,1,0])
    draftTurret();

module draftTurret(){
//bottom
bp = [[0,0], [0,27], [35,32], [77,32], [77,0], [35,0]]; //bottom plate
yPoly(p=bp, px=-32);

//bottom side plates
fp=[[0,0], [0,27], [12,27], [12,0]]; //front plate
yPoly(p=fp, px=-31, ry=-70);

fsp=[[0,0], [35,0], [35,11], [4,11]];//front side plate
yPoly(p=fsp, px=-32, py=27, rx=90, rz=8);

bsp=[[0,0], [42,0], [42,11], [0,11]];//back side plate
yPoly(p=bsp, px=3,py=32,rx=90);

//top side plates
ftsp=[[0,0], [31,0], [32,15], [0,2]];//Front top side plate
yPoly(p=ftsp, px=-28, py=28, pz=11, rx=138, rz=8);

btsp=[[0,0], [42,0], [45,10.5],[37,14], [2.2,14]];//Back top side plate
yPoly(p=btsp, px=3, pz=11, py=32,rx=130);

//back round section
ySec(r=70, a=[90,117],px=-18, rz=-90);
yArc(r=70, a=[90,117],px=-18, rz=-90, szz=13);

//roof
frp=[[0,27], [34.5,21], [34.5,0], [0,0]];//Front Roof Plate
yPoly(p=frp, px=-28, pz=12, ry=-15.5);
crp=[[0,21], [34,21], [34,0], [0,0]];//Center Roof Plate
yPoly(p=crp,px=5, pz=21);
//back roof plate
difference(){
    ySec(r=70, a=[90,110.5], px=-15, pz=36, rx=-15.5, rz=-90);
    //need to be in sync with crp(Center Roof Plate)
    yCube(szx=80,szy=42,szz=30, px=-1, pz=25);
}//diff
}//module