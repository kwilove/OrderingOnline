$(function(){
	var dg;

	$(document).ready(function(){
		dg = frameElement.lhgDG;
	});
	function success(){
		if(dg.curWin.document.forms[0]){
			dg.curWin.document.forms[0].action = dg.curWin.location+"";
			dg.curWin.document.forms[0].submit();
		}else{
			dg.curWin.location.reload();
		}
		dg.cancel();
	}

	function choose()
	{
		var ZUOBIAO_X = document.getElementById("ZUOBIAO_X").value;
		var ZUOBIAO_Y = document.getElementById("ZUOBIAO_Y").value;
		var ary="";
		if(ZUOBIAO_X=="" || ZUOBIAO_Y==""){
		  alert("请先输入经纬度");
		}else{
		    ary = ZUOBIAO_X+"-"+ZUOBIAO_Y;
		    window.returnValue=ary;
		    if(window.opener)
		   	    window.opener.setXY(ary);
		    window.close();
		}
	}
	
	// 百度地图API功能
	function G(id) {
	    return document.getElementById(id);
	}

	var map = new BMap.Map("allmap");
	map.centerAndZoom("北京",12);                   // 初始化地图,设置城市和地图级别。

	var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
	    {"input" : "suggestId"
	    ,"location" : map
	});

	ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
	var str = "";
	    var _value = e.fromitem.value;
	    var value = "";
	    if (e.fromitem.index > -1) {
	        value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	    }    
	    str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
	    
	    value = "";
	    if (e.toitem.index > -1) {
	        _value = e.toitem.value;
	        value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	    }    
	    str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
	    //G("searchResultPanel").innerHTML = str;
	});

	var myValue;
	ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
	var _value = e.item.value;
	    myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	   //G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
	    
	    setPlace();
	});

	function setPlace(){
	    map.clearOverlays();    //清除地图上所有覆盖物
	    function myFun(){
	        var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
	        map.centerAndZoom(pp, 18);
	        map.addOverlay(new BMap.Marker(pp));    //添加标注
	    }
	    var local = new BMap.LocalSearch(map, { //智能搜索
	      onSearchComplete: myFun
	    });
	    local.search(myValue);
	}



	map.addControl(new BMap.ScaleControl());                    // 添加默认比例尺控件
	map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));                    // 左上
	/* map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_RIGHT}));                    // 右上
	map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT}));                    // 左下
	map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT}));                    // 右下 */

	map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
	//map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮
	//map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN}));  //左下角，仅包含平移按钮
	//map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM}));  //右下角，仅包含缩放按钮

	map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
	map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用


	function showInfo(e){
		 
	 	document.getElementById("ZUOBIAO_X").value = e.point.lat;
	    document.getElementById("ZUOBIAO_Y").value = e.point.lng;
	 
	}
	map.addEventListener("click", showInfo);
})