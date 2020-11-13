package com.neuedu.cn.service.impl;


import com.neuedu.cn.dao.UsersMapper;
import com.neuedu.cn.pojo.*;
import com.neuedu.cn.service.UsersService;
import com.neuedu.cn.util.DateFormatUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersMapper usersMapper;


    //用户注册
    @Override
    public int usersRe(Users users) {

        if(users!=null){
            users.setId(UUID.randomUUID().toString());
            users.setCreate_time(DateFormatUtil.datetoString(new Date()));
            users.setIs_detele(0);
            System.out.println("=========users=========="+users);
            return usersMapper.usersRe(users);
        }else {
            return 0;
        }
    }

    //用户登录
    @Override
    public Map<String,Object> usersLogin(Users users) {
        System.out.println("=============");
        System.out.println("============password========" + users.getPassword());
        System.out.println("===========telephone=========" + users.getTelephone());
        List<Users> list = usersMapper.usersLogin(users);
        System.out.println("list==="+list);
        System.out.println(list.size());
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if (list.size()>0 ) {
            System.out.println("登录成功！");
            resultMap.put("code", 1);

        } else {
            System.out.println("登录失败！");
            resultMap.put("code", 0);
        }
        return  resultMap;
    }

    @Override
    public Map<String,Object> passwordmodify(Users users) {
        System.out.println("================");
        int i=usersMapper.passwordmodify(users);
        System.out.println("=======i========"+i);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if (i>0 ) {
            System.out.println("修改成功！");
            resultMap.put("code", 1);

        } else {
            System.out.println("修改失败！");
            resultMap.put("code", 0);
        }
        return  resultMap;
    }


    //查询试卷
    @Override
    public List<Papper> queryAll() {
        System.out.println("=========queryall=========");
        List<Papper> pappers = usersMapper.queryAll();
        System.out.println(pappers);
        return  pappers;
    }


    //添加试卷
    @Override
    public int testAdd(Papper papper) {
        System.out.println("============testAdd==========");
        papper.setId(UUID.randomUUID().toString());
        papper.setExamStatus("未开启");
        papper.setCreateTime(DateFormatUtil.datetoString(new Date()));
        int i=usersMapper.testAdd(papper);
        return i;

    }

    // 添加试卷分类
    @Override
    public Object addCategory(Category category) {
        System.out.println("=========addCategory==========");
        category.setId(UUID.randomUUID().toString());
        category.setIsDetele(0);
        category.setCreateTime(DateFormatUtil.datetoString(new Date()));
        System.out.println(category);
        int i =usersMapper.addCategory(category);
        Map<String,Object> resultMap=new HashMap<>();
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("添加成功");

        }else {
            resultMap.put("code","0");
            System.out.println("添加失败");
        }
        return resultMap;
    }

    //查询试卷分类
    @Override
    public List<Category> selCategory() {
        System.out.println("=======selCategory========");
        List<Category> listCategory= usersMapper.selCategory();
        System.out.println(listCategory);
        return listCategory;
    }

    // 删除试卷
    @Override
    public Object testDel(Papper papper) {

        System.out.println("========testDel=========");
        System.out.println("papper==="+papper);
        int i=usersMapper.testDel(papper);
        Map<String,Object> resultMap=new HashMap<>();
        //删除后为了显示删除后的结果，将新数据查询返回
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("删除成功");

        }else {
            resultMap.put("message","删除失败");
        }
        return resultMap;
    }

    // 开启试卷
    @Override
    public Map<String,Object> startExam(Papper papper) {
        System.out.println("========startExam=========");
        System.out.println("papper==="+papper);
        int i=usersMapper.startExam(papper);
        System.out.println("i==="+i);
        Map<String,Object> resultMap=new HashMap<>();
        //删除后为了显示删除后的结果，将新数据查询返回
        if(i>0)
        {
            String examCode=UUID.randomUUID().toString();
            papper.setExamCode(examCode);
            int addexamcode=usersMapper.examCodeAddPaperByid(papper);
            System.out.println("add==="+addexamcode);
            if (addexamcode>0){
                resultMap.put("code",examCode);
                System.out.println("开启考试成功");
            }else {
                resultMap.put("code","0");
                System.out.println("开启考试失败");
            }
            return resultMap;
        }else {
            resultMap.put("code","0");
            System.out.println("开启考试失败");
        }
        return resultMap;
    }

    @Override
    public Map<String, Object> closeExam(Papper papper) {
        System.out.println("========closeExam=========");

        int i =usersMapper.closeExam(papper);
        Map<String,Object> resultMap= new HashMap<>();
        if (i>0){
            System.out.println("关闭成功！");
            resultMap.put("code","1");
        }else {
            System.out.println("关闭失败！");
            resultMap.put("code","0");
        }
        return resultMap;

    }

    // 修改试卷
    @Override
    public Object testModify(Papper papper) {

        System.out.println("========testModify=========");
        System.out.println("papper==="+papper);
        int i=usersMapper.testModify(papper);
        System.out.println("i========="+i);
        Map<String,Object> resultMap=new HashMap<>();
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("修改成功");

        }else {
            resultMap.put("code","0");
            System.out.println("修改失败");
        }
        return resultMap;

    }
    //添加选择题
    @Override
    public Object choiseAdd(Bank bank) {
        System.out.println("==================choiseAdd=================");
        bank.setId(UUID.randomUUID().toString());
        bank.setCategoryName("1");
        bank.setIsDetele(0);
        bank.setCreateTime(DateFormatUtil.datetoString(new Date()));
        System.out.println(bank);
        int i= usersMapper.choiseAdd(bank);
        Map<String,Object> resultMap=new HashMap<>();
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("添加成功");

        }else {
            resultMap.put("code","0");
            System.out.println("添加失败");
        }
        return resultMap;
    }

    //添加判断题
    @Override
    public Object decideAdd(Bank bank) {
        System.out.println("==================decideAdd=================");
        bank.setId(UUID.randomUUID().toString());
        bank.setCategoryName("0");
        bank.setIsDetele(0);
        bank.setCreateTime(DateFormatUtil.datetoString(new Date()));
        System.out.println(bank);
        int i= usersMapper.decideAdd(bank);
        Map<String,Object> resultMap=new HashMap<>();
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("添加成功");

        }else {
            resultMap.put("code","0");
            System.out.println("添加失败");
        }
        return resultMap;
    }
    // 查询选择题
    @Override
    public List<Bank> choiseExam(Map<String,Object> categoryName) {
        System.out.println("=========choiseExam=========");
        System.out.println("=======cateName========="+categoryName);
        List<Bank> bankList = usersMapper.choiseExam(categoryName);
        System.out.println(bankList);
        return bankList;
    }
    // 查询判断题
    @Override
    public List<Bank> decideExam(Bank bank) {
        System.out.println("=========decideExam=========");
        List<Bank> bankList = usersMapper.decideExam(bank);
        System.out.println(bankList);
        return  bankList;
    }

//
//    //查询试卷试题  @Override
////    public Object addExam(Subject subject) {
////        subject.setId(UUID.randomUUID().toString());
////        subject.setIsDelete(0);
////        subject.setCreateTime(DateFormatUtil.datetoString(new Date()));
////        System.out.println(subject);
////        int i =usersMapper.addExam(subject);
////        Map<String,Object> resultMap=new HashMap<>();
////        if(i>0)
////        {
////            resultMap.put("code","1");
////            System.out.println("添加成功");
////
////        }else {
////            resultMap.put("code","0");
////            System.out.println("添加失败");
////        }
////        return resultMap;
////
////    }
//    @Override
//    public List<Subject> checkTest(Subject subject) {
//        System.out.println("=========checkTest=========");
//        List<Subject> listsubject = usersMapper.checkTest(subject);
//        return listsubject;
//
//    }
    // 删除选择题
    @Override
    public Object delChoise(Bank bank) {
        System.out.println("========delchoise=========");
        System.out.println("papper==="+ bank);
        int i=usersMapper.delchoise(bank);
        Map<String,Object> resultMap=new HashMap<>();
        //删除后为了显示删除后的结果，将新数据查询返回
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("删除成功");

        }else {
            resultMap.put("code","0");
            System.out.println("删除失败");
        }
        return resultMap;
    }

    //修改选择题
    @Override
    public Object modifychoise(Bank bank) {
        System.out.println("========choise========="+ bank);
        int i=usersMapper.modifychoise(bank);
        Map<String,Object> resultMap=new HashMap<>();
        //删除后为了显示删除后的结果，将新数据查询返回
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("修改成功");

        }else {
            resultMap.put("code","0");
            System.out.println("修改失败");
        }
        return resultMap;
    }

    //删除判断题
    @Override
    public Object deldecide(Decide decide) {
        System.out.println("========decide=========");
        System.out.println("decide==="+decide);
        int i=usersMapper.deldecide(decide);
        Map<String,Object> resultMap=new HashMap<>();
        //删除后为了显示删除后的结果，将新数据查询返回
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("删除成功");

        }else {
            resultMap.put("code","0");
            System.out.println("删除失败");
        }
        return resultMap;
    }

    // 修改判断题
    @Override
    public Object modifydecide(Bank bank) {
        System.out.println("========decide========="+bank);
        int i=usersMapper.modifydecide(bank);
        Map<String,Object> resultMap=new HashMap<>();
        if(i>0)
        {
            resultMap.put("code","1");
            System.out.println("修改成功");

        }else {
            resultMap.put("code","0");
            System.out.println("修改失败");
        }
        return resultMap;
    }

    //查询试卷试题
    @Override
    public List<Subject> fetchTestByPaperId(String id) {
        System.out.println(id);
        return usersMapper.fetchTestByPaperId(id);
    }

    //查询试卷试题
    @Override
    public List<Subject> fetchTestByPaperId1(String getexamid,int page) {
        System.out.println(getexamid);
        System.out.println(page);
        return usersMapper.fetchTestByPaperId1(getexamid,page);


    }

    //查询试卷标题
    @Override
    public Map<String ,Object> loadExamTitle(String id) {
        String result=usersMapper.loadExamTitle(id);
        Map<String,Object> resultMap=new HashMap<>();
        if (result!=null && result!=""){
            resultMap.put("code",result);
        }else {
            resultMap.put("code","0");
        }


        return resultMap;
    }

    @Override
    public int loadExamNum(String getexamid) {
        int i=usersMapper.loadExamNum(getexamid);
        System.out.println("记录个数为："+i);
        return i;
    }


    //将试题添加到试卷
    @Override
    public int addTestOfExam(Subject subject) {

        if(subject!=null){
            try{
            System.out.println("addtestofexam");
            int i= usersMapper.addTestOfExam(subject);}catch(Exception ex){
                ex.printStackTrace();
            }
//            System.out.println("======i========"+i);
            System.out.println("执行完毕");
            return 1;
        }else{
            return 0;

        }
    }

    /*
    * 实现从题库查询试题并添加到试卷
    * */
    @Override
    public int addTestToPaper(List<String> ids, String subjectId) {
        //将ids 中所有的试题数据取出，转存到试卷的试题表中
        boolean mark=true;
        try{
            //试题库中获取试题
            List<Bank> tests = fetchTestByIds(ids);
            for(Bank test:tests){
                Subject subject=new Subject();
//                BeanUtils.copyProperties(test,subject);
                subject.setId(UUID.randomUUID().toString());
                subject.setExamId(subjectId);
                subject.setSubjectId(test.getId());
                subject.setSubjectName(test.getTitleName());
                subject.setSolutionA(test.getSolutionA());
                subject.setSolutionB(test.getSolutionB());
                subject.setSolutionC(test.getSolutionC());
                subject.setSolutionD(test.getSolutionD());
                subject.setSolutionT(test.getSolutionT());
                subject.setExamCategory(test.getCategoryName());
                subject.setCategoryName(test.getExamCategory());
                subject.setIsDelete(0);
                subject.setCreateTime(DateFormatUtil.datetoString(new Date()));
                System.out.println("subject====="+subject);

                addTestOfExam(subject);
                modifyTestAdded(test.getId());
            }
        }catch(Exception ex){
            mark=false;
        }

        if(mark){
            return 1;
        }else{
            return 0;
        }
    }

    @Override
    public List<Bank> fetchTestByIds(List<String> ids) {
        return usersMapper.fetchTestByIds(ids);
    }

    //把添加后的试题is_add修改为1
    @Override
    public int modifyTestAdded(String examId) {
        return usersMapper.modifyTestAdded(examId);
    }

    //给试卷添加试题时查询试题
    @Override
    public List<Bank> Test(Map<String,Object> params) {

        List<Bank> test = usersMapper.Test(params);
        return test;
    }

    //通过试卷试题表id查询题库表id并删除
    @Override
    public Map<String ,Object> subidOfBankById(String id) {
        String bankid= usersMapper.subidOfBankById(id);
        System.out.println("试题ID====="+bankid);
        Map<String,Object> resultMap=new HashMap<>();
        int resule=SubIdmodifyBankIsAdd(bankid);
        System.out.println("resule========="+resule);
        if (resule>0){
            usersMapper.removeOfById(id);
            System.out.println("删除成功");
            resultMap.put("code",1);

        }else {
            System.out.println("删除失败");
            resultMap.put("code",0);
        }

        return resultMap;
    }

    // 通过试卷试题表的id查询出来的题库的试题id修改is_add为0
    @Override
    public int SubIdmodifyBankIsAdd(String bankid) {
        int i= usersMapper.SubIdmodifyBankIsAdd(bankid);
        return i;
    }

    //考生登录
    @Override
    public Map<String, Object> studentLogin(ExamineeInfo examineeInfo) {
        examineeInfo.setId(UUID.randomUUID().toString());
        examineeInfo.setCreateTime(DateFormatUtil.datetoString(new Date()));
        examineeInfo.setIsOver(0);
        examineeInfo.setIsDelete(0);
        // 判断考试状态
        String isExamCode=usersMapper.isExamCode(examineeInfo.getExamCode());
        String examid=usersMapper.selectexamidByExamCode(examineeInfo.getExamCode());
        Map<String,Object> resultMap=new HashMap<>();
        if (isExamCode.equals("已开启")){
            int i=usersMapper.studentLogin(examineeInfo);
            if (i>0){
                System.out.println("登录成功！");
                resultMap.put("code",examid);

            }else {
                System.out.println("登录失败！");
                resultMap.put("code",0);
            }

        }else {
            System.out.println("该试卷还未开启考试");
            resultMap.put("code",0);

        }

        return resultMap;
    }


}



