package com.applovin.impl.sdk;

import java.util.*;

class v
{
    public static final x A;
    public static final x B;
    public static final x C;
    public static final x D;
    public static final x E;
    public static final x F;
    public static final x G;
    public static final x H;
    public static final x I;
    public static final x J;
    public static final x K;
    public static final x L;
    public static final x M;
    public static final x N;
    public static final x O;
    public static final x P;
    public static final x Q;
    public static final x R;
    public static final x S;
    public static final x T;
    private static final List U;
    private static final List V;
    public static final x a;
    public static final x b;
    public static final x c;
    public static final x d;
    public static final x e;
    public static final x f;
    public static final x g;
    public static final x h;
    public static final x i;
    public static final x j;
    public static final x k;
    public static final x l;
    public static final x m;
    public static final x n;
    public static final x o;
    public static final x p;
    public static final x q;
    public static final x r;
    public static final x s;
    public static final x t;
    public static final x u;
    public static final x v;
    public static final x w;
    public static final x x;
    public static final x y;
    public static final x z;
    
    static {
        U = Arrays.asList(Boolean.class, Float.class, Integer.class, Long.class, String.class);
        V = new ArrayList();
        a = a("is_disabled", false);
        b = a("should_load_user_settings", true);
        c = a("device_id", "");
        d = a("publisher_id", "");
        e = a("app_id", "");
        f = a("device_token", "");
        g = a("init_retry_count", 1);
        h = a("submit_data_retry_count", 1);
        i = a("fetch_ad_retry_count", 1);
        j = a("conversion_retry_count", 1);
        k = a("track_click_retry_count", 1);
        l = a("is_verbose_logging", true);
        m = a("api_endpoint", "http://d.applovin.com/");
        n = a("adserver_endpoint", "http://a.applovin.com/");
        o = a("next_device_init", 0L);
        p = a("get_retry_dealy", 10000L);
        q = a("max_apps_to_send", 100);
        r = a("is_app_list_shared", true);
        s = a("next_app_list_update", 0L);
        t = a("hash_algorithm", "SHA-1");
        u = a("short_hash_size", 16);
        v = a("http_connection_timeout", 20000);
        w = a("http_socket_timeout", 20000);
        x = a("error_save_count", 15);
        y = a("is_app_icon_requested", false);
        z = a("local_server_port", 7145);
        A = a("local_server_enabled", true);
        B = a("ad_session_minutes", 60);
        C = a("ad_request_parameters", "");
        D = a("ad_refresh_enabled", true);
        E = a("ad_refresh_seconds", 120L);
        F = a("mrec_ad_refresh_enabled", true);
        G = a("mrec_ad_refresh_seconds", 120L);
        H = a("leader_ad_refresh_enabled", true);
        I = a("leader_ad_refresh_seconds", 120L);
        J = a("plugin_version", "");
        K = a("ad_preload_enabled", true);
        L = a("ad_resource_caching_enabled", true);
        M = a("resource_cache_prefix", "http://pdn.applovin.com/,http://img.applovin.com/,http://d.applovin.com/");
        N = a("ad_auto_preload_sizes", "BANNER,INTER");
        O = a("auto_upload_events", true);
        P = a("auto_upload_aggregate_time", 10L);
        Q = a("session_expiration_time", 300L);
        R = a("event_cache_size", 500);
        S = a("force_back_button_enabled", false);
        T = a("is_first_install", "unknown");
    }
    
    private static x a(final String s, final Object o) {
        if (o == null) {
            throw new IllegalArgumentException("No default value specified");
        }
        if (!com.applovin.impl.sdk.v.U.contains(o.getClass())) {
            throw new IllegalArgumentException("Unsupported value type: " + o.getClass());
        }
        final x x = new x(s, o, null);
        com.applovin.impl.sdk.v.V.add(x);
        return x;
    }
    
    public static Collection a() {
        return Collections.unmodifiableList((List<?>)com.applovin.impl.sdk.v.V);
    }
    
    public static int b() {
        return com.applovin.impl.sdk.v.V.size();
    }
}
