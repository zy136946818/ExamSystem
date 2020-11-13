/**
 *  入口文件索引
 *  使用说明：将此文件引入到页面中，可在script标签上定义一个data-main=""属性，
 *  此属性指定页面入口文件。
 *
**/
(function () {

    var entry,
        // 配置所有应用的入口文件，程序将会按照data-main属性中设置的值进行索引查找
        // 如果你在引入此脚本的script标签上没有设置data-main属性，程序将会默认访问home.js文件
        app = {
            home : '{/}home',
            login : '{/}login'
        };

    (function(){

        var dataMain, scripts = document.getElementsByTagName('script'),
            eachScripts = function(el){
                dataMain = el.getAttribute('data-main');
                if(dataMain){
                    entry = dataMain;
                }
            };

        [].slice.call(scripts).forEach(eachScripts);

    })();

    layui.config({
        base: 'assets/lay/modules/'
    }).extend(app).use(entry || 'home');

})();


function UsersLogin() {
    var paramData={};

    var telephone=$("#telephone");
    paramData.telephone=$("#telephone").val();

    var password=$("#password");
    paramData.password=$("#password").val();

    $.ajax({
        url:'http://localhost:8080/ExamSystem/UsersLogin',//ajax请求的路径
        type:'POST', //ajax发送请求的方式
        data:JSON.stringify(paramData),
        dataType:'json',//前端请求的数据为JSON格式
        contentType:'application/json;charset=UTF-8',//设定后台返回的数据为JSON
        success:function (result) {
            //根据result后台返回的结果，来判定是否账号存在，
            if (result.code>0){
                alert("登录成功！");
                window.location="http://localhost:8080/ExamSystem/index1.html";
            }else{
                alert("登录失败！");
                window.location="index.html";
                return  false;

            }
        },
        error:function () {
            alert("登录失败！")
        }
    });


}


function   checkUser() {
    var $telephone=$("#telephone").val();
    var $spanuser=$("#spanuser");
    if($telephone==null || $telephone==""){
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


function  checkYzm(){
    var $captchaImg=$("#captchaImg").val();
    var $captchaImg=$("#captchaImg");
    if($captchaImg==null || $captchaImg==""){
        $spanyzm.html("验证码不能为空！！");
        $spanyzm.css("color","red");
        return false;
    } else{
        $spanyzm.html("√")
        $spanyzm.css("color","green");
        return true;
    }
}

function changeVerifyCode(img){
    img.src="../Kaptcha?" + Math.floor(Math.random() * 100);
}
