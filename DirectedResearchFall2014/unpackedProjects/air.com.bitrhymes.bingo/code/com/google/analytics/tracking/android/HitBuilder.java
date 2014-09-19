package com.google.analytics.tracking.android;

import java.net.*;
import java.io.*;
import java.util.*;

class HitBuilder
{
    static String encode(final String s) {
        try {
            return URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            throw new AssertionError((Object)("URL encoding failed for: " + s));
        }
    }
    
    static Map<String, String> generateHitParams(final MetaModel metaModel, final Map<String, String> map) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            final MetaModel.MetaInfo metaInfo = metaModel.getMetaInfo(entry.getKey());
            if (metaInfo != null) {
                final String urlParam = metaInfo.getUrlParam(entry.getKey());
                if (urlParam == null) {
                    continue;
                }
                String format = entry.getValue();
                if (metaInfo.getFormatter() != null) {
                    format = metaInfo.getFormatter().format(format);
                }
                if (format == null || format.equals(metaInfo.getDefaultValue())) {
                    continue;
                }
                hashMap.put(urlParam, format);
            }
        }
        return hashMap;
    }
    
    static String postProcessHit(final Hit hit, final long n) {
        final StringBuilder sb = new StringBuilder();
        sb.append(hit.getHitParams());
        if (hit.getHitTime() > 0L) {
            final long lng = n - hit.getHitTime();
            if (lng >= 0L) {
                sb.append("&").append("qt").append("=").append(lng);
            }
        }
        sb.append("&").append("z").append("=").append(hit.getHitId());
        return sb.toString();
    }
}
