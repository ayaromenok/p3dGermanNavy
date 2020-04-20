include <../../../../lib/lib.scad>

//turretRoof();
//turretRoofPrn();
module turretRoof(){
    turretRoofHalf();
    mirror([0,1,0])
        turretRoofHalf();
}//turretRoof()

module turretRoofPrn(){
    turretRoofFrontPlate(px=-10,pz=-19.0,ry=15.5);
    turretRoofCenterPlate(pz=-21.5);
    turretRoofBackPlate(ry=-21.6, px=15,pz=-34.7);
    mirror([0,1,0]){
        turretRoofFrontPlate(px=-10,pz=-19.0,ry=15.5);
        turretRoofCenterPlate(pz=-21.5);
        turretRoofBackPlate(ry=-21.6, px=15,pz=-34.7);
    }//mirror
}//turretRoofPrn()

module turretRoofHalf(){
    //roof
    turretRoofFrontPlate();
    turretRoofCenterPlate();
    turretRoofBackPlate();    
}//turretRoofHalf()

module turretRoofFrontPlate(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="grey")
{
    translate([px, py, pz])
    rotate([rx,ry,rz])
    color(clr){
        frp=[[0,26], [34.5,21], [34.5,0], [0,0]];//Front Roof Plate
        difference(){    
            yPoly(p=frp, szz=0.5,px=-27.3, pz=12.2, ry=-15.5);
    
            yCube(szx=10, szy=7, szz=10, px=-30, pz=10);
            yCyl(r=3.5, szz=10, px=-25, pz=10, ry=0);
            yCube(szx=10, szy=7, szz=10, px=-30, py=19, pz=10);
            yCyl(r=3.5, szz=10, px=-25, py=19, pz=10, ry=0);
        }//diff    
    }//transform
}//module turretRoofFront()

module turretRoofCenterPlate(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="grey")
{
    translate([px, py, pz])
    rotate([rx,ry,rz])
    color(clr){
        crp=[[0,21], [34,21], [34,0], [0,0]];//Center Roof Plate
        yPoly(p=crp, szz=0.5, px=5.8, pz=21.5);
    }//transform
}//module turretRoofCenterPlate()        

module turretRoofBackPlate(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="grey")
{
    translate([px, py, pz])
    rotate([rx,ry,rz])
    color(clr){
        //back roof plate
        difference(){
            ySec(r=70, a=[90,110.5], szz=0.5, px=-12.8, pz=42.4, rx=-21.6, rz=-90);
            //need to be in sync with crp(Center Roof Plate)
            yCube(szx=80, szy=42, szz=50, px=-0.2, pz=25);    
        }//diff
    }//transform
}//module turretRoofBackPlate()        
