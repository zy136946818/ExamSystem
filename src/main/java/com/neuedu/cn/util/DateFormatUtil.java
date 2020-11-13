package com.neuedu.cn.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatUtil {
    private static SimpleDateFormat dateFormat;

    public static  String datetoString(Date paramDate){
        SimpleDateFormat simpleDateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return getDateFormat().format(paramDate);
    }

    public  static  SimpleDateFormat getDateFormat(){

        if (dateFormat==null){
            dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }
        return dateFormat;
    };
}
