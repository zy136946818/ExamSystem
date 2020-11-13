$(function(){
    $("#startKS").click(function(){
        studentLogin();
    })
});





function studentLogin() {

    let url='http://localhost:8080/ExamSystem/StudentLogin';
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',// 服务器返回数据JSON
        contentType:'application/x-www-form-urlencoded;charset=UTF-8',
        data:$('#myForm').serialize(),
        success:function(result) {
            console.log(result.code);
            if (result.code != 0){
                window.confirm("登录成功！");
                let myData={};
                myData.examId=result.code;
                localStorage.setItem("examId",JSON.stringify(myData));
                window.location.href="examination.html";
            }
            else {
             alert("登录失败！")
            }

        },
        error:function(result){

        }

    })






}