package com.neuedu.cn.service;

import com.neuedu.cn.pojo.*;

import java.util.List;
import java.util.Map;


public interface UsersService {

    //注册
   int usersRe(Users users);

   //登录
   Map<String,Object> usersLogin (Users users);

   Map<String,Object> passwordmodify(Users users);

   //查询试卷
   List<Papper> queryAll();

   //试卷添加
   int testAdd(Papper papper);

   //添加试卷分类
   Object addCategory (Category category);

   //查询试卷分类
   List<Category> selCategory();

   //试卷删除
   Object testDel(Papper papper);

   //开启考试
   Map<String,Object>  startExam(Papper papper);

   //关闭考试
   Map<String,Object>  closeExam(Papper papper);

   //试卷修改
   Object testModify(Papper papper);

   //试题添加选择题
   Object choiseAdd(Bank Bank);

   //试题添加判断题
   Object decideAdd(Bank bank);

   //查询试卷选择题
   List<Bank> choiseExam(Map<String,Object> categoryName);

   //查询试卷判断题
   List<Bank> decideExam(Bank bank);

//   //添加试题到试卷
//   Object addExam(Subject subject);

//   //查询试卷详情
//   List<Bank> checkTest(Subject subject);

   //试题删除选择题
   Object delChoise(Bank bank);

   //试题修改选择题
   Object modifychoise(Bank Bank);

   //试题删除判断题
   Object deldecide(Decide decide);

   //试题修改判断题
   Object modifydecide(Bank bank);

   //查询试卷试题
   List<Subject> fetchTestByPaperId(String id);

   //查询试卷试题
   List<Subject> fetchTestByPaperId1(String getexamid,int page);

   //查询试卷标题
   Map<String ,Object> loadExamTitle(String id);

   int loadExamNum(String getexamid);

   int addTestToPaper(List<String> ids,String subjectId);

   List<Bank> fetchTestByIds(List<String> ids);

   // 添加试题后把is-add修改为1
   int modifyTestAdded(String examId);

   //获取试题信息
   List<Bank> Test(Map<String,Object> params);

   //将试题添加到试卷
   int  addTestOfExam(Subject subject);

   //通过试卷试题表id查询题库表id并删除
   Map<String ,Object>  subidOfBankById(String id);

   // 通过试卷试题表的id查询出来的题库的试题id修改is_add为0
   int SubIdmodifyBankIsAdd(String bankid);

   //考生登录
   Map<String,Object> studentLogin(ExamineeInfo examineeInfo);







}
