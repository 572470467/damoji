//工作台
color("Sienna")difference( ){
translate([0,0,100]) cylinder(5,163,163) ; 
translate([0,0,90]) cylinder(30,135,135) ;
rotate([0,0,120])translate([67,120,90])cylinder(20,90,90,$fn=3);
rotate([0,0,-60])translate([67,112,90])cylinder(20,90,90,$fn=3);
}
color("Sienna")translate([0,0,100]) cylinder(5,40,40) ;
module gear() //齿轮
{
color("Sienna") minkowski() {
cube([210,30,5]);
translate([0.5,0.5,0])cylinder(0.1,5,5);
}
}
color("Silver")translate([0,0,105])cylinder(6,16,16);
color("Silver") difference( ){  //平衡心轴
translate([0,0,111])cylinder(6,16,12.7);
translate([0,0,111])cylinder(8,3,3);
}
module zc()  //支撑
{
color("Silver")translate([0,0,20]) cylinder(25.5,8,8);
color("Gray") translate([0,0,10]) sphere(r = 17);
}
rotate([0,0,-30]) {
for (i = [1:3])
{
    angle = i*360/3;
    color("Sienna")rotate(angle, [0, 0,90])translate([-15,-17,100]) gear();
    color("Sienna")rotate(angle, [0, 0, 90])translate([-175,-10,100])cube([190,20,5]);
    rotate(angle, [0, 0,90])translate([185,-2,60])zc();
    rotate(angle, [0, 0,90])translate([-245,15,0])lm();
}}

//平台
translate([0,0,55]) color("LightGrey") minkowski(){
cube([480,480,20],true);
cylinder(5,20,20);
}
color("SlateGray")  cube([475,475,100],true);
module lm(){      //螺毋
color("Gray")translate([230,15,70]) cylinder(2,8,8);
difference( ){
color("Gray")translate([230,15,72]) cylinder(4,8,3);
translate([230,15,72]) cylinder(30,3,3);
}}
module zcj()//支撑脚
{color("LightGrey"){
translate([0,0,-75]) cylinder(25,10,10);
translate([0,0,-82]) cylinder(7,30,10);
translate([0,0,-87]) cylinder(5,30,30);
}}
for (i = [1:4])
{
    angle = i*360/4;
    color("Gray")rotate(angle, [0, 0,90])translate([-20,200,0])lm();
    color("Gray")rotate(angle, [0, 0,90])translate([-170,170,0])zcj();
}
//舵机
rotate([0,180,180])translate([0,-12,-390])
{translate([0,0,135])cube([19.5,40.3,38.5],true);
difference( ){
translate([0,0,144])cube([19.5,54,2.5],true);
 for (x = [-5:10:5],
 y = [-25:50:25],
 z = [0,0,138] )
translate([x,y,z]) cylinder(10,3,3);
 }
translate([0,,-2,154])cube([19.5,23,2.5],true);
translate([0,10,154])cylinder(2.5,9.75,9.75,true);
translate([0,12,156])cylinder(2.5,3,3,true);
translate([0,12,158])cylinder(2.5,2.5,2.5,true);
//小固定夹
color("LightGrey")translate([6,12,160])cube([20,8,2],true); 
//小激光灯
rotate([0,15,0]) translate([-30,12,159])cylinder(10,3,3,true);
color("Red")rotate([0,15,0]) translate([-30,12,159.2])cylinder(10,2,2,true); 
 }
//支架
color("LightGrey")translate([0,133,278])cube([30,280,10],true);
color("LightGrey")translate([0,265,160])cube([30,10,230],true);

//显示器
color("Gray"){
difference( ){
translate([0,230,150]) cube([100,20,160],true);
translate([0,210,195]) rotate([-15,0,0])cube([330,60,230],true);
}
translate([0,235,170]) rotate([-15,0,0])cube([220,10,150],true);
}
color("MediumBlue") translate([0,234,170]) rotate([-15,0,0])cube([200,10,120],true);
