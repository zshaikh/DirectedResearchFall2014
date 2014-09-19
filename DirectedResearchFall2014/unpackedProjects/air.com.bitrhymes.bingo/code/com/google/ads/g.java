package com.google.ads;

public final class g
{
    public static <T> T a(final String className, final Class<T> clazz) throws ClassNotFoundException, ClassCastException, IllegalAccessException, InstantiationException, LinkageError, ExceptionInInitializerError {
        return clazz.cast(Class.forName(className).newInstance());
    }
    
    public static String a(final String s, final String replacement, final Boolean b, final String replacement2, final String replacement3, final String replacement4, final String replacement5, final String replacement6, final String replacement7, final String replacement8, final String replacement9) {
        String s2 = s.replaceAll("@gw_adlocid@", replacement).replaceAll("@gw_qdata@", replacement5).replaceAll("@gw_sdkver@", "afma-sdk-a-v6.4.1").replaceAll("@gw_sessid@", replacement6).replaceAll("@gw_seqnum@", replacement7).replaceAll("@gw_devid@", replacement2);
        if (replacement4 != null) {
            s2 = s2.replaceAll("@gw_adnetid@", replacement4);
        }
        if (replacement3 != null) {
            s2 = s2.replaceAll("@gw_allocid@", replacement3);
        }
        if (replacement8 != null) {
            s2 = s2.replaceAll("@gw_adt@", replacement8);
        }
        if (replacement9 != null) {
            s2 = s2.replaceAll("@gw_aec@", replacement9);
        }
        if (b != null) {
            String replacement10;
            if (b) {
                replacement10 = "1";
            }
            else {
                replacement10 = "0";
            }
            s2 = s2.replaceAll("@gw_adnetrefresh@", replacement10);
        }
        return s2;
    }
    
    public enum a
    {
        a, 
        b, 
        c, 
        d, 
        e, 
        f;
    }
}
