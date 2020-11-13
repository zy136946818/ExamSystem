$(function () {

    load()
})

/*
* 刷新表格
* */
function reload() {
    $("#myTable").bootstrapTable('refresh');
}


/*
* 加载数据
* */

function load() {

    let url="http://localhost:8080/ExamSystem/SelTest";
    //bt加载数据的代码
    //获取页面表格标签，并生成bt表格对象
    //bt表格对象设置表格参数，以JSON格式来设置 (key:value)
    $("#myTable").bootstrapTable({
        method:'POST',
        url:url,
        striped:true,//设置表格隔行换色
        dataType:'json',//服务器返回数据类型
        pagination:true,  //开启分页
        singleSelect:true,//设置为true代表禁止多选
        //是否显示切换按钮
        showToggle: true,
        //是否启用全匹配搜索，否则为模糊搜索
        strictSearch: true,
        //开启搜索
        search: true,
        //刷新按钮
        //showRefresh: true,
        pageNumber:1,// 设置起始页页码
        pageSize:5,//设置每页显示多少条数据
        pageList:[5,10,20],
        sidePagination: 'server',//设置分布模式， cilent客户端模式 server服务端模式   如果设置分页，必须设置成server
        //设置表格的列
        queryParams:function(params){

            var paramsJSON={
                limit:params.limit, // 每页显示数量
                offset:params.offset, //SQL语句起始索引
            }
            return JSON.stringify(paramsJSON)
        },
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
                title: '试卷标题',
                field:'examTitle',
                align:'center',//列名称  列数据居中，水平居中
                halign:'center',//垂直居中
                width:'50px',//设置列宽


            },
            {
                title: '试卷状态',
                field:'examStatus',
                align:'center',//列名称  列数据居中，水平居中
                halign:'center',//垂直居中
                width:'50px',//设置列宽

            },
            {
                title: '试卷分类',
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

                    let add='<a href="javascript:void;" onclick="checkpaper(\''+row.id +'\',\''+row.examTitle+'\')">添加试题</a>';
                    let del='<a href="javascript:void;" onclick="testDel(\''+row.id +'\')">删除试卷</a>';
                    let start;
                    if(row.examStatus=="已开启"){
                        start='<a href="javascript:void;" onclick="closeExam(\''+row.id+'\')">关闭考试</a>';
                    }else {
                        start='<a href="javascript:void;" onclick="startExam(\''+row.id+'\')">开启考试</a>';
                    }
                    /* let start='<a href="javascript:void;" onclick="startExam(\''+row.id+'\')"></a>';*/
                    let modify='<a href="javascript:void;" onclick="testModify(\''+row.id+'\',\''+row.examTitle+'\',\''+row.examCategory+'\')">试卷修改</a>'
                    return add+"  |  " + del+"  |  "+ start+"  |  "+modify

                }



            }


        ]

    })

}

/*
* 弹出层添加页面
* */
function addCategory(){
    // 打开弹出层
    layer.open({
        type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        title: '试卷分类添加',
        maxmin: false,
        shadeClose: false,
        area: ['80%','80%'], // 弹出层的宽高
        content:'addcategory.html',//设置弹出层打开的页面

    });

}

function addCategory1() {
    var paramData={};
    var examCategory=$("#examCategory");
    paramData.examCategory=$("#examCategory").val();
    alert(examCategory.val())

    let url="http://localhost:8080/ExamSystem/addCategory";
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',// 服务器返回数据JSON
        contentType:'application/json;charset=UTF-8',
        data:JSON.stringify(paramData),
        success:function(result) {
            let index=parent.layer.getFrameIndex(window.name);
            if (result.code>0){
                //添加成功，关闭当前页面
                //子页面本身根据所在父页面及自身所在层次，获取当前弹出层页面的索引 固定写法  子页面
                parent.layer.close(index);
                //msg 消息框
                parent.layer.msg("添加分类成功！")
            }else {
                parent.layer.close(index);
                parent.layer.msg("添加分类失败！")
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


/*
* 弹出层添加试卷页面
* */
function addExam(){
    // 打开弹出层
    layer.open({
        type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        title: '试卷添加',
        maxmin: false,
        shadeClose: false,
        area: ['80%','80%'], // 弹出层的宽高
        content:'testadd.html',//设置弹出层打开的页面

    });

}
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
            let index=parent.layer.getFrameIndex(window.name);
            if (result.code>0){
                parent.layer.close(index);
                parent.layer.msg("添加成功！")
                parent.location="testpapper.html"
            }else {
                parent.layer.close(index);
                parent.layer.msg("添加失败！")
            }

        },
        error:function(result){

        }





    })

}



// 删除
function testDel(id) {
    if (id) {
        var msg = "您真的确定要删除吗？";
        if(confirm(msg)==true){
            let url = "http://localhost:8080/ExamSystem/testDel/" + id
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

//开启考试
function startExam(id) {
    if (id) {
        var msg = "您真的确定要开启考试吗？";
        if(confirm(msg)==true){
            let url = "http://localhost:8080/ExamSystem/startExam/" + id;
            $.ajax({
                url: url,
                contentType: 'application/json;charset=UTF-8',//设定后台返回的数据为JSON*!/
                type: 'POST', //ajax发送请求的方式
                success: function (result) {
                     console.log(result)
                    if (result.code != "0") {
                        alert("开启考试成功！");
                        window.confirm("请牢记考试码："+result.code);
                        reload();
                      /*  window.location="http://localhost:8080/ExamSystem/html/studentLogin.html";*/
                    }else {
                        alert("开启考试失败！")
                    }
                },
                error: function (result) {
                    alert("开启考试失败！")
                }
            })
        }



    } else {
        alert("该记录不存在");
    }
}

//开启考试
function closeExam(id) {
    if (id) {
        var msg = "您真的确定要关闭考试吗？";
        if(confirm(msg)==true){
            let url = "http://localhost:8080/ExamSystem/closeExam/" + id;
            $.ajax({
                url: url,
                contentType: 'application/json;charset=UTF-8',//设定后台返回的数据为JSON*!/
                type: 'POST', //ajax发送请求的方式
                success: function (result) {
                    console.log(result)
                    if (result.code != "0") {
                        alert("关闭考试成功！");
                        reload();
                    }else {
                        alert("关闭考试失败！")
                    }
                },
                error: function (result) {
                    alert("关闭考试失败！")
                }
            })
        }



    } else {
        alert("该记录不存在");
    }
}


function testModify(id,examTitle,examCategory) {

    // 打开弹出层
    layer.open({
        type: 2,//可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        title: '试卷修改',
        maxmin: false,
        shadeClose: false,
        area: ['80%','80%'], // 弹出层的宽高
        content:'testmodify.html',//设置弹出层打开的页面

        //弹出层页面成功打开后的设置
        success:function (layero,index) {
            //当前是表格页面 修改是表格的子页面 父页面js代码中将数据传递给子页面
            //获取子页面HTML对象
            let chileBody= layer.getChildFrame('body',index);
            $(chileBody).find("input[name=id]").val(id)
            $(chileBody).find("input[name=examTitle]").val(examTitle)
            $(chileBody).find('select[name=examCategory]').val(examCategory)

            //获取子页面js对象

        }
    });




}



