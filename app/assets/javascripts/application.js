// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

//鼠标坐标
var x, y;
//弹出窗口在x, y方向的偏移量
var to_x = 100;
var to_y = 100;
//屏幕宽度和高度
height = screen.availHeight;
width = screen.availWidth;
//弹出窗口的宽度及高度
var win_height = 293;
var win_width = 233;

//弹出展示窗口
function showWish(id) {
    wishWin = open("/show?imageId="+ id, "show Wish", "left=" + (x + to_x) +", top=" + (y + to_y) 
            + ", toolbar=no, location=no, directories=no, status=no, menubar=no" 
            + ", scrollbars=no, resizable=no, copyhistory=no, width=233px, height=293px");
    wishWin.focus();
}

//关闭展示窗口
function closeWish(id) {
    wishWin.close();
}

//得到屏幕宽度和高度，并做出弹出窗口具体位置的判断
function getLocation(event) {

    x = event.screenX;
    y = event.screenY;

    if(win_width > (width - x)) {
        x = x - to_x - 100 - win_width;
    }

    if(win_height > (height - y)) {
        y = y - to_y - 100 - win_height;
    }
}
