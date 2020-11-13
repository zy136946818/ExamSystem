package com.neuedu.cn.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neuedu.cn.pojo.*;

import com.neuedu.cn.service.UsersService;
import com.neuedu.cn.util.PageUtils;
import com.neuedu.cn.util.QueryParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

@Controller
public class UsersController {

    @Autowired
    private UsersService usersServiceimpl;


    // 用户注册
    @RequestMapping(value = "/UsersRegister", consumes = "application/json")
    @ResponseBody
    public Object UsersRegister(@RequestBody Users users)  {

        System.out.println("==========controller  users==========="+users);
        int usersRe=usersServiceimpl.usersRe(users);
        System.out.println("============usersre========"+usersRe);




        return  usersRe;
    }


    //添加试卷
    @RequestMapping(value = "/passwordModify", consumes = "application/json")
    @ResponseBody
    public Map<String, Object> passwordModify(@RequestBody Users users)  {
        System.out.println(" controller  passwordModify");
        System.out.println(users);
        return usersServiceimpl.passwordmodify(users);
    }



    //用户登录
    @RequestMapping(value = "/UsersLogin", consumes = "application/json")
    @ResponseBody
    public Map<String,Object> UsersLogin(@RequestBody Users users)  {

        System.out.println("==========controller  users==========="+users);
        Map<String,Object> usersLogin=usersServiceimpl.usersLogin(users);
        System.out.println("============usersLogin========"+usersLogin);
        return  usersLogin;
    }


    //查询试卷
    @RequestMapping(value = "/SelTest", consumes = "application/json")
    @ResponseBody
    public PageUtils SelTest(@RequestBody(required = false) QueryParam params)  {
        System.out.println("======seltest=====");
        PageHelper.offsetPage((Integer) params.get("offset"), (Integer) params.get("limit"));
        List<Papper> pappers = usersServiceimpl.queryAll();
        PageInfo<Papper> pageInfo = new PageInfo<Papper>(pappers);
        return new PageUtils(pageInfo.getList(), new Long(pageInfo.getTotal()).intValue());
    }

    /*
     * 添加试卷分类
     * */
    @RequestMapping(value = "/addCategory" , consumes = "application/json")
    @ResponseBody
    private Object addCategory(@RequestBody Category category) throws IOException {
        System.out.println("========con  addCategory=======");
        System.out.println(category);
        Object result=usersServiceimpl.addCategory(category);
        System.out.println("result====="+ result);
        return  result;
    }

    /*
    * 查询分类
    * */
    @RequestMapping(value = "selCategory")
    @ResponseBody
    private List<Category> selCategory(Category category) throws IOException {
        System.out.println("========con  selCategory=======");
        List<Category> result=usersServiceimpl.selCategory();
        System.out.println("result====="+ result);
        return  result;

    }




    //添加试卷
    @RequestMapping(value = "/TestAdd", consumes = "application/json")
    @ResponseBody
    public Map<String, Object> TestAdd(@RequestBody Papper papper)  {
        System.out.println(" controller  testadd");
        System.out.println(papper);
        Map<String,Object> resultMap=new HashMap<String ,Object>();
        int result=usersServiceimpl.testAdd(papper);
        if (result>0){
            System.out.println("添加成功！");
            resultMap.put("code",1);
        }else {
            System.out.println("添加失败！");
            resultMap.put("code",0);
        }

        return resultMap;
    }


    /*
     * 删除功能
     * */
    @RequestMapping(value = "/testDel/{id}")
    @ResponseBody
    private Object testDel(@PathVariable("id") String id) throws IOException {

        System.out.println("========con  testDel=======");
        Papper papper=new Papper();
        papper.setId(id);
        Object result=usersServiceimpl.testDel(papper);
        System.out.println("result====="+ result);


        return  result;


    }

    /*
     * 开启考试功能
     * */
    @RequestMapping(value = "/startExam/{id}")
    @ResponseBody
    private Map<String,Object> startExam(@PathVariable("id") String id) throws IOException {

        System.out.println("========con  testDel=======");
        Papper papper=new Papper();
        papper.setId(id);
        Map<String,Object>  result=usersServiceimpl.startExam(papper);
        System.out.println("result====="+ result);
        return  result;

    }


    /*
     * 关闭考试功能
     * */
    @RequestMapping(value = "/closeExam/{id}")
    @ResponseBody
    private Map<String,Object> closeExam(@PathVariable("id") String id) throws IOException {
        System.out.println("========con  closeExam=======");
        Papper papper=new Papper();
        papper.setId(id);
        Map<String,Object>  result=usersServiceimpl.closeExam(papper);
        System.out.println("result====="+ result);
        return  result;

    }


    /*
     * 修改试卷
     * */
    @RequestMapping(value = "/testModify")
    @ResponseBody
    private Object testModify(Papper papper) throws IOException {
        System.out.println("========con  testmodify=======");
        Object result=usersServiceimpl.testModify(papper);
        System.out.println("result====="+ result);
        return  result;

    }

    /*
     * 添加试题选择题
     * */
    @RequestMapping(value = "/choiseAdd")
    @ResponseBody
    private Object choiseAdd(Bank bank) throws IOException {
        System.out.println("========con  choiseAdd=======");
        Object result=usersServiceimpl.choiseAdd(bank);
        System.out.println("result====="+ result);
        return  result;

    }


    /*
     * 添加试题判断题
     * */
    @RequestMapping(value = "/decideAdd")
    @ResponseBody
    private Object decideAdd(Bank bank) throws IOException {
        System.out.println("========con  decideAdd=======");
        Object result=usersServiceimpl.decideAdd(bank);
        System.out.println("result====="+ result);
        return  result;

    }

    //查询试卷选择题
    @RequestMapping(value = "/choiseExam", consumes = "application/json")
    @ResponseBody
    public List<Bank> choiseExam(@RequestBody Map<String,Object> categoryName)  {
        System.out.println("======choiseExam=====");
        return usersServiceimpl.choiseExam(categoryName);
    }

/*    //查询试卷判断题
    @RequestMapping(value = "/decideExam/{categoryName1}", consumes = "application/json")
    @ResponseBody
    public List<Bank> decideExam(@PathVariable("categoryName1") String categoryName1)  {
        System.out.println("======decideExam=====");
        Bank bank=new Bank();
        bank.setExamCategory(categoryName1);
        System.out.println("============"+categoryName1);
        return usersServiceimpl.decideExam(bank);
    }*/



//    @RequestMapping(value = "/addExam")
//    @ResponseBody
//    private Object addExam(Papper papper ,String titleName) throws IOException {
//        System.out.println("========con addExam=======");
//        Subject subject=new Subject();
////        subject.setExamName(papper.getExamTitle());
//        subject.setSubjectName(titleName);
//        System.out.println(titleName);
//        subject.setSubjectId(papper.getId());
//        Object result= usersServiceimpl.addExam(subject);
//        return  result;
//
//    }

//    /*
//     * 添加试题选择题
//     * */
//    @RequestMapping(value = "/checkTest/{examName}", consumes = "application/json")
//    @ResponseBody
//    private List<Bank> checkTest(@PathVariable("examName") String examName ) throws IOException {
//        System.out.println("========con  checkTest=======");
//        Bank bank=new Bank();
//        System.out.println(examName);
//        bank.setTitleName(examName);
//        return  usersServiceimpl.checkTest(bank);
//
//    }


    /*
     * 删除试题功能
     * */
    @RequestMapping(value = "/DelChoise/{id}")
    @ResponseBody
    private Object DelChoise(@PathVariable("id") String id) throws IOException {
        System.out.println("========con  DelChoise=======");
        Bank bank =new Bank();
        bank.setId(id);
        Object result=usersServiceimpl.delChoise(bank);
        System.out.println("result====="+ result);


        return  result;


    }

    /*
     * 修改试题选择题
     * */
    @RequestMapping(value = "/modifychoise")
    @ResponseBody
    private Object modifychoise(Bank bank) throws IOException {
        System.out.println("========con  modifychoise=======");
        Object result=usersServiceimpl.modifychoise(bank);
        System.out.println("result====="+ result);
        return  result;

    }


    /*
     * 删除试题功能判断题
     * */
    @RequestMapping(value = "/deldecice/{id}")
    @ResponseBody
    private Object deldecice(@PathVariable("id") String id) throws IOException {
        System.out.println("========con  deldecide=======");
        Decide decide=new Decide();
        decide.setId(id);
        Object result=usersServiceimpl.deldecide(decide);
        System.out.println("result====="+ result);
        return  result;


    }

    /*
     * 修改试题判断题
     * */
    @RequestMapping(value = "/modifydecide")
    @ResponseBody
    private Object modifydecide(Bank bank) throws IOException {
        System.out.println("========con  modifydecide=======");
        Object result=usersServiceimpl.modifydecide(bank);
        System.out.println("result====="+ result);
        return  result;

    }

    //查询试卷
    @RequestMapping(value = "/fetchTestByPaperId/{id}")
    @ResponseBody
    private List<Subject> fetchTestByPaperId(@PathVariable("id") String id){
        System.out.println("id====="+id);
        List<Subject> subjects = usersServiceimpl.fetchTestByPaperId(id);
        return subjects;
    }


    //查询试卷
    @RequestMapping(value = "/fetchTestByPaperId1")
    @ResponseBody
    private List<Subject> fetchTestByPaperId1(@RequestParam String getexamid, @RequestParam int page){
        System.out.println("==================");
        System.out.println("id====="+getexamid);
        System.out.println("page====="+page);
        List<Subject> subjects = usersServiceimpl.fetchTestByPaperId1(getexamid,page);
        return subjects;
    }

    //加载试卷标题
    @RequestMapping(value = "/loadExamTitle/{id}")
    @ResponseBody
    private Map<String ,Object> loadExamTitle(@PathVariable("id") String id){
        Map<String ,Object> examTitle = usersServiceimpl.loadExamTitle(id);
        return examTitle;
    }

    //加载试卷试题个数
    @RequestMapping(value = "/loadExamNum/{getexamid}")
    @ResponseBody
    private int loadExamNum(@PathVariable("getexamid") String getexamid){
        int num = usersServiceimpl.loadExamNum(getexamid);
        return num;
    }

    //查询题库试卷添加到试卷
    @RequestMapping(value = "/addTestToPaper",consumes = "application/json")
    @ResponseBody
    private Map<String ,Object> addTestToPaper(@RequestBody Map<String,Object> dataInfo){

        Map<String,Object> resultMap=new HashMap<String,Object>();
        List<String> ids= (List<String>) dataInfo.get("examId");
        String subjectId= (String) dataInfo.get("subjectId");
        int result=usersServiceimpl.addTestToPaper(ids,subjectId);
        System.out.println("result======"+result);
        resultMap.put("code",result);
        return resultMap;
    }


    //获取试题信息
    @RequestMapping(value = "/Test1", consumes = "application/json")
    @ResponseBody
    private List<Bank> Test1(@RequestBody Map<String,Object> params) {
        System.out.println(params);
        List<Bank> test = usersServiceimpl.Test(params);

        System.out.println("test=========="+test);
        return test;
    }

    //通过试卷试题表id查询题库表id并删除
    @RequestMapping(value = "/subidOfBankById/{id}")
    @ResponseBody
    private Map<String ,Object>  subidOfBankById(@PathVariable("id") String id){
        return   usersServiceimpl.subidOfBankById(id);
    }

    /*
    * 考生登录
    * */
    @RequestMapping(value = "/StudentLogin")
    @ResponseBody
    private Map<String,Object> StudentLogin(ExamineeInfo examineeInfo) throws IOException {
        System.out.println("========con  StudentLogin=======");
        System.out.println(examineeInfo);
        Map<String,Object> resultMap=usersServiceimpl.studentLogin(examineeInfo);
        return  resultMap;

    }



}
