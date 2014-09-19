package com.adobe.air;

import java.util.*;

public class AndroidLocale
{
    private static final String ANDROID_LOCALE_TAG = "AndroidLocale";
    private static final String LANG_ENGLISH = "en";
    private static final int MAX_LOCALE_NAME_SIZE = 10;
    
    public static String GetLocale() {
        String string = "en";
        final Locale default1 = Locale.getDefault();
        if (default1 != null) {
            final String language = default1.getLanguage();
            if (language != null) {
                if (!language.equals("zh")) {
                    return language;
                }
                final StringBuilder sb = new StringBuilder(10);
                sb.append(language);
                sb.append("_");
                sb.append(default1.getCountry());
                string = sb.toString();
            }
        }
        return string;
    }
    
    public static String GetLocalizedString(final STRING_ID string_ID) {
        return getLocalString(string_ID.ordinal(), GetLocale());
    }
    
    private static native String getLocalString(final int p0, final String p1);
    
    public enum STRING_ID
    {
        IDA_CANCEL, 
        IDA_CONTEXT_MENU_TITLE_STRING, 
        IDA_CONTINUE, 
        IDA_COPY_ALL_STRING, 
        IDA_COPY_STRING, 
        IDA_CUT_ALL_STRING, 
        IDA_CUT_STRING, 
        IDA_DEBUGGER_ENTERIP_MESSAGE, 
        IDA_DEBUGGER_ERROR_MESSAGE, 
        IDA_DEBUGGER_LISTEN_ERROR_MESSAGE, 
        IDA_DEBUGGER_LISTEN_ERROR_TITLE, 
        IDA_INPUT_METHOD_STRING, 
        IDA_OK, 
        IDA_PASTE_STRING, 
        IDA_RUNTIME_UPDATE_MESSAGE, 
        IDA_SELECT_ALL, 
        IDA_SELECT_TEXT, 
        IDA_STOP_SELECTING_TEXT, 
        IDA_UPDATE;
    }
}
