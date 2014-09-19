package v2.com.playhaven.configuration;

public final class Version
{
    public static String BANNER;
    public static String BANNER_FULL;
    public static String PLUGIN_BUILD_TIME;
    public static String PROJECT_ARTIFACT;
    public static String PROJECT_GROUP;
    public static String PROJECT_NAME;
    public static String PROJECT_VERSION;
    public static String SERVER_BUILD_ID;
    public static String SERVER_BUILD_PLAN;
    public static String SERVER_BUILD_TIME;
    public static String SOURCE_BRANCH;
    public static Boolean SOURCE_DIRTY;
    public static String SOURCE_VERSION;
    public static String SOURCE_WORKING_COPY;
    
    static {
        Version.PLUGIN_BUILD_TIME = "2013-05-16 13:26";
        Version.PROJECT_NAME = "Playhaven API";
        Version.PROJECT_GROUP = "com.playhaven.androidsdk";
        Version.PROJECT_ARTIFACT = "playhaven";
        Version.PROJECT_VERSION = "1.12.5";
        Version.SOURCE_VERSION = "";
        Version.SOURCE_BRANCH = "";
        Version.SOURCE_DIRTY = false;
        Version.SOURCE_WORKING_COPY = "C:/dev/eclipse";
        Version.SERVER_BUILD_PLAN = "N/A";
        Version.SERVER_BUILD_ID = "N/A";
        Version.SERVER_BUILD_TIME = "N/A";
        Version.BANNER_FULL = "Build info: Playhaven API version 1.12.5 built on 2013-05-16 13:26 source version , build id: N/A-N/A.";
        Version.BANNER = "1.12.5- 2013-05-16 13:26 ";
    }
}
