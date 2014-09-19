package com.adobe.air;

import java.net.*;
import java.util.*;

public final class AndroidProxySelector
{
    private static final int LIST_HEAD = 0;
    private static final String LOG_TAG = "AndroidProxySelector";
    
    public static String getProxyUrl(final String str) {
        try {
            final List<Proxy> select = ProxySelector.getDefault().select(new URI(str));
            if (select.isEmpty()) {
                return "";
            }
            final Proxy proxy = select.get(0);
            if (Proxy.NO_PROXY != proxy && Proxy.Type.HTTP == proxy.type()) {
                return proxy.address().toString();
            }
            return "";
        }
        catch (IndexOutOfBoundsException ex) {
            return "";
        }
        catch (IllegalArgumentException ex2) {
            return "";
        }
        catch (URISyntaxException ex3) {
            return "";
        }
    }
}
