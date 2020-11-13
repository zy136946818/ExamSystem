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



function addtype() {

    var paramData={};
    var categoryName=$("#categoryName");
    paramData.categoryName=$("#categoryName").val();
    switch (categoryName.val()) {
        case "单项选择题":
            layer.open({
                type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                title: '添加选择题',
                maxmin: false,
                shadeClose: false,
                area: ['80%','80%'], // 弹出层的宽高
                content:'choiseadd.html'//设置弹出层打开的页面

            });
            break;
        case "判断题":
            layer.open({
                type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                title: '添加判断题',
                maxmin: false,
                shadeClose: false,
                area: ['80%','80%'], // 弹出层的宽高
                content:'decideadd.html'//设置弹出层打开的页面

            });
            break;
        default:
            alert("暂无该题型")
            break;

    }


}

function choiseAdd() {
    let url='http://localhost:8080/ExamSystem/choiseAdd';
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',// 服务器返回数据JSON
        contentType:'application/x-www-form-urlencoded;charset=UTF-8',
        data:$('#myForm').serialize(),
        success:function(result) {
            let index=parent.layer.getFrameIndex(window.name);
            if (result.code>0){

                parent.layer.close(index);
                parent.layer.msg("添加成功！")
            }else {
                parent.layer.close(index);
                parent.layer.msg("添加失败！")
            }

        },
        error:function(result){

        }

    })


}

function decideAdd() {
    let url='http://localhost:8080/ExamSystem/decideAdd';
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',// 服务器返回数据JSON
        contentType:'application/x-www-form-urlencoded;charset=UTF-8',
        data:$('#myForm').serialize(),
        success:function(result) {
            let index=parent.layer.getFrameIndex(window.name);
            if (result.code>0){

                parent.layer.close(index);
                parent.layer.msg("添加成功！")
            }else {
                parent.layer.close(index);
                parent.layer.msg("添加失败！")
            }

        },
        error:function(result){

        }

    })


}