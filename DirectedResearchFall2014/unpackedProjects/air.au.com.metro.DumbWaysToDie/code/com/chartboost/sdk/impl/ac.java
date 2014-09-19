package com.chartboost.sdk.impl;

public class ac
{
    public static String a(final Object o) {
        final StringBuilder sb = new StringBuilder();
        a(o, sb);
        return sb.toString();
    }
    
    public static void a(final Object o, final StringBuilder sb) {
        ad.a().a(o, sb);
    }
    
    static void a(final StringBuilder sb, final String s) {
        sb.append("\"");
        for (int i = 0; i < s.length(); ++i) {
            final char char1 = s.charAt(i);
            if (char1 == '\\') {
                sb.append("\\\\");
            }
            else if (char1 == '\"') {
                sb.append("\\\"");
            }
            else if (char1 == '\n') {
                sb.append("\\n");
            }
            else if (char1 == '\r') {
                sb.append("\\r");
            }
            else if (char1 == '\t') {
                sb.append("\\t");
            }
            else if (char1 == '\b') {
                sb.append("\\b");
            }
            else if (char1 >= ' ') {
                sb.append(char1);
            }
        }
        sb.append("\"");
    }
}
