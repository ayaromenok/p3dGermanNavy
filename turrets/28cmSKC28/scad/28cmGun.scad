include <../../../../lib/lib.scad>
yVersion(); // 0.1.1.20200211+

28cmGun();
module 28cmGun(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="grey")
{
    translate([px, py, pz])
    rotate([rx,ry,rz])
    color(clr){
        difference(){
            yCyl(r=1.8, szz=35, pz=50+17.5);
            yCyl(r=1.2, szz=11, pz=50+30);
        }//diff
        yCyl(rb=2.6, rt=2.2, szz=16, pz=42);
        yCyl(rb=2.8, rt=2.6,szz=35, pz=17.5);

        yCyl2(r=2.2, szz=12, py=10, rx=90); //holder
    }//transform
}//module