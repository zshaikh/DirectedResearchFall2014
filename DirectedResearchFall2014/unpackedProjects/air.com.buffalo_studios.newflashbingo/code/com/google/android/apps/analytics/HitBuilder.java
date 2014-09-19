package com.google.android.apps.analytics;

import java.util.*;

class HitBuilder
{
    static final String FAKE_DOMAIN_HASH = "1";
    private static final String GOOGLE_ANALYTICS_GIF_PATH = "/__utm.gif";
    private static final int X10_PROJECT_NAMES = 8;
    private static final int X10_PROJECT_SCOPES = 11;
    private static final int X10_PROJECT_VALUES = 9;
    
    static void appendCurrencyValue(final StringBuilder sb, final String str, final double n) {
        sb.append(str).append("=");
        final double d = Math.floor(0.5 + n * 1000000.0) / 1000000.0;
        if (d != 0.0) {
            sb.append(Double.toString(d));
        }
    }
    
    private static void appendStringValue(final StringBuilder sb, final String str, final String s) {
        sb.append(str).append("=");
        if (s != null && s.trim().length() > 0) {
            sb.append(AnalyticsParameterEncoder.encode(s));
        }
    }
    
    private static String constructEventRequestPath(final Event event, final Referrer referrer) {
        final Locale default1 = Locale.getDefault();
        final StringBuilder sb = new StringBuilder();
        final StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format("5(%s*%s", encode(x10Escape(event.category)), encode(x10Escape(event.action))));
        if (event.label != null) {
            sb2.append("*").append(encode(x10Escape(event.label)));
        }
        sb2.append(")");
        if (event.value > -1) {
            sb2.append(String.format("(%d)", event.value));
        }
        sb2.append(getCustomVariableParams(event));
        sb.append("/__utm.gif");
        sb.append("?utmwv=4.9.1ma");
        sb.append("&utmn=").append(event.getRandomVal());
        sb.append("&utmt=event");
        sb.append("&utme=").append(sb2.toString());
        sb.append("&utmcs=UTF-8");
        sb.append(String.format("&utmsr=%dx%d", event.screenWidth, event.screenHeight));
        sb.append(String.format("&utmul=%s-%s", default1.getLanguage(), default1.getCountry()));
        final String pagePathFromEvent = pagePathFromEvent(event);
        if (pagePathFromEvent != null) {
            sb.append("&utmp=").append(pagePathFromEvent);
        }
        sb.append("&utmac=").append(event.accountId);
        sb.append("&utmcc=").append(getEscapedCookieString(event, referrer));
        if (event.getAdHitId() != 0) {
            sb.append("&utmhid=").append(event.getAdHitId());
        }
        return sb.toString();
    }
    
    public static String constructHitRequestPath(final Event event, final Referrer referrer) {
        final StringBuilder sb = new StringBuilder();
        if ("__##GOOGLEPAGEVIEW##__".equals(event.category)) {
            sb.append(constructPageviewRequestPath(event, referrer));
        }
        else if ("__##GOOGLEITEM##__".equals(event.category)) {
            sb.append(constructItemRequestPath(event, referrer));
        }
        else if ("__##GOOGLETRANSACTION##__".equals(event.category)) {
            sb.append(constructTransactionRequestPath(event, referrer));
        }
        else {
            sb.append(constructEventRequestPath(event, referrer));
        }
        if (event.getAnonymizeIp()) {
            sb.append("&aip=1");
        }
        if (!event.getUseServerTime()) {
            sb.append("&utmht=" + System.currentTimeMillis());
        }
        return sb.toString();
    }
    
    private static String constructItemRequestPath(final Event event, final Referrer referrer) {
        final StringBuilder sb = new StringBuilder();
        sb.append("/__utm.gif");
        sb.append("?utmwv=4.9.1ma");
        sb.append("&utmn=").append(event.getRandomVal());
        sb.append("&utmt=item");
        final Item item = event.getItem();
        if (item != null) {
            appendStringValue(sb, "&utmtid", item.getOrderId());
            appendStringValue(sb, "&utmipc", item.getItemSKU());
            appendStringValue(sb, "&utmipn", item.getItemName());
            appendStringValue(sb, "&utmiva", item.getItemCategory());
            appendCurrencyValue(sb, "&utmipr", item.getItemPrice());
            sb.append("&utmiqt=");
            if (item.getItemCount() != 0L) {
                sb.append(item.getItemCount());
            }
        }
        sb.append("&utmac=").append(event.accountId);
        sb.append("&utmcc=").append(getEscapedCookieString(event, referrer));
        return sb.toString();
    }
    
    private static String constructPageviewRequestPath(final Event event, final Referrer referrer) {
        final String customVariableParams = getCustomVariableParams(event);
        final Locale default1 = Locale.getDefault();
        final StringBuilder sb = new StringBuilder();
        sb.append("/__utm.gif");
        sb.append("?utmwv=4.9.1ma");
        sb.append("&utmn=").append(event.getRandomVal());
        if (customVariableParams.length() > 0) {
            sb.append("&utme=").append(customVariableParams);
        }
        sb.append("&utmcs=UTF-8");
        sb.append(String.format("&utmsr=%dx%d", event.screenWidth, event.screenHeight));
        sb.append(String.format("&utmul=%s-%s", default1.getLanguage(), default1.getCountry()));
        sb.append("&utmp=").append(pagePathFromEvent(event));
        sb.append("&utmac=").append(event.accountId);
        sb.append("&utmcc=").append(getEscapedCookieString(event, referrer));
        if (event.getAdHitId() != 0) {
            sb.append("&utmhid=").append(event.getAdHitId());
        }
        return sb.toString();
    }
    
    private static String constructTransactionRequestPath(final Event event, final Referrer referrer) {
        final StringBuilder sb = new StringBuilder();
        sb.append("/__utm.gif");
        sb.append("?utmwv=4.9.1ma");
        sb.append("&utmn=").append(event.getRandomVal());
        sb.append("&utmt=tran");
        final Transaction transaction = event.getTransaction();
        if (transaction != null) {
            appendStringValue(sb, "&utmtid", transaction.getOrderId());
            appendStringValue(sb, "&utmtst", transaction.getStoreName());
            appendCurrencyValue(sb, "&utmtto", transaction.getTotalCost());
            appendCurrencyValue(sb, "&utmttx", transaction.getTotalTax());
            appendCurrencyValue(sb, "&utmtsp", transaction.getShippingCost());
            appendStringValue(sb, "&utmtci", "");
            appendStringValue(sb, "&utmtrg", "");
            appendStringValue(sb, "&utmtco", "");
        }
        sb.append("&utmac=").append(event.accountId);
        sb.append("&utmcc=").append(getEscapedCookieString(event, referrer));
        return sb.toString();
    }
    
    private static void createX10Project(final CustomVariable[] array, final StringBuilder sb, final int i) {
        sb.append(i).append("(");
        int n = 1;
        for (int j = 0; j < array.length; ++j) {
            if (array[j] != null) {
                final CustomVariable customVariable = array[j];
                if (n == 0) {
                    sb.append("*");
                }
                else {
                    n = 0;
                }
                sb.append(customVariable.getIndex()).append("!");
                switch (i) {
                    case 8: {
                        sb.append(encode(x10Escape(customVariable.getName())));
                        break;
                    }
                    case 9: {
                        sb.append(encode(x10Escape(customVariable.getValue())));
                        break;
                    }
                    case 11: {
                        sb.append(customVariable.getScope());
                        break;
                    }
                }
            }
        }
        sb.append(")");
    }
    
    private static String encode(final String s) {
        return AnalyticsParameterEncoder.encode(s);
    }
    
    public static String getCustomVariableParams(final Event event) {
        final StringBuilder sb = new StringBuilder();
        final CustomVariableBuffer customVariableBuffer = event.getCustomVariableBuffer();
        if (customVariableBuffer == null) {
            return "";
        }
        if (!customVariableBuffer.hasCustomVariables()) {
            return "";
        }
        final CustomVariable[] customVariableArray = customVariableBuffer.getCustomVariableArray();
        createX10Project(customVariableArray, sb, 8);
        createX10Project(customVariableArray, sb, 9);
        createX10Project(customVariableArray, sb, 11);
        return sb.toString();
    }
    
    public static String getEscapedCookieString(final Event event, final Referrer referrer) {
        final StringBuilder sb = new StringBuilder();
        sb.append("__utma=");
        sb.append("1").append(".");
        sb.append(event.getUserId()).append(".");
        sb.append(event.getTimestampFirst()).append(".");
        sb.append(event.getTimestampPrevious()).append(".");
        sb.append(event.getTimestampCurrent()).append(".");
        sb.append(event.getVisits()).append(";");
        if (referrer != null) {
            sb.append("+__utmz=");
            sb.append("1").append(".");
            sb.append(referrer.getTimeStamp()).append(".");
            sb.append(Integer.valueOf(referrer.getVisit()).toString()).append(".");
            sb.append(Integer.valueOf(referrer.getIndex()).toString()).append(".");
            sb.append(referrer.getReferrerString()).append(";");
        }
        return encode(sb.toString());
    }
    
    private static String pagePathFromEvent(final Event event) {
        String str = "";
        if (event.pagePath != null) {
            str = event.pagePath;
        }
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        return encode(str);
    }
    
    private static String x10Escape(final String s) {
        return s.replace("'", "'0").replace(")", "'1").replace("*", "'2").replace("!", "'3");
    }
}
