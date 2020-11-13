/*function checkexam() {
    var paramData={};
    var categoryName1=$("#categoryName1");
    paramData.categoryName1=$("#categoryName1").val();
    switch (categoryName1.val()) {
        case "单项选择题":
            reload();
            $('#myTable').bootstrapTable('destroy');
            $("#myTable").bootstrapTable({
                method:'POST',
                url:"http://localhost:8080/ExamSystem/choiseExam/"+categoryName1.val(),
                striped:true,//设置表格隔行换色
                dataType:'json',//服务器返回数据类型
                singleSelect:true,//设置为true代表禁止多选
                sidePagination: 'client',//设置分布模式， cilent客户端模式 server服务端面模
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
                        title: '题干',
                        field:'titleName',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽


                    },
                    {
                        title: '选项A',
                        field:'solutionA',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽

                    },
                    {
                        title: '选项B',
                        field:'solutionB',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽
                    },
                    {
                        title: '选项C',
                        field:'solutionC',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽
                    },
                    {
                        title: '选项D',
                        field:'solutionD',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽
                    },
                    {
                        title: '正确答案',
                        field:'solutionT',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽
                    },
                    {
                        title: '所属题库',
                        field:'examCategory',
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

                            let del='<a href="javascript:void;" onclick="delchoise(\''+row.id +'\')">删除</a>'
                            let modify='<a href="javascript:void;" onclick="modifychoise(\''+row.id+'\',\''+row.titleName+'\',\''+row.solutionA+'\',\''+row.solutionB+'\',\''+row.solutionC+'\',\''+row.solutionD+'\',\''+row.solutionT+'\',\''+row.examCategory+'\')">修改</a>'
                            return del+"  |  "+modify
                        }

                    }
                ]

            });
            return true;
        case "判断题":
            reload();
            //bt加载数据的代码
            //获取页面表格标签，并生成bt表格对象
            //bt表格对象设置表格参数，以JSON格式来设置 (key:value)
            $('#myTable').bootstrapTable('destroy');
            $("#myTable").bootstrapTable({
                method:'POST',
                url:"http://localhost:8080/ExamSystem/decideExam/"+categoryName1.val(),
                striped:true,//设置表格隔行换色
                dataType:'json',//服务器返回数据类型
                singleSelect:true,//设置为true代表禁止多选
                sidePagination: 'client',//设置分布模式， cilent客户端模式 server服务端面模
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
                        title: '题干',
                        field:'titleName',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽

                    },
                    {
                        title: '答题人答案',
                        field:'solutionA',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽

                    },
                    {
                        title: '正确答案',
                        field:'solutionT',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽
                    },
                    {
                        title: '所属题库',
                        field:'examCategory',
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

                            let del='<a href="javascript:void;" onclick="deldecide(\''+row.id +'\')">删除</a>'
                            let modify='<a href="javascript:void;" onclick="modifydecide(\''+row.id+'\',\''+row.titleName+'\',\''+row.solution+'\',\''+row.solutionT+'\',\''+row.examCategory+'\')">修改</a>'
                            return del+"  |  "+modify

                        }



                    }


                ]

            });
            return true;
        default:
            alert("暂无该题型");

            break;

    }

}*/

function checkexam() {
    $('#myTable').bootstrapTable('destroy');
    $("#myTable").bootstrapTable({
                method:'POST',
                url:"http://localhost:8080/ExamSystem/choiseExam",
                striped:true,//设置表格隔行换色
                dataType:'json',//服务器返回数据类型
                singleSelect:false,//设置为true代表禁止多选
                sidePagination: 'client',//设置分布模式， cilent客户端模式 server服务端面模
                  //向后台传参数
                queryParams:function(params){
                    var paramsJSON={
                     categoryName:$("#categoryName1").val(),
                    };
                 return JSON.stringify(paramsJSON)
        },

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
                        title: '题干',
                        field:'titleName',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽


                    },
                    {
                        title: '正确答案',
                        field:'solutionT',
                        align:'center',//列名称  列数据居中，水平居中
                        halign:'center',//垂直居中
                        width:'50px',//设置列宽
                    },
                    {
                        title: '所属题库',
                        field:'examCategory',
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

                            let del='<a href="javascript:void;" onclick="delchoise(\''+row.id +'\')">删除</a>'
                            let modify='<a href="javascript:void;" onclick="modifyChoiseOrDecide(\''+row.id+'\',\''+row.titleName+'\',\''+row.solutionA+'\',\''+row.solutionB+'\',\''+row.solutionC+'\',\''+row.solutionD+'\',\''+row.solutionT+'\',\''+row.examCategory+'\',\''+row.categoryName+'\')">修改</a>'
                            return del+"  |  "+modify
                        }

                    }
                ]

            });

}

/*
* 刷新表格
* */
function reload() {
    $("#myTable").bootstrapTable('refresh');
}


/*
* 弹出层添加页面
* */
function addExam(id,titleName) {
    alert(id)
    alert(titleName)
    // 打开弹出层
    layer.open({
        type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        title: '添加试题',
        maxmin: false,
        shadeClose: false,
        area: ['80%','80%'], // 弹出层的宽高
        content:'addexam.html',//设置弹出层打开的页面

        success:function (layero,index) {
            //当前是表格页面 修改是表格的子页面 父页面js代码中将数据传递给子页面
            //获取子页面HTML对象
            let chileBody= layer.getChildFrame('body',index);
            $(chileBody).find("input[name=id]").val(id)
            $(chileBody).find("input[name=titleName]").val(titleName)


        }

    });

}


// 添加试卷
function addExam1() {
        var msg = "您真的确定要添加该题吗？";
        if(confirm(msg)==true){
                $.ajax({
                  type:'POST',
                  url:"http://localhost:8080/ExamSystem/addExam",
                  dataType:'json',// 服务器返回数据JSON
                  contentType:'application/x-www-form-urlencoded;charset=UTF-8',
                  data:$('#myForm').serialize(),
                  success:function(result) {
                      let index=parent.layer.getFrameIndex(window.name);
                      if (result.code>0){
                          //添加成功，关闭当前页面
                          //子页面本身根据所在父页面及自身所在层次，获取当前弹出层页面的索引 固定写法  子页面
                          parent.layer.close(index);
                          //msg 消息框
                          parent.layer.msg("添加成功！")
                      }else {
                          parent.layer.close(index);
                          parent.layer.msg("添加失败！")
                      }

                  },
                  error:function(result){
                  }
              })


    } else{
    alert("该记录不存在");
}



}






function addtype() {
    var paramData={};
    var categoryName=$("#categoryName");
    paramData.categoryName=$("#categoryName").val();
    switch (categoryName.val()) {
        case "1":
            layer.open({
                type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                title: '添加选择题',
                maxmin: false,
                shadeClose: false,
                area: ['80%','80%'], // 弹出层的宽高
                content:'choiseadd.html'//设置弹出层打开的页面
            });
            break;
        case "0":
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


// 删除选择题
function delchoise(id) {
    if (id) {
        var msg = "您真的确定要删除吗？";
        if(confirm(msg)==true){
            let url = "http://localhost:8080/ExamSystem/DelChoise/" + id
            $.ajax({
                url: url,
                contentType: 'application/json;charset=UTF-8',//设定后台返回的数据为JSON*!/
                type: 'POST', //ajax发送请求的方式
                success: function (result) {
                    //根据result后台返回的结果，来判定是否账号存在，
                    console.log(result)
                    if (result.code>0) {
                        alert("删除成功！")
                        reload()
                    }else {
                        alert("删除失败！")
                    }
                },
                error: function (result) {
                    alert("删除失败！")
                }
            })
        }



    } else {
        alert("该记录不存在");
    }
}

//用来判断修改的是选择题型还是判断题
function modifyChoiseOrDecide(id,titleName,solutionA,solutionB,solutionC,solutionD,solutionT,examCategory,categoryName) {
    if (categoryName == "1"){
        modifychoise(id,titleName,solutionA,solutionB,solutionC,solutionD,solutionT,examCategory,categoryName)
    }else {
        modifydecide(id,titleName,solutionA,solutionT,examCategory);
    }

}

//修改选择题
function modifychoise(id,titleName,solutionA,solutionB,solutionC,solutionD,solutionT,examCategory,categoryName) {

    // 打开弹出层
    layer.open({
        type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        title: '试卷修改',
        maxmin: false,
        shadeClose: false,
        area: ['80%','80%'], // 弹出层的宽高
        content:'choisemodify.html',//设置弹出层打开的页面

        //弹出层页面成功打开后的设置
        success:function (layero,index) {
            //当前是表格页面 修改是表格的子页面 父页面js代码中将数据传递给子页面
            //获取子页面HTML对象
            let chileBody= layer.getChildFrame('body',index);
            $(chileBody).find("input[name=id]").val(id);
            $(chileBody).find("input[name=titleName]").val(titleName);
            $(chileBody).find('input[name=solutionA]').val(solutionA);
            $(chileBody).find('input[name=solutionB]').val(solutionB);
            $(chileBody).find('input[name=solutionC]').val(solutionC);
            $(chileBody).find('input[name=solutionD]').val(solutionD);
            $(chileBody).find('input[name=solutionT]').each(function () {
                if($(this).val() == solutionT){
                    $(this).prop("checked",true)
                }
            });
            $(chileBody).find('select[name=examCategory]').val(examCategory)

            //获取子页面js对象

        }
    });




}

function modify() {
    let url='http://localhost:8080/ExamSystem/modifychoise';
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
                parent.layer.msg("修改成功！")
            }else {
                parent.layer.close(index);
                parent.layer.msg("修改失败！")
            }

        },
        error:function(result){

        }

    })


}

// 删除判断题
function deldecide(id) {
    if (id) {
        var msg = "您真的确定要删除吗？";
        if(confirm(msg)==true){
            let url = "http://localhost:8080/ExamSystem/deldecice/" + id
            $.ajax({
                url: url,
                contentType: 'application/json;charset=UTF-8',//设定后台返回的数据为JSON*!/
                type: 'POST', //ajax发送请求的方式
                success: function (result) {
                    //根据result后台返回的结果，来判定是否账号存在，
                    console.log(result)
                    if (result.code>0) {
                        alert("删除成功！")
                        reload()
                    }else {
                        alert("删除失败！")
                    }
                },
                error: function (result) {
                    alert("删除失败！")
                }
            })
        }



    } else {
        alert("该记录不存在");
    }
}






//修改判断题
function modifydecide(id,titleName,solutionA,solutionT,examCategory) {

    // 打开弹出层
    layer.open({
        type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        title: '试卷修改',
        maxmin: false,
        shadeClose: false,
        area: ['80%','80%'], // 弹出层的宽高
        content:'decidemodify.html',//设置弹出层打开的页面

        //弹出层页面成功打开后的设置
        success:function (layero,index) {
            //当前是表格页面 修改是表格的子页面 父页面js代码中将数据传递给子页面
            //获取子页面HTML对象
            let chileBody= layer.getChildFrame('body',index);
            $(chileBody).find("input[name=id]").val(id);
            $(chileBody).find("input[name=titleName]").val(titleName);
            $(chileBody).find("input[name=solutionA]").each(function () {
                if($(this).val() == solutionA){
                    $(this).prop("checked",true)
                }
            });
            $(chileBody).find('input[name=solutionT]').each(function () {
                if($(this).val() == solutionT){
                    $(this).prop("checked",true)
                }
            });
            $(chileBody).find('select[name=examCategory]').val(examCategory)

            //获取子页面js对象

        }
    });




}


function modifyd() {
    let url='http://localhost:8080/ExamSystem/modifydecide';
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',// 服务器返回数据JSON
        contentType:'application/x-www-form-urlencoded;charset=UTF-8',
        data:$('#myForm').serialize(),
        success:function(result) {
            let index=parent.layer.getFrameIndex(window.name);
            console.log(result);
            if (result.code>0){
                //添加成功，关闭当前页面
                //子页面本身根据所在父页面及自身所在层次，获取当前弹出层页面的索引 固定写法  子页面
                parent.layer.close(index);
                parent.reload();
                parent.layer.msg("修改成功！")
            }else {
                parent.layer.close(index);
                parent.layer.msg("修改失败！")
            }

        },
        error:function(result){

        }

    })


}

