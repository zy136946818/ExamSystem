
$(function () {
    $("#addTest2Paper").click(function () {
        //打开窗口
        layer.open({
            type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
            title: '添加试题',
            maxmin: false,
            shadeClose: false,//点击其他位置不关闭弹窗
            area: ['80%', '80%'],//弹出层的宽高
            content: 'testOfExam.html',//设置弹出层打开的页面
            success: function (layero, index) {
                // //success  成功打开子页面   控制子页面查询试卷的试题
                // //在这里调用子页面的代码去查询试题
                //
                // //获取子页面js文件的固定写法
                // var childJSObj = window[layero.find('iframe')[0]['name']];
                // childJSObj.loadTestOfPaper(id, title)
                let childBody=layer.getChildFrame('body',index);
                $(childBody).find("#subjectId").val(topSubjectId)
                $(childBody).find("#subjectTitle").val(topSubjectTitle)
            }
        })


    })





})

var topSubjectId;
var topSubjectTitle;
//加载试卷试题
function loadTestOfPaper(examId,examTitle){
    topSubjectId=examId;
    topSubjectTitle=examTitle;
    $("#paperContent").text('');
    console.log(examId);
    console.log(examTitle);
    let url='http://localhost:8080/ExamSystem/fetchTestByPaperId/'+examId;
    console.log(url);
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',
        success: function (result) {
            //实现DOM操作，将试题显示在页面上
            //真实的开发场景，不能使用中文来做判断，一定要改成数值
            if(result){
                $("#testPaperName").text(examTitle)
                for(let i in result){
                    let testObj=result[i];
                    if(testObj.examCategory=='0'){
                        pdModel(testObj)
                    }else{
                        xzModel(testObj)
                    }
                }
            }else {
                alert("人家也是有底线的")
            }
        },
        error:function (result) {
        }
    })
}

function  xzModel(testObj){
    let xzModelStr='<div  class="xzModel"><div class="paperTitle">【选择题】 <span>'+testObj.subjectName+'</span>   (1分) <div style="float: right"><button onclick="reomveTestofPaper(\''+testObj.id+'\',this)">删除</button></div> </div> ' +
        '<div class="paperChoice"> <p>A、'+testObj.solutionA+'</p> <p>B、'+testObj.solutionB+'</p> <p>C、'+testObj.solutionC+'</p> <p>D、'+testObj.solutionD+'</p> </div>'+
        '<div class="paperAnswer">正确答案：  <span>'+testObj.solutionT+'</span> </div>'+
        '</div>';
    $("#paperContent").append($(xzModelStr))
}
function pdModel(testObj){
    let pdModelStr='<div  class="pdModel"><div class="paperTitle">【判断题】 <span>'+testObj.subjectName+'</span>   (1分)  <div style="float: right"><button onclick="reomveTestofPaper(\''+testObj.id+'\',this)">删除</button></div></div>'+
        '<div class="paperAnswer">正确答案：  <span>'+testObj.solutionT+'</span></div></div>';
    $("#paperContent").append($(pdModelStr))
}


function reomveTestofPaper(id,removeBtn) {
    console.log(id);
    console.log(removeBtn);
    let url='http://localhost:8080/ExamSystem/subidOfBankById/'+id;
    console.log(url);
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',
        success: function (result) {
            console.log(result.code);
            //实现DOM操作，将试题显示在页面上
            //真实的开发场景，不能使用中文来做判断，一定要改成数值
            if(result.code>0){
                $(removeBtn).parent().parent().remove();
                loadTestOfPaper(topSubjectId,topSubjectTitle);
                alert("删除成功");

            }
        },
        error:function (result) {
        }
    })


}
