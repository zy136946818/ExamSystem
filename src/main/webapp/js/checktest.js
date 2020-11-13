// function checktest1() {
//     var paramData={};
//     var examName=$("#examName");
//     paramData.examName=$("#examName").val();
//     alert(examName.val())
//
//     let url='http://localhost:8080/ExamSystem/checkTest';
//     $.ajax({
//         type:'POST',
//         url:url,
//         contentType:'application/json;charset=UTF-8',
//         data:JSON.stringify(paramData),
//         dataType:"json",
//
//         success:function(result) {
//             if (result){
//                 alert("添加成功！")
//                 load1()
//             }else {
//                 alert("添加失败！")
//             }
//
//         },
//         error:function(result){
//
//         }
//
//
//     })
//
//
//
// }
//
// function checktest2() {
//     let url='http://localhost:8080/ExamSystem/checkTest';
//     $.ajax({
//         type:'POST',
//         url:url,
//         dataType:'json',// 服务器返回数据JSON
//         contentType:'application/x-www-form-urlencoded;charset=UTF-8',
//         data:$('#myForm').serialize(),
//         success:function(result) {
//             let index=parent.layer.getFrameIndex(window.name);
//             if (result.code>0){
//                 parent.layer.msg("11111")
//                 parent.layer.close(index);
//                 load1()
//             }else {
//                 parent.layer.close(index);
//                 parent.layer.msg("添加失败！")
//             }
//
//         },
//         error:function(result){
//
//         }
//
//     })
//
//
// }

/*function checktest() {
    var paramData={};
    var examName=$("#examName");
    paramData.examName=$("#examName").val();
    alert(examName.val())
    $('#myTable').bootstrapTable('destroy');
    $("#myTable").bootstrapTable({
        method:'POST',
        url:"http://localhost:8080/ExamSystem/checkTest/"+examName.val(),
        striped:true,//设置表格隔行换色
        dataType:'json',//服务器返回数据类型
        singleSelect:true,//设置为true代表禁止多选
        sidePagination: 'client',//设置分布模式， cilent客户端模式 server服务端面模
       /!* data:JSON.stringify(paramData),*!/
        //设置表格的列
        columns:[
            {
                title:'序号',//列名称
                align:'center',//列名称  列数据居中，水平居中
                halign:'center',//垂直居中
                width:'50px',//设置列宽
                //formatter 代表设置数据 如果数据库里面有合适的数据，就不用设置formatter
                formatter:function (value,row,index) {
                    //value 就是获得当前行的当前列数据
                    //row  当前行的数据
                    //index 当前行的索引

                    return index+1

                },

            },
            {
                title: '试卷名称',
                field:'examName',
                align:'center',//列名称  列数据居中，水平居中
                halign:'center',//垂直居中
                width:'50px',//设置列宽


            },
            {
                title: '添加时间',
                field:'createTime',
                align:'center',//列名称  列数据居中，水平居中
                halign:'center',//垂直居中
                width:'50px',//设置列宽
            },
            {
                title: '操作',
                align:'center',//列名称  列数据居中，水平居中
                halign:'center',//垂直居中
                width:'50px',//设置列宽
                formatter:function (value,row,index) {

                    let del='<a href="javascript:void;" onclick="checkpaper(\''+row.examId +'\',\''+row.examName+'\')">添加试题</a>'
                    let start='<a href="javascript:void;" onclick="startExam(\''+row.id+'\')">开启考试</a>'
                    let modify='<a href="javascript:void;" onclick="testModify(\''+row.id+'\',\''+row.examTitle+'\',\''+row.examCategory+'\')">试卷修改</a>'
                    return del+"  |  "+start+"  |  "+modify
                }

            }
        ]

    });
}*/

function checkpaper(id,titleName) {
    // 打开弹出层
    layer.open({
        type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        title: '添加试题',
        maxmin: false,
        shadeClose: false,
        area: ['80%','80%'], // 弹出层的宽高
        content:'exampaper.html',//设置弹出层打开的页面

        //弹出层页面成功打开后的设置
        success:function (layero,index) {
            //success 成功打开子页面，控制子页面查询试卷的试题
            // 获取子页面js文件的固定写法
            var childJSObj=window[layero.find('iframe')[0]['name']]
            console.log(titleName)
            childJSObj.loadTestOfPaper(id,titleName)

        }
    });
}

// // //加载试卷试题
// function loadTestOfPaper(paperId,paperTitle){
//
//     let url='http://localhost:8080/SSMExamSystem/fetchTestByPaperId/'+paperId;
//     $.ajax({
//         type:'POST',
//         url:url,
//         dataType:'json',
//         success: function (result) {
//             console.log(result)
//             //实现DOM操作，将试题显示在页面上
//             //真实的开发场景，不能使用中文来做判断，一定要改成数值
//             if(result){
//                 $("#testPaperName").text(paperTitle)
//                 for(let i in result){
//                     let testObj=result[i];
//                     if(testObj.questionType=='判断题'){
//                         pdModel(testObj)
//                     }else{
//                         xzModel(testObj)
//                     }
//                 }
//             }
//         },
//         error:function (result) {
//         }
//     })
// }
//
// function  xzModel(testObj){
//     let xzModelStr='<div  class="xzModel"><div class="paperTitle">【选择题】 <span>'+testObj.testContent+'</span>   (1分) </div>'+
//         '<div class="paperChoice"> <p>A、'+testObj.answera+'</p> <p>B、'+testObj.answerb+'</p> <p>C、'+testObj.answerc+'</p> <p>D、'+testObj.answerd+'</p> </div>'+
//         '<div class="paperAnswer">正确答案：  <span>'+testObj.answer+'</span> </div>'+
//         '</div>';
//     $("#paperContent").append($(xzModelStr))
// }
// function pdModel(testObj){
//     let pdModelStr='<div  class="pdModel"><div class="paperTitle">【判断题】 <span>'+testObj.testContent+'</span>   (1分) </div>'+
//         '<div class="paperAnswer">正确答案：  <span>'+testObj.answer+'</span></div></div>';
//     $("#paperContent").append($(pdModelStr))
// }
