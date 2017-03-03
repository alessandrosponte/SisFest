<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calendar Teste</title>
</head>
<body>
        <H1>Fields of the Calendar Class</H1>
        <%
            String dateString = new String();

            GregorianCalendar calendar = new GregorianCalendar();
            Date date1 = new Date();
            calendar.setTime(date1);

            dateString += "Calendar.YEAR is " + calendar.get(Calendar.YEAR) + "<BR>";
            dateString += "Calendar.MONTH is " + calendar.get(Calendar.MONTH) + "<BR>";
            dateString += "Calendar.WEEK_OF_YEAR is " + calendar.get(Calendar.WEEK_OF_YEAR) + 
                "<BR>";
            dateString += "Calendar.WEEK_OF_MONTH is " + calendar.get(Calendar.WEEK_OF_MONTH) 
                + "<BR>";
            dateString += "Calendar.DATE is " + calendar.get(Calendar.DATE) + "<BR>";
            dateString += "Calendar.DAY_OF_MONTH is " + calendar.get(Calendar.DAY_OF_MONTH) + 
                "<BR>";
            dateString += "Calendar.DAY_OF_YEAR is " + calendar.get(Calendar.DAY_OF_YEAR) + 
                "<BR>";
            dateString += "Calendar.DAY_OF_WEEK is " + calendar.get(Calendar.DAY_OF_WEEK) + 
                "<BR>";
            dateString += "Calendar.DAY_OF_WEEK_IN_MONTH is "
                + calendar.get(Calendar.DAY_OF_WEEK_IN_MONTH) + "<BR>";
            dateString += "Calendar.AM_PM is " + calendar.get(Calendar.AM_PM) + "<BR>";
            dateString += "Calendar.HOUR is " + calendar.get(Calendar.HOUR) + "<BR>";
            dateString += "Calendar.HOUR_OF_DAY is " + calendar.get(Calendar.HOUR_OF_DAY) + 
                "<BR>";
            dateString += "Calendar.MINUTE is " + calendar.get(Calendar.MINUTE) + "<BR>";
            dateString += "Calendar.SECOND is " + calendar.get(Calendar.SECOND) + "<BR>";
            dateString += "Calendar.MILLISECOND is " + calendar.get(Calendar.MILLISECOND) + 
                "<BR>";
            dateString += "Calendar.getTimeInMillis() is " + calendar.getTimeInMillis() + 
                    "<BR>";
            dateString += "Calendar.getTime() is " + calendar.getTime() + 
                    "<BR>";

            dateString += "Resetting the date!<BR>";

            calendar.set(2005, 11, 31, 23, 59);

            dateString += "Calendar.YEAR is " + calendar.get(Calendar.YEAR) + "<BR>";
            dateString += "Calendar.MONTH is " + calendar.get(Calendar.MONTH) + "<BR>";
            dateString += "Calendar.WEEK_OF_YEAR is " + calendar.get(Calendar.WEEK_OF_YEAR) + 
                "<BR>";
            dateString += "Calendar.WEEK_OF_MONTH is " + calendar.get(Calendar.WEEK_OF_MONTH) 
                + "<BR>";
            dateString += "Calendar.DATE is " + calendar.get(Calendar.DATE) + "<BR>";
            dateString += "Calendar.DAY_OF_MONTH is " + calendar.get(Calendar.DAY_OF_MONTH) + 
                "<BR>";
            dateString += "Calendar.DAY_OF_YEAR is " + calendar.get(Calendar.DAY_OF_YEAR) + 
                "<BR>";
            dateString += "Calendar.DAY_OF_WEEK is " + calendar.get(Calendar.DAY_OF_WEEK) + 
                "<BR>";
            dateString += "Calendar.DAY_OF_WEEK_IN_MONTH is "
                + calendar.get(Calendar.DAY_OF_WEEK_IN_MONTH) + "<BR>";
            dateString += "Calendar.AM_PM is " + calendar.get(Calendar.AM_PM) + "<BR>";
            dateString += "Calendar.HOUR is " + calendar.get(Calendar.HOUR) + "<BR>";
            dateString += "Calendar.HOUR_OF_DAY is " + calendar.get(Calendar.HOUR_OF_DAY) +
                "<BR>";
            dateString += "Calendar.MINUTE is " + calendar.get(Calendar.MINUTE) + "<BR>";
            dateString += "Calendar.SECOND is " + calendar.get(Calendar.SECOND) + "<BR>";
            dateString += "Calendar.MILLISECOND is " + calendar.get(Calendar.MILLISECOND) + 
                "<BR>";
            out.println(dateString);
        %>

</body>
</html>