package com.flurry.org.codehaus.jackson.map.util;

import java.util.*;
import java.text.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.io.*;

public class StdDateFormat extends DateFormat
{
    protected static final String[] ALL_FORMATS;
    protected static final DateFormat DATE_FORMAT_ISO8601;
    protected static final DateFormat DATE_FORMAT_ISO8601_Z;
    protected static final DateFormat DATE_FORMAT_PLAIN;
    protected static final DateFormat DATE_FORMAT_RFC1123;
    protected static final String DATE_FORMAT_STR_ISO8601 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
    protected static final String DATE_FORMAT_STR_ISO8601_Z = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    protected static final String DATE_FORMAT_STR_PLAIN = "yyyy-MM-dd";
    protected static final String DATE_FORMAT_STR_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";
    public static final StdDateFormat instance;
    protected transient DateFormat _formatISO8601;
    protected transient DateFormat _formatISO8601_z;
    protected transient DateFormat _formatPlain;
    protected transient DateFormat _formatRFC1123;
    
    static {
        ALL_FORMATS = new String[] { "yyyy-MM-dd'T'HH:mm:ss.SSSZ", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd" };
        final TimeZone timeZone = TimeZone.getTimeZone("GMT");
        (DATE_FORMAT_RFC1123 = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz")).setTimeZone(timeZone);
        (DATE_FORMAT_ISO8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")).setTimeZone(timeZone);
        (DATE_FORMAT_ISO8601_Z = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")).setTimeZone(timeZone);
        (DATE_FORMAT_PLAIN = new SimpleDateFormat("yyyy-MM-dd")).setTimeZone(timeZone);
        instance = new StdDateFormat();
    }
    
    public static DateFormat getBlueprintISO8601Format() {
        return StdDateFormat.DATE_FORMAT_ISO8601;
    }
    
    public static DateFormat getBlueprintRFC1123Format() {
        return StdDateFormat.DATE_FORMAT_RFC1123;
    }
    
    public static DateFormat getISO8601Format(final TimeZone timeZone) {
        final DateFormat dateFormat = (DateFormat)StdDateFormat.DATE_FORMAT_ISO8601.clone();
        dateFormat.setTimeZone(timeZone);
        return dateFormat;
    }
    
    public static DateFormat getRFC1123Format(final TimeZone timeZone) {
        final DateFormat dateFormat = (DateFormat)StdDateFormat.DATE_FORMAT_RFC1123.clone();
        dateFormat.setTimeZone(timeZone);
        return dateFormat;
    }
    
    private static final boolean hasTimeZone(final String s) {
        final int length = s.length();
        if (length >= 6) {
            final char char1 = s.charAt(length - 6);
            if (char1 == '+' || char1 == '-') {
                return true;
            }
            final char char2 = s.charAt(length - 5);
            if (char2 == '+' || char2 == '-') {
                return true;
            }
            final char char3 = s.charAt(length - 3);
            if (char3 == '+' || char3 == '-') {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public StdDateFormat clone() {
        return new StdDateFormat();
    }
    
    @Override
    public StringBuffer format(final Date date, final StringBuffer sb, final FieldPosition fieldPosition) {
        if (this._formatISO8601 == null) {
            this._formatISO8601 = (DateFormat)StdDateFormat.DATE_FORMAT_ISO8601.clone();
        }
        return this._formatISO8601.format(date, sb, fieldPosition);
    }
    
    protected boolean looksLikeISO8601(final String s) {
        return s.length() >= 5 && Character.isDigit(s.charAt(0)) && Character.isDigit(s.charAt(3)) && s.charAt(4) == '-';
    }
    
    @Override
    public Date parse(final String s) throws ParseException {
        final String trim = s.trim();
        final ParsePosition parsePosition = new ParsePosition(0);
        final Date parse = this.parse(trim, parsePosition);
        if (parse != null) {
            return parse;
        }
        final StringBuilder sb = new StringBuilder();
        for (final String str : StdDateFormat.ALL_FORMATS) {
            if (sb.length() > 0) {
                sb.append("\", \"");
            }
            else {
                sb.append('\"');
            }
            sb.append(str);
        }
        sb.append('\"');
        throw new ParseException(String.format("Can not parse date \"%s\": not compatible with any of standard forms (%s)", trim, sb.toString()), parsePosition.getErrorIndex());
    }
    
    @Override
    public Date parse(final String s, final ParsePosition parsePosition) {
        if (this.looksLikeISO8601(s)) {
            return this.parseAsISO8601(s, parsePosition);
        }
        int length = s.length();
        while (--length >= 0) {
            final char char1 = s.charAt(length);
            if (char1 < '0' || char1 > '9') {
                break;
            }
        }
        if (length < 0 && NumberInput.inLongRange(s, false)) {
            return new Date(Long.parseLong(s));
        }
        return this.parseAsRFC1123(s, parsePosition);
    }
    
    protected Date parseAsISO8601(String str, final ParsePosition parsePosition) {
        final int length = str.length();
        final char char1 = str.charAt(length - 1);
        DateFormat dateFormat;
        if (length <= 10 && Character.isDigit(char1)) {
            dateFormat = this._formatPlain;
            if (dateFormat == null) {
                dateFormat = (DateFormat)StdDateFormat.DATE_FORMAT_PLAIN.clone();
                this._formatPlain = dateFormat;
            }
        }
        else if (char1 == 'Z') {
            dateFormat = this._formatISO8601_z;
            if (dateFormat == null) {
                dateFormat = (DateFormat)StdDateFormat.DATE_FORMAT_ISO8601_Z.clone();
                this._formatISO8601_z = dateFormat;
            }
            if (str.charAt(length - 4) == ':') {
                final StringBuilder sb = new StringBuilder(str);
                sb.insert(length - 1, ".000");
                str = sb.toString();
            }
        }
        else if (hasTimeZone(str)) {
            final char char2 = str.charAt(length - 3);
            if (char2 == ':') {
                final StringBuilder sb2 = new StringBuilder(str);
                sb2.delete(length - 3, length - 2);
                str = sb2.toString();
            }
            else if (char2 == '+' || char2 == '-') {
                str += "00";
            }
            final int length2 = str.length();
            if (Character.isDigit(str.charAt(length2 - 9))) {
                final StringBuilder sb3 = new StringBuilder(str);
                sb3.insert(length2 - 5, ".000");
                str = sb3.toString();
            }
            dateFormat = this._formatISO8601;
            if (this._formatISO8601 == null) {
                dateFormat = (DateFormat)StdDateFormat.DATE_FORMAT_ISO8601.clone();
                this._formatISO8601 = dateFormat;
            }
        }
        else {
            final StringBuilder sb4 = new StringBuilder(str);
            if (length - str.lastIndexOf(84) - 1 <= 8) {
                sb4.append(".000");
            }
            sb4.append('Z');
            str = sb4.toString();
            dateFormat = this._formatISO8601_z;
            if (dateFormat == null) {
                dateFormat = (DateFormat)StdDateFormat.DATE_FORMAT_ISO8601_Z.clone();
                this._formatISO8601_z = dateFormat;
            }
        }
        return dateFormat.parse(str, parsePosition);
    }
    
    protected Date parseAsRFC1123(final String s, final ParsePosition parsePosition) {
        if (this._formatRFC1123 == null) {
            this._formatRFC1123 = (DateFormat)StdDateFormat.DATE_FORMAT_RFC1123.clone();
        }
        return this._formatRFC1123.parse(s, parsePosition);
    }
}
