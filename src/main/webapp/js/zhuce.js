// JavaScript Document
var countdown=60; 
function settime(val) { 
	if (countdown == 0) { 
		val.removeAttribute("disabled"); 
		val.text="获取到短信验证码"; 
		countdown =60; 
	} else { 
		val.setAttribute("disabled", true); 
		val.text=countdown+"秒后可重新发送"; 
		countdown--; 
		setTimeout(function() { 
			settime(val) 
		},1000) 
	} 

} 
$(function(){
    $(".tipTimer").trigger("click");
})


function UsersRegister() {
	var paramData={};
	var name=$("#name");
	paramData.name=$("#name").val();

	var telephone=$("#telephone");
	paramData.telephone=$("#telephone").val();

	var password=$("#password");
	paramData.password=$("#password").val();

	var againpass=$("#againpass");
	paramData.againpass=$("#againpass").val();

	$.ajax({
		url:'http://localhost:8080/ExamSystem/UsersRegister',//ajax请求的路径
		type:'POST', //ajax发送请求的方式
		data:JSON.stringify(paramData),
		dataType:'json',//前端请求的数据为JSON格式
		contentType:'application/json;charset=UTF-8',//设定后台返回的数据为JSON
		success:function (result) {
			//根据result后台返回的结果，来判定是否账号存在，
			//alert(flag);
			if (result==1){
				alert("注册成功！");

				return true
			}else{
				alert("注册失败！");
				return  false;

			}
		},
		error:function () {
			alert("用户名已存在！")
		}
	});


}

function   checkUser() {
	var $name=$("#name").val();
	var $spanuser=$("#spanuser");
	if($name==null || $name==""){
		$spanuser.html("用户名不能为空！！");
		$spanuser.css("color","red");
		return false;
	}
	var regxcode= /^[a-zA-Z0-9_-]{4,16}$/;
	if(regxcode.test($name)==true){
		$spanuser.html("√")
		$spanuser.css("color","green");
		return true;
	}else {
		$spanuser.html("用户名不正确，请按规则输入！")
		$spanuser.css("color","red");
		return false;
	}
	$spanuser.html("");
	return true;
}
function  checkPassword(){
	var $password=$("#password").val();
	var $spanpass=$("#spanpass");
	if($password==null || $password==""){
		$spanpass.html("密码不能为空！！");
		$spanpass.css("color","red");
		return false;
	}
	var regxcode= /^[a-zA-Z0-9_-]{6,16}$/;
	if(regxcode.test($password)==false){
		$spanpass.html("密码不正确请按规则输入！")
		$spanpass.css("color","red");
		return false;
	}else{
		$spanpass.html("√")
		$spanpass.css("color","green");
		return true;
	}
}

function checkrePassword() {
	$againpass=$("#againpass").val();
	$password=$("#password").val();
	$spanrepass=$("#spanrepass");
	if($againpass==null ||$againpass==""){
		$spanrepass.html("确认密码不能为空！！");
		$spanrepass.css("color","red");
		return false;
	}
	if($againpass!=$password) {
		$spanrepass.html("两次密码输入不一致！！");
		$spanrepass.css("color", "red");
		return false;
	}else{
		$spanrepass.html("√")
		$spanrepass.css("color","green");
		return true;
	}
}
function checkTel() {
	var $telephone = $("#telephone").val();
	var $spantel = $("#spantel");
	if ($telephone == null || $telephone == "") {
		$spantel.html("手机号码不能为空！！");
		$spantel.css("color", "red");
		return false;
	}
	var regxcode = /^1[34578]\d{9}$/;
	if (regxcode.test($telephone) == false) {
		$spantel.html("号码不正确！");
		$spantel.css("color", "red");
		return false;
	} else {

		$spantel.html("√")
		$spantel.css("color", "green");
		return true;

	}
}