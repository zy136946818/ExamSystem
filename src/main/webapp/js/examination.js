
//获取试卷id
let myData=JSON.parse(localStorage.getItem("examId"));
var getexamid=myData.examId;
var page=0;  //记录页数
var examNum=0; //
console.log(getexamid);
//试卷标题
var examTitle='';
$(function () {
    //加载标题
    loadExamTitle(getexamid);
    //加载试题数量
    loadExamNum(getexamid);
});

//加载试卷标题
function loadExamTitle(getexamid,examTitle) {
    let url='http://localhost:8080/ExamSystem/loadExamTitle/'+getexamid;
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',
        success: function (result) {
            console.log("loadExamTitle======"+result.code);
            examTitle=result.code;
            loadTestOfPaper(getexamid,examTitle,page);

        },
        error:function (result) {
        }
    })

}

//加载试卷标题
function loadExamNum(getexamid) {
    let url='http://localhost:8080/ExamSystem/loadExamNum/'+getexamid;
    $.ajax({
        type:'POST',
        url:url,
        dataType:'json',
        success: function (result) {
            console.log("loadExamNum======"+result);
            examNum=result;
            return examNum;

        },
        error:function (result) {
        }
    })

}



//下一题
function examination_step() {

    page++;
    if (page<examNum){
         console.log("下一题");
         loadExamTitle(getexamid);
    }else {
        alert("人家也是有底线的");
        $("#btnstep").hide();
        page--;
    }
    return page;

}

//上一题
function examination_back() {

    page--;
    if (page>=0){
        console.log("上一题");
        loadExamTitle(getexamid);

    }else {
        alert("已经是第一题了");
        page++;
    }

    return page;



}



//加载试卷试题
function loadTestOfPaper(getexamid,examTitle,page){
    var data={"getexamid":getexamid,"page":page};
    $("#paperContent").text('');
    console.log(getexamid);
    console.log("examTitle2==="+examTitle);
    let url='http://localhost:8080/ExamSystem/fetchTestByPaperId1';

    $.ajax({

        type: 'GET',
        async: 'false',
        url: url,
        dataType: 'json',
        contentType: 'application/json',
        data: data,

        success: function (result) {
            console.log("返回的result===="+result);
            //实现DOM操作，将试题显示在页面上
            //真实的开发场景，不能使用中文来做判断，一定要改成数值

                      if(result){
                          $("#testPaperName").text(examTitle);
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
    let xzModelStr='<div  class="xzModel" style=""><div class="divBody" id="reomvediv"><div class="paperTitle">【选择题】 <span>'+testObj.subjectName+'</span>   (1分)  </div> ' +
        '<div class="paperChoice"> <p>A、'+testObj.solutionA+'</p> <p>B、'+testObj.solutionB+'</p> <p>C、'+testObj.solutionC+'</p> <p>D、'+testObj.solutionD+'</p> </div>'+
        '<div class="paperAnswer"><button onclick="examination_back()">上一题</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;答案：  <span><input type="text" id="insolution"></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div><button onclick="examination_step()" class="stepbtn" id="btnstep">下一题</button></div>'+
        '</div>';
    $("#paperContent").append($(xzModelStr))
}
function pdModel(testObj){
    let pdModelStr='<div  class="pdModel"><div class="divBody" id="reomvediv"><div class="paperTitle">【判断题】 <span>'+testObj.subjectName+'</span>   (1分)</div>'+
        '<div class="paperAnswer"><button onclick="examination_back()">上一题</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;答案：  <span><input type="text"></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><button onclick="examination_step()" class="stepbtn">下一题</button></div>' +
        '</div>';
    $("#paperContent").append($(pdModelStr))
}

