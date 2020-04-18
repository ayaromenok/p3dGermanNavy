include <../../../../lib/lib.scad>
yVersion(); // 0.1.1.20200211+

28cmSKC28();

module 28cmSKC28(){
    //support
    //yCyl(rb=37, rt=37, pz=-0.5, clr="white");

    //main turret
    difference(){
        union(){
            half28cmSKC28();
            mirror([0,1,0])
                half28cmSKC28();
        }//union
        yCyl(rb=28, rt=28, szz=5, pz=-0.5);
    }//diff
    
}


module half28cmSKC28(){
//bottom
bp = [[0.5,0], [0.5,27], [34.7,32], [76.7,32], [76.7,0], [35,0]]; //bottom plate
yPoly(p=bp, px=-32);

//front
fp=[[0,0], [0,27], [11.6,27.5], [13,26],[13,0]]; //front plate
difference(){
    yPoly(p=fp, px=-31.5, ry=-70);

    yCube(szx=10, szy=7, szz=10, px=-30, pz=10);
    yCyl(r=3.5, szz=10, px=-40, pz=10, ry=90);
    yCube(szx=10, szy=7, szz=10, px=-30, py=18, pz=10);
    yCyl(r=3.5, szz=10, px=-40, py=18, pz=10, ry=90);
}

//bottom side plates
fsp=[[0.75,1], [35,1], [35,11], [4.55,11]];//front side plate
yPoly(p=fsp, px=-32, py=26.95, rx=90.5, rz=8.3);

bsp=[[0,1], [42,1], [42,11], [0,11]];//back side plate
yPoly(p=bsp, px=2.7, py=32.0, rx=90.5);

ySec(r=70, a=[90,117],px=-18, rz=-90); //bottom back round section

//back side round section
btsp=[[0,0], [41.8,0], [45,10.5], [36.9,15.1], [2.5,15.1]];//Back side & top data
difference(){
    yArc(r=70, w=0.7, a=[90,116.9], px=-18, rz=-90, szz=18.5);
    yPoly(p=btsp, szz=15, px=5.9, pz=21.4, py=42.5, rx=135.2);
    ySec(r=70, a=[89.0,110.5], szz=1.5, px=-12, pz=42.5, rx=-21.6, rz=-90);    
};


//top side plates
//ftsp=[[0,0], [31,0], [32,15.3], [0,1.8]];//Front top side plate
//yPoly(p=ftsp, szz=0.7, px=-27.8, py=27.6, pz=11.4, rx=136, rz=8);


//yPoly(p=btsp, szz=0.7, px=2.9, pz=11.4, py=32,rx=135.2);


//roof
//frp=[[0,26], [34.5,21], [34.5,0], [0,0]];//Front Roof Plate
//yPoly(p=frp, szz=0.5,px=-27.3, pz=12.2, ry=-15.5);

//crp=[[0,21], [34,21], [34,0], [0,0]];//Center Roof Plate
//yPoly(p=crp, szz=0.5, px=5.8, pz=21.5);




//back roof plate
/*
difference(){
    ySec(r=70, a=[90,110.5], szz=0.5, px=-12.8, pz=42.4, rx=-21.6, rz=-90);
    //need to be in sync with crp(Center Roof Plate)
    yCube(szx=80, szy=42, szz=50, px=-0.2, pz=25);    
}//diff
*/
}//module