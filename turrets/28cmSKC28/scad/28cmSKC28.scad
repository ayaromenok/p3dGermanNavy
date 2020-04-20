include <../../../../lib/lib.scad>
yVersion(); // 0.1.1.20200211+

28cmSKC28();

module 28cmSKC28(){
    //support
    //yCyl(rb=37, rt=37, pz=-0.5, clr="white");

    //main turret
    union(){
       half28cmSKC28();
       mirror([0,1,0])
          half28cmSKC28();
    }//union
}


module half28cmSKC28(){
    
gunSupport();    
roofSupport();    
//bottom
bp = [[0.5,0], [0.5,27], [34.7,32], [76.7,32], [76.7,0], [35,0]]; //bottom plate

difference(){    
    union(){
        yPoly(p=bp, szz=0.6, px=-32);
        ySec(r=70, a=[90,117], szz=0.6, px=-18, rz=-90); //bottom back round section
        
    }//union
    yCube(szx=20, szy=8, szz=5, px=-9);
    yCube(szx=20, szy=8, szz=5, px=-9, py=18);    
    
    yCyl(r=10.2, szz=5, pz=-0.5);    
}//diff



//front
fp=[[0,0], [0,27], [11.6,27.5], [13,26],[13,0]]; //front plate
difference(){
    yPoly(p=fp, szz=2, px=-31.5, ry=-70);

    yCube(szx=10, szy=7, szz=10, px=-30, pz=10);
    yCyl(r=3.5, szz=10, px=-38, pz=10, ry=90);
    yCube(szx=10, szy=7, szz=10, px=-30, py=19, pz=10);
    yCyl(r=3.5, szz=10, px=-38, py=19, pz=10, ry=90);
    yCube(szx=10, szy=5, szz=2, px=-30, py=9, pz=8);
}


//bottom side plates
fsp=[[0.75,0.6], [35,0.6], [35,11], [4.55,11]];//front side plate
yPoly(p=fsp, px=-32, py=26.95, rx=90.5, rz=8.3);

bsp=[[0,0.6], [42,0.6], [42,11], [0,11]];//back side plate
yPoly(p=bsp, px=2.7, py=32.0, rx=90.5);



//back side round section
btsp=[[0,0], [41.8,0], [45,10.5], [36.9,15.1], [2.5,15.1]];//Back side & top data
difference(){
    yArc(r=70, w=0.7, a=[90,116.9], px=-18, rz=-90, szz=18.5);
    yPoly(p=btsp, szz=15, px=5.9, pz=21.4, py=43, rx=135.2);
    ySec(r=70, a=[89.0,110.5], szz=1.5, px=-12, pz=42.5, rx=-21.6, rz=-90);    
};



//top side plates
ftsp=[[-0.50,0], [31,0], [32,15.3], [-0.5,1.8]];//Front top side plate
yPoly(p=ftsp, szz=0.7, px=-27.8, py=27.6, pz=11.4, rx=136, rz=8);

yPoly(p=btsp, szz=0.7, px=2.9, pz=11.4, py=32,rx=135.2);

}//module

module roofSupport(){
    tSup1 = [[20,20],[20,0],[22,0],[22,20.8],[11.5,31],[11,31],[10,31]];    
    tSup2 = [[20,20],[20,15],[0,15],[0,14],[20,14],[20,0.5],[0,0.5],[0,0],[21.5,0],[21.5,20.8],[11,31],[10,31],[10,31]];
    
    yPoly(p=tSup1, px=0.5, py=0, pz=0, ry=-76);        
    yPoly(p=tSup2, px=40, py=0, pz=0, ry=-90);
}
module gunSupport(){

    sSecInt=[[1,0],[32.5,0],[37.6,21.4],[4.2,12.1],[1,3]];
    sSecExt=[[1,0],[16,0],[16,10],[4.2,12.1],[1,3]];
    
    difference(){
        yPoly(p=sSecInt, px=-32, py=5, pz=0, rx=90);
        yCube(szx=5, szy=10, szz=10, px=-20, py=5, pz=10);
        yCyl(r=2.5, szz=10, px=-20, py=9, pz=10, rx=90);    
    }//diff

    difference(){
        yPoly(p=sSecInt, px=-32, py=15, pz=0, rx=90);
        yCube(szx=5, szy=10, szz=10, px=-20, py=15, pz=10);
        yCyl(r=2.5, szz=10, px=-20, py=20, pz=10, rx=90);    
    }//diff
    
    difference(){
        yPoly(p=sSecExt, px=-32, py=24, pz=0, rx=90);
        yCube(szx=5, szy=10, szz=10, px=-20, py=24, pz=10);
        yCyl(r=2.5, szz=10, px=-20, py=29, pz=10, rx=90);    
    }//diff
}//module sunSupport