
function passmodify() {
    var paramData={};
    var telephone=$("#telephone");
   paramData.telephone=$("#telephone").val();
   var password=$("#password");
   paramData.password=$("#password").val();
   var againpass=$("#againpass");
   paramData.againpass=$("#againpass").val();
   alert(telephone.val());
   alert(password.val());
   alert(againpass.val());

   let url='http://localhost:8080/ExamSystem/passwordModify';
   $.ajax({
       type:'POST',
       url:url,
       contentType:'application/json;charset=UTF-8',
       data:JSON.stringify(paramData),
       dataType:"json",

       success:function(result) {
           if (result){
               alert("修改成功！")
               window.location.href='password_3.html'
           }else {
               alert("修改失败！")
           }

           },
       error:function(result){

       }


        })




}