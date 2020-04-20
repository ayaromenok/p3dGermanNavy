include <../../../../lib/lib.scad>
yVersion(); // 0.1.1.20200211+


module 28cmGun(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="grey")
{
    translate([px, py, pz])
    rotate([rx,ry,rz])
    color(clr){
        difference(){
            yCyl(r=1.5, szz=35, pz=50+17.5);
            yCyl(r=1, szz=36, pz=50+17.5);
        }//diff
        yCyl(rb=2, rt=1.8, szz=15, pz=35+7.5);
        yCyl(rb=2.6, rt=2.4, szz=35, pz=17.5);

        yCyl2(r=2.2, szz=12, py=10, rx=90); //holder
    }//transform
}//module