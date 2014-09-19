package com.google.analytics.tracking.android;

import java.util.*;
import com.google.android.gms.common.util.*;

class MetaModel
{
    private Map<String, MetaInfo> mMetaInfos;
    
    MetaModel() {
        super();
        this.mMetaInfos = new HashMap<String, MetaInfo>();
    }
    
    public void addField(final String s, final String s2, final String s3, final Formatter formatter) {
        this.mMetaInfos.put(s, new MetaInfo(s2, s3, formatter));
    }
    
    MetaInfo getMetaInfo(final String s) {
        if (s.startsWith("&")) {
            return new MetaInfo(s.substring(1), null, null);
        }
        String substring = s;
        if (s.contains("*")) {
            substring = s.substring(0, s.indexOf("*"));
        }
        return this.mMetaInfos.get(substring);
    }
    
    public interface Formatter
    {
        String format(String p0);
    }
    
    public static class MetaInfo
    {
        private final String mDefaultValue;
        private final Formatter mFormatter;
        private final String mUrlParam;
        
        public MetaInfo(final String mUrlParam, final String mDefaultValue, final Formatter mFormatter) {
            super();
            this.mUrlParam = mUrlParam;
            this.mDefaultValue = mDefaultValue;
            this.mFormatter = mFormatter;
        }
        
        public String getDefaultValue() {
            return this.mDefaultValue;
        }
        
        public Formatter getFormatter() {
            return this.mFormatter;
        }
        
        @VisibleForTesting
        String getUrlParam() {
            return this.mUrlParam;
        }
        
        public String getUrlParam(final String s) {
            if (s.contains("*")) {
                final String mUrlParam = this.mUrlParam;
                final String[] split = s.split("\\*");
                if (split.length > 1) {
                    try {
                        return mUrlParam + Integer.parseInt(split[1]);
                    }
                    catch (NumberFormatException ex) {
                        Log.w("Unable to parse slot for url parameter " + mUrlParam);
                        return null;
                    }
                }
                return null;
            }
            return this.mUrlParam;
        }
    }
}
