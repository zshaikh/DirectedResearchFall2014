package com.flurry.org.codehaus.jackson.map.util;

import java.util.*;
import java.text.*;

public class ISO8601DateFormat extends DateFormat
{
    private static Calendar CALENDAR;
    private static NumberFormat NUMBER_FORMAT;
    private static final long serialVersionUID = 1L;
    
    static {
        ISO8601DateFormat.CALENDAR = new GregorianCalendar();
        ISO8601DateFormat.NUMBER_FORMAT = new DecimalFormat();
    }
    
    public ISO8601DateFormat() {
        super();
        this.numberFormat = ISO8601DateFormat.NUMBER_FORMAT;
        this.calendar = ISO8601DateFormat.CALENDAR;
    }
    
    @Override
    public Object clone() {
        return this;
    }
    
    @Override
    public StringBuffer format(final Date date, final StringBuffer sb, final FieldPosition fieldPosition) {
        sb.append(ISO8601Utils.format(date));
        return sb;
    }
    
    @Override
    public Date parse(final String s, final ParsePosition parsePosition) {
        parsePosition.setIndex(s.length());
        return ISO8601Utils.parse(s);
    }
}
