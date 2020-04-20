include <../../../../lib/lib.scad>


module turretRoof(){
    turretRoofHalf();
    mirror([0,1,0])
        turretRoofHalf();
    }

module turretRoofHalf(){
    //roof
    frp=[[0,26], [34.5,21], [34.5,0], [0,0]];//Front Roof Plate
    yPoly(p=frp, szz=0.5,px=-27.3, pz=12.2, ry=-15.5);

    crp=[[0,21], [34,21], [34,0], [0,0]];//Center Roof Plate
    yPoly(p=crp, szz=0.5, px=5.8, pz=21.5);

    //back roof plate
    difference(){
        ySec(r=70, a=[90,110.5], szz=0.5, px=-12.8, pz=42.4, rx=-21.6, rz=-90);
        //need to be in sync with crp(Center Roof Plate)
        yCube(szx=80, szy=42, szz=50, px=-0.2, pz=25);    
    }//diff
}