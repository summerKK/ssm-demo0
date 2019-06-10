package com.summer.ssm.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    /**
     * 日期转字符串
     *
     * @param date
     * @param format
     * @return
     */
    public static String date2String(Date date, String format) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        String s = dateFormat.format(date);
        return s;
    }

    /**
     * 字符串转日期
     *
     * @param str
     * @param format
     * @return
     * @throws ParseException
     */
    public static Date string2Date(String str, String format) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        Date date = dateFormat.parse(str);
        return date;
    }
}
