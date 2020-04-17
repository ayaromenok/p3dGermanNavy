include <lib/primitives.scad>
yVersion(); // 0.1.20200127

//support
yCyl(rb=37, rt=37, pz=-0.5, clr="white");

draftTurret();
mirror([0,1,0])
    draftTurret();

module draftTurret(){
//bottom
bp = [[0.5,0], [0.5,27], [34.7,32], [76.7,32], [76.7,0], [35,0]]; //bottom plate
yPoly(p=bp, px=-32);

//front
fp=[[0,0], [0,27], [11.6,27.5], [13,26],[13,0]]; //front plate
yPoly(p=fp, px=-31, ry=-70);

//bottom side plates
fsp=[[1,0], [35,0], [35,11], [5,11]];//front side plate
yPoly(p=fsp, px=-32, py=27, rx=90, rz=8);

bsp=[[0,0], [42,0], [42,11], [0,11]];//back side plate
yPoly(p=bsp, px=2.7, py=31.9, rx=90);

//top side plates
ftsp=[[0,0], [31,0], [32,15.3], [0,1.8]];//Front top side plate
yPoly(p=ftsp, szz=0.7, px=-27.8, py=27.6, pz=11.4, rx=136, rz=8);

btsp=[[0,0], [41.8,0], [45,10.5], [36.9,15.1], [2.5,15.1]];//Back top side plate
yPoly(p=btsp, szz=0.7, px=2.9, pz=11.4, py=32,rx=135.2);


//roof
frp=[[0,26], [34.5,21], [34.5,0], [0,0]];//Front Roof Plate
yPoly(p=frp, szz=0.5,px=-27.3, pz=12.2, ry=-15.5);

crp=[[0,21], [34,21], [34,0], [0,0]];//Center Roof Plate
yPoly(p=crp, szz=0.5, px=5.8, pz=21.5);


//back round section
ySec(r=70, a=[90,117],px=-18, rz=-90);
difference(){
    yArc(r=70, w=0.7, a=[90,116.9], px=-18, rz=-90, szz=18.5);
    yPoly(p=btsp, szz=15, px=5.9, pz=21.4, py=42.5, rx=135.2);
    ySec(r=70, a=[90.0,110.5], szz=1.5, px=-12, pz=42.5, rx=-21.6, rz=-90);    
}


//back roof plate
difference(){
    ySec(r=70, a=[90,110.5], szz=0.5, px=-12.8, pz=42.4, rx=-21.6, rz=-90);
    //need to be in sync with crp(Center Roof Plate)
    yCube(szx=80, szy=42, szz=50, px=-0.2, pz=25);    
}//diff

}//module