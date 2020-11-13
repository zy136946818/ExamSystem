// 页面加载完毕后查询试卷分类
$(function () {
    loadcategoryname();
    //loadData();
});

function loadcategoryname() {
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
}


function addTest2PaperFun(){
    let allData=$('#myTable').bootstrapTable("getSelections");
    //我只需要拿到选中的试题的ID，到后台后台进行数据转存
    let examId=[];
    let dataInfo={};
    for(let i in allData){
        let testInfo=allData[i]
        examId.push(testInfo.id)
    }

    dataInfo.examId=examId;
    dataInfo.subjectId=$("#subjectId").val();

    let url='http://localhost:8080/ExamSystem/addTestToPaper';
    $.ajax({
        type:'POST',
        url:url,
        data:JSON.stringify(dataInfo),
        contentType:"application/json",
        success: function (result) {
            var index=parent.layer.getFrameIndex(window.name);
            alert(result.code)
            if(result.code>0){

                parent.layer.msg("试题添加成功");
                parent.layer.close(index)
                parent.loadTestOfPaper($("#subjectId").val(),$("#subjectTitle").val())
            }else{
                parent.layer.msg("添加失败");
                parent.layer.close(index)
            }

        },
        error:function (result) {
        }
    })
}

function selectData() {
    $("#myTable").bootstrapTable("refresh");
    loadData()
}

function loadData(){

    let url="http://localhost:8080/ExamSystem/Test1";
    $("#myTable").bootstrapTable({
        method:'POST',
        url:url,
        striped: true,//设置表格隔行换色效果
        dataType:'json',//服务器返回数据的类型
        singleSelect:false,//设置为true 代表禁止多选
        sidePagination:'client',//设置分页模式，client 客户端模式 server 服务端模式（client 不分页，

        //向后台传参数
        queryParams:function(params){
            var paramsJSON={
                examCategory:$("#examCategory").val(),
                categoryName:$("#categoryName").val()

            }
            return JSON.stringify(paramsJSON)
        },

        //设置表格的列
        columns:[

            {
                title: '题干',
                field:'titleName',//和后台pojo属性进行对应
                align:'center',//列名称，列数据居中 水平居中
                halign:'center',//垂直居中
                width:'50px',//设置列宽
            },
            {
                title:'全选',
                checkbox:true
            }


        ]
    })
}