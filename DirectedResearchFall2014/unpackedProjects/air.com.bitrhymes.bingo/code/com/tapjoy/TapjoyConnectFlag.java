package com.tapjoy;

public class TapjoyConnectFlag
{
    public static final String DEBUG_DEVICE_ID = "debug_device_id";
    public static final String DEBUG_HOST_URL = "debug_host_url";
    public static final String DISABLE_VIDEOS = "disable_videos";
    public static final String ENABLE_LOGGING = "enable_logging";
    public static final String[] FLAG_ARRAY;
    public static final String HOST_URL = "TJC_SERVICE_URL";
    public static final String SHA_2_UDID = "sha_2_udid";
    public static final String[] STORE_ARRAY;
    public static final String STORE_GFAN = "gfan";
    public static final String STORE_NAME = "store_name";
    public static final String STORE_SKT = "skt";
    public static final String USER_ID = "user_id";
    public static final String VIDEO_CACHE_COUNT = "video_cache_count";
    
    static {
        FLAG_ARRAY = new String[] { "debug_device_id", "debug_host_url", "sha_2_udid", "store_name", "disable_videos", "video_cache_count", "enable_logging", "user_id" };
        STORE_ARRAY = new String[] { "gfan", "skt" };
    }
}