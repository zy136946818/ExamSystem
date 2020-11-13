package com.neuedu.cn.dao;


import com.neuedu.cn.pojo.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface UsersMapper {

    //注册
    int usersRe(Users users);

    //登录
    List<Users> usersLogin (Users users);

    int passwordmodify(Users users);

    //查询试卷
    List<Papper> queryAll();

    //试卷添加
    int testAdd(Papper papper);
    //添加试卷分类
    int addCategory(Category category);

    //查询试卷分类
    List<Category> selCategory();

    //试卷删除
    int testDel(Papper papper);

    //开启考试
    int startExam(Papper papper);

    //关闭考试
    int closeExam(Papper papper);

    //试卷修改
    int testModify(Papper papper);
    //添加选择题
    int choiseAdd(Bank bank);
    //添加判断题
    int decideAdd(Bank bank);
    //查询试卷选择题
    List<Bank> choiseExam(Map<String,Object > categoryName);
    //查询试卷判断题
    List<Bank> decideExam(Bank bank);
    //添加试题到试卷
    int addExam(Subject subject);

//    //查询试卷
//    List<Subject> checkTest(Subject subject);

    //删除选择题
    int delchoise(Bank bank);

    //修改试题选择
    int modifychoise(Bank bank);

    //删除判断题
    int deldecide(Decide decide);

    //修改判断题
    int modifydecide(Bank bank);

    //将试题添加到试卷
    int  addTestOfExam(Subject subject);

    //查询试卷试题
    List<Subject> fetchTestByPaperId(@Param("id") String id);

    //查询试卷试题
    List<Subject> fetchTestByPaperId1(@Param("getexamid") String getexamid,@Param("page") int page);

    //查询试卷标题
    String loadExamTitle(@Param("id") String id);

    //查询试卷试题个数
    int loadExamNum(@Param("getexamid") String getexamid);

    List<Bank> fetchTestByIds(@Param("ids")List<String> ids);

    int modifyTestAdded(@Param("examId")String examId);

    //获取试题信息
    List<Bank> Test(Map<String,Object> params);

    String subidOfBankById(@Param("id") String id);

    int SubIdmodifyBankIsAdd(String bankid);

    int removeOfById(String id);

    //考生登录
    int studentLogin(ExamineeInfo examineeInfo);

    //将考试码添加到试卷表
    int examCodeAddPaperByid(Papper papper);

    //判断试卷状态
    String isExamCode(String examCode);

    //通过考试码获取试卷id
    String selectexamidByExamCode(String examCode);




}
