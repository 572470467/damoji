//工作台
color("Sienna"){difference( ){
translate([0,0,100]) cylinder(10,163,163) ; 
translate([0,0,90]) cylinder(30,135,135) ;
}
translate([0,0,100]) cylinder(10,35,35) ;
translate([15,0,100]) rotate([0,0,90]) cube([150,35,10]);
translate([0,20,100]) rotate([0,0,210]) cube([150,35,10]);
translate([0,-20,100]) rotate([0,0,-30]) cube([150,35,10]);
translate([8,0,110]) rotate([0,180,90]) cube([150,20,10]);
translate([0,11,110]) rotate([0,180,210]) cube([150,20,10]);
translate([0,-10,110]) rotate([0,180,-30]) cube([150,20,10]);
}
module a()
{
color("Sienna") minkowski() {
cube([40,35,10]);
translate([1,1,0])cylinder(0.5,2,2);
}
}
module b()
{
color("Sienna") minkowski(){
cube([30,10,10]);
translate([1,1,0])cylinder(0.5,2,2);
}
}
translate([15,160,100]) rotate([0,0,90]) a();
translate([130,95,110]) rotate([0,180,210]) a();
translate([-145,-65,100]) rotate([0,0,210]) a();
translate([15,-160,110]) rotate([0,180,90]) a();
translate([-145,65,110]) rotate([0,180,-30]) a();
translate([165,-115,110]) rotate([0,180,-30]) a();
translate([85,-183,110]) rotate([0,180,-60]) a();
translate([-63,-150,110]) rotate([0,180,60]) a();
translate([-95,128,110]) rotate([0,180,-60]) a();
translate([116,165,110]) rotate([0,180,58]) a();
translate([150,-5,100]) b();
translate([-180,-5,100]) b();
//平衡心轴
color("Silver") difference( ){
translate([0,0,110])cylinder(7,12,9);
translate([0,0,110])cylinder(8,2,2);
}
//支撑
module zc()
{
color("Silver")translate([0,0,20]) cylinder(20.5,8,8);
color("Gray") cylinder(30,17,17);
color("SlateGray") difference( )
{
cylinder(5,28,28);
translate([15,15,-10]) cylinder(20,1.5,1.5);
rotate([0,0,90])translate([15,15,-10]) cylinder(20,1.5,1.5);
translate([-15,-15,-10]) cylinder(20,1.5,1.5);
rotate([0,0,90])translate([-15,-15,-10]) cylinder(20,1.5,1.5);
}}
translate([-3,150,70]) zc();
translate([-125,-75,70]) zc();
translate([130,-70,70]) zc();
//平台
translate([0,0,55]) color("LightGrey") minkowski(){
cube([540,540,20],true);
cylinder(5,20,20);
}
color("SlateGray")  cube([515,515,100],true);
//支撑脚
module zcj()
{color("LightGrey"){
translate([0,0,-75]) cylinder(25,10,10);
translate([0,0,-82]) cylinder(7,30,10);
translate([0,0,-87]) cylinder(5,30,30);
}}
translate([220,220,0]) zcj();
rotate([0,0,90]) translate([220,220,0]) zcj();
translate([-220,-220,0]) zcj();
rotate([0,0,90]) translate([-220,-220,0]) zcj();
module lm()
{
color("Black")translate([-3,135,90]) cylinder(20.5,2.5,2.5);
color("Black") translate([-3,165,90]) cylinder(20.5,2.5,2.5);
color("Black") translate([-18,147,90]) cylinder(20.5,2.5,2.5);
color("Black") translate([11,152,90]) cylinder(20.5,2.5,2.5);
}
lm();
translate([-58,-210,0]) rotate([0,0,25])lm();
translate([255,-153,0]) rotate([0,0,55])lm();
module clm(){
color("Gray")translate([230,15,70]) cylinder(50,8,8);
difference( ){
color("Gray")translate([230,15,120]) cylinder(4,8,3);
translate([230,15,120]) cylinder(30,3,3);
}}
module dlm(){
color("Gray")translate([230,15,70]) cylinder(2,8,8);
difference( ){
color("Gray")translate([230,15,72]) cylinder(4,8,3);
translate([230,15,72]) cylinder(30,3,3);
}}
translate([0,0,-18])clm();
translate([-20,60,0]) clm();
translate([-65,-110,-15]) clm();
translate([-60,120,0]) clm();
translate([-150,185,0]) clm();
translate([-235,200,0]) clm();
translate([-235,175,-18]) clm();
translate([-315,180,0]) clm();
translate([-385,135,0]) clm();
translate([-435,75,0]) clm();
translate([-455,-10,-15]) clm();
translate([-395,-110,-18]) clm();
translate([-450,-90,0]) dlm();
translate([-430,-150,0]) dlm();
translate([-370,-210,0]) dlm();
translate([-300,-240,0]) dlm();
translate([-230,-250,0]) dlm();
translate([-150,-240,0]) dlm();
translate([-70,-200,0]) dlm();
translate([-20,-140,0]) dlm();
translate([10,-70,0]) dlm();
translate([-210,-10,0]) dlm();
translate([-250,-10,0]) dlm();
translate([-500,255,0]) dlm();
translate([40,255,0]) dlm();
translate([-500,-285,0]) dlm();
translate([40,-285,0]) dlm();
//显示器
color("Gray"){
difference( ){
translate([0,250,150]) cube([100,40,200],true);
translate([0,240,185]) rotate([-15,0,0])cube([330,60,230],true);
}
translate([0,265,160]) rotate([-15,0,0])cube([220,10,150],true);
}
color("MediumBlue") translate([0,264,160]) rotate([-15,0,0])cube([200,10,120],true);