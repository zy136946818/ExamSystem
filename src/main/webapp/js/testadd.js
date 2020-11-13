


function saveData() {

    var paramData={};
    var examTitle=$("#examTitle");
    paramData.examTitle=$("#examTitle").val();

    var examCategory=$("#examCategory");
    paramData.examCategory=$("#examCategory").val();
    let url='http://localhost:8080/ExamSystem/TestAdd';
    $.ajax({
        type:'POST',
        url:url,
        contentType:'application/json;charset=UTF-8',
        data:JSON.stringify(paramData),
        dataType:"json",

        success:function(result) {
            if (result.code>0){
                alert("添加成功！")
                window.location="http://localhost:8080/ExamSystem/html/testpapper.html";
            }else {
                alert("添加失败！")
            }

        },
        error:function(result){

        }





    })

}