function testModify() {
    let url='http://localhost:8080/ExamSystem/testModify';
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',// 服务器返回数据JSON
        contentType:'application/x-www-form-urlencoded;charset=UTF-8',
        data:$('#myForm').serialize(),
        success:function(result) {
            let index=parent.layer.getFrameIndex(window.name);
            if (result.code>0){
                //添加成功，关闭当前页面
                //子页面本身根据所在父页面及自身所在层次，获取当前弹出层页面的索引 固定写法  子页面
                parent.layer.close(index);
                parent.reload();
                //msg 消息框
                parent.layer.msg("试卷修改成功！")
            }else {
                parent.layer.close(index);
                parent.layer.msg("试卷修改失败！")
            }

        },
        error:function(result){

        }

    })

}

// 页面加载完毕后查询试卷分类
$(function () {
    let url="http://localhost:8080/ExamSystem/selCategory";
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',// 服务器返回数据JSON
        success:function(result) {
            //先清空select下的数据
            $("#examCategory").html()
            for (let i in result){
                let category=result[i];
                $("#examCategory").append('<option value="'+category.examCategory+'">'+category.examCategory+'</option>')
            }

        },
        error:function(result){

        }

    })
})
