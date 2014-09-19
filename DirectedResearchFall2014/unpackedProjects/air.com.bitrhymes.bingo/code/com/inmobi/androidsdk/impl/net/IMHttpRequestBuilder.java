package com.inmobi.androidsdk.impl.net;

import com.inmobi.androidsdk.impl.*;
import com.inmobi.androidsdk.*;
import java.util.*;
import com.inmobi.commons.internal.*;
import android.view.*;
import java.net.*;

public final class IMHttpRequestBuilder
{
    private static String a(final IMUserInfo imUserInfo) {
        final StringBuilder sb = new StringBuilder();
        if (imUserInfo.getPostalCode() != null) {
            sb.append("u-postalCode=");
            sb.append(getURLEncoded(imUserInfo.getPostalCode()));
        }
    Label_0157_Outer:
        while (true) {
            Label_0437: {
                Label_0067: {
                    if (imUserInfo.getRequestParams() == null) {
                        break Label_0067;
                    }
                    final Iterator<Map.Entry<String, String>> iterator = imUserInfo.getRequestParams().entrySet().iterator();
                    if (iterator.hasNext()) {
                        break Label_0437;
                    }
                }
                if (imUserInfo.getAreaCode() != null) {
                    sb.append("&u-areaCode=");
                    sb.append(getURLEncoded(imUserInfo.getAreaCode()));
                }
                if (imUserInfo.getDateOfBirth() != null) {
                    sb.append("&u-dateOfBirth=");
                    sb.append(getURLEncoded(imUserInfo.getDateOfBirth()));
                }
                Label_0502: {
                    while (true) {
                        Label_0164: {
                            if (imUserInfo.getGender() == IMAdRequest.GenderType.NONE || imUserInfo.getGender() == null) {
                                break Label_0164;
                            }
                            sb.append("&u-gender=");
                            if (imUserInfo.getGender() != IMAdRequest.GenderType.MALE) {
                                break Label_0502;
                            }
                            final String str = "M";
                            sb.append(str);
                        }
                        if (imUserInfo.getKeywords() != null) {
                            sb.append("&p-keywords=");
                            sb.append(getURLEncoded(imUserInfo.getKeywords()));
                        }
                        if (imUserInfo.getSearchString() != null) {
                            sb.append("&p-type=");
                            sb.append(getURLEncoded(imUserInfo.getSearchString()));
                        }
                        if (imUserInfo.getIncome() > 0) {
                            sb.append("&u-income=");
                            sb.append(imUserInfo.getIncome());
                        }
                        if (imUserInfo.getEducation() != IMAdRequest.EducationType.Edu_None && imUserInfo.getEducation() != null) {
                            sb.append("&u-education=");
                            sb.append(imUserInfo.getEducation());
                        }
                        if (imUserInfo.getEthnicity() != IMAdRequest.EthnicityType.Eth_None && imUserInfo.getEthnicity() != null) {
                            sb.append("&u-ethnicity=");
                            sb.append(imUserInfo.getEthnicity());
                        }
                        if (imUserInfo.getAge() > 0) {
                            sb.append("&u-age=");
                            sb.append(imUserInfo.getAge());
                        }
                        if (imUserInfo.getInterests() != null) {
                            sb.append("&u-interests=");
                            sb.append(getURLEncoded(imUserInfo.getInterests()));
                        }
                        if (imUserInfo.getLocationWithCityStateCountry() != null) {
                            sb.append("&u-location=");
                            sb.append(getURLEncoded(imUserInfo.getLocationWithCityStateCountry()));
                        }
                        if (imUserInfo.getRefreshType() != -1) {
                            sb.append("&u-rt=");
                            sb.append(getURLEncoded(String.valueOf(imUserInfo.getRefreshType())));
                        }
                        String s = sb.toString();
                        try {
                            if (s.charAt(0) == '&') {
                                s = s.substring(1);
                            }
                            return s;
                            final String str = "F";
                            continue;
                            final Iterator<Map.Entry<String, String>> iterator;
                            final Map.Entry<String, String> entry = iterator.next();
                            sb.append("&").append(getURLEncoded(entry.getKey().toString())).append("=").append(getURLEncoded(entry.getValue().toString()));
                            continue Label_0157_Outer;
                        }
                        catch (Exception ex) {
                            return s;
                        }
                        break;
                    }
                }
            }
            break;
        }
    }
    
    static String a(final IMUserInfo imUserInfo, final IMRequestResponseManager.ActionType actionType) {
        while (true) {
            final StringBuffer sb = new StringBuffer();
            while (true) {
                Label_0188: {
                    try {
                        if (IMRequestResponseManager.ActionType.AdRequest == actionType) {
                            final String a = a(imUserInfo);
                            sb.append("requestactivity=AdRequest");
                            if (a != null && !a.equalsIgnoreCase("")) {
                                sb.append("&" + a);
                            }
                        }
                        else {
                            if (IMRequestResponseManager.ActionType.AdRequest_Interstitial != actionType) {
                                break Label_0188;
                            }
                            final String a2 = a(imUserInfo);
                            sb.append("adtype=int");
                            if (a2 != null && !a2.equalsIgnoreCase("")) {
                                sb.append("&" + a2);
                            }
                        }
                        sb.append(b(imUserInfo));
                        sb.append("&" + c(imUserInfo));
                        return sb.toString();
                    }
                    catch (Exception obj) {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception occured in an ad request" + obj);
                        return sb.toString();
                    }
                }
                if (IMRequestResponseManager.ActionType.DeviceInfoUpload == actionType) {
                    sb.append("requestactivity=DeviceInfo");
                    continue;
                }
                sb.append("requestactivity=AdClicked");
                continue;
            }
        }
    }
    
    public static String appendClickParams(final String p0, final MotionEvent p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             "1.0"
        //     2: invokestatic    java/lang/Float.parseFloat:(Ljava/lang/String;)F
        //     5: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
        //     8: astore          5
        //    10: aload_1        
        //    11: ifnull          469
        //    14: getstatic       android/os/Build$VERSION.SDK_INT:I
        //    17: bipush          12
        //    19: if_icmplt       490
        //    22: aload_2        
        //    23: ifnull          35
        //    26: aload_2        
        //    27: invokestatic    java/lang/Float.parseFloat:(Ljava/lang/String;)F
        //    30: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
        //    33: astore          5
        //    35: aload_1        
        //    36: invokestatic    com/inmobi/androidsdk/ai/container/IMWrapperFunctions.getTapLocationX:(Landroid/view/MotionEvent;)Ljava/lang/String;
        //    39: astore          6
        //    41: aload           6
        //    43: ifnull          484
        //    46: aload           6
        //    48: invokestatic    java/lang/Float.parseFloat:(Ljava/lang/String;)F
        //    51: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
        //    54: astore          7
        //    56: aload_1        
        //    57: invokestatic    com/inmobi/androidsdk/ai/container/IMWrapperFunctions.getTapLocationY:(Landroid/view/MotionEvent;)Ljava/lang/String;
        //    60: astore          8
        //    62: aconst_null    
        //    63: astore          9
        //    65: aload           8
        //    67: ifnull          80
        //    70: aload           8
        //    72: invokestatic    java/lang/Float.parseFloat:(Ljava/lang/String;)F
        //    75: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
        //    78: astore          9
        //    80: aload           7
        //    82: ifnull          101
        //    85: aload           7
        //    87: invokevirtual   java/lang/Float.floatValue:()F
        //    90: aload           5
        //    92: invokevirtual   java/lang/Float.floatValue:()F
        //    95: fdiv           
        //    96: invokestatic    java/lang/Float.toString:(F)Ljava/lang/String;
        //    99: astore          6
        //   101: aload           9
        //   103: ifnull          477
        //   106: aload           9
        //   108: invokevirtual   java/lang/Float.floatValue:()F
        //   111: aload           5
        //   113: invokevirtual   java/lang/Float.floatValue:()F
        //   116: fdiv           
        //   117: invokestatic    java/lang/Float.toString:(F)Ljava/lang/String;
        //   120: astore          10
        //   122: aload_1        
        //   123: invokestatic    com/inmobi/androidsdk/ai/container/IMWrapperFunctions.getTapSize:(Landroid/view/MotionEvent;)Ljava/lang/String;
        //   126: astore          11
        //   128: aload           6
        //   130: astore          12
        //   132: aload           10
        //   134: astore          13
        //   136: aload           11
        //   138: astore          14
        //   140: aload_0        
        //   141: ldc_w           "?"
        //   144: invokevirtual   java/lang/String.contains:(Ljava/lang/CharSequence;)Z
        //   147: ifeq            277
        //   150: aload           12
        //   152: ifnull          471
        //   155: aload           13
        //   157: ifnull          471
        //   160: new             Ljava/lang/StringBuilder;
        //   163: dup            
        //   164: aload_0        
        //   165: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   168: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   171: ldc             "&"
        //   173: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   176: ldc_w           "u-tap-o"
        //   179: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   182: ldc             "="
        //   184: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   187: new             Ljava/lang/StringBuilder;
        //   190: dup            
        //   191: aload           12
        //   193: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   196: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   199: ldc_w           ","
        //   202: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   205: aload           13
        //   207: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   210: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   213: invokestatic    com/inmobi/androidsdk/impl/net/IMHttpRequestBuilder.getURLEncoded:(Ljava/lang/String;)Ljava/lang/String;
        //   216: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   219: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   222: astore          16
        //   224: aload           16
        //   226: astore          4
        //   228: aload           14
        //   230: ifnull          462
        //   233: new             Ljava/lang/StringBuilder;
        //   236: dup            
        //   237: aload           4
        //   239: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   242: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   245: ldc             "&"
        //   247: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   250: ldc_w           "u-tap-size"
        //   253: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   256: ldc             "="
        //   258: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   261: aload           14
        //   263: invokestatic    com/inmobi/androidsdk/impl/net/IMHttpRequestBuilder.getURLEncoded:(Ljava/lang/String;)Ljava/lang/String;
        //   266: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   269: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   272: astore          15
        //   274: aload           15
        //   276: areturn        
        //   277: aload           12
        //   279: ifnull          405
        //   282: aload           13
        //   284: ifnull          405
        //   287: new             Ljava/lang/StringBuilder;
        //   290: dup            
        //   291: aload_0        
        //   292: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   295: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   298: ldc_w           "?"
        //   301: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   304: ldc_w           "u-tap-o"
        //   307: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   310: ldc             "="
        //   312: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   315: new             Ljava/lang/StringBuilder;
        //   318: dup            
        //   319: aload           12
        //   321: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   324: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   327: ldc_w           ","
        //   330: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   333: aload           13
        //   335: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   338: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   341: invokestatic    com/inmobi/androidsdk/impl/net/IMHttpRequestBuilder.getURLEncoded:(Ljava/lang/String;)Ljava/lang/String;
        //   344: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   347: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   350: astore          18
        //   352: aload           18
        //   354: astore          4
        //   356: aload           14
        //   358: ifnull          462
        //   361: new             Ljava/lang/StringBuilder;
        //   364: dup            
        //   365: aload           4
        //   367: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   370: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   373: ldc             "&"
        //   375: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   378: ldc_w           "u-tap-size"
        //   381: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   384: ldc             "="
        //   386: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   389: aload           14
        //   391: invokestatic    com/inmobi/androidsdk/impl/net/IMHttpRequestBuilder.getURLEncoded:(Ljava/lang/String;)Ljava/lang/String;
        //   394: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   397: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   400: astore          19
        //   402: aload           19
        //   404: areturn        
        //   405: aload           14
        //   407: ifnull          469
        //   410: new             Ljava/lang/StringBuilder;
        //   413: dup            
        //   414: aload_0        
        //   415: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   418: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   421: ldc_w           "?"
        //   424: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   427: ldc_w           "u-tap-size"
        //   430: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   433: ldc             "="
        //   435: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   438: aload           14
        //   440: invokestatic    com/inmobi/androidsdk/impl/net/IMHttpRequestBuilder.getURLEncoded:(Ljava/lang/String;)Ljava/lang/String;
        //   443: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   446: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   449: astore          17
        //   451: aload           17
        //   453: areturn        
        //   454: astore_3       
        //   455: aload_0        
        //   456: astore          4
        //   458: aload_3        
        //   459: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   462: aload           4
        //   464: areturn        
        //   465: astore_3       
        //   466: goto            458
        //   469: aload_0        
        //   470: areturn        
        //   471: aload_0        
        //   472: astore          4
        //   474: goto            228
        //   477: aload           8
        //   479: astore          10
        //   481: goto            122
        //   484: aconst_null    
        //   485: astore          7
        //   487: goto            56
        //   490: aconst_null    
        //   491: astore          14
        //   493: aconst_null    
        //   494: astore          13
        //   496: aconst_null    
        //   497: astore          12
        //   499: goto            140
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      10     454    458    Ljava/lang/Exception;
        //  14     22     454    458    Ljava/lang/Exception;
        //  26     35     454    458    Ljava/lang/Exception;
        //  35     41     454    458    Ljava/lang/Exception;
        //  46     56     454    458    Ljava/lang/Exception;
        //  56     62     454    458    Ljava/lang/Exception;
        //  70     80     454    458    Ljava/lang/Exception;
        //  85     101    454    458    Ljava/lang/Exception;
        //  106    122    454    458    Ljava/lang/Exception;
        //  122    128    454    458    Ljava/lang/Exception;
        //  140    150    454    458    Ljava/lang/Exception;
        //  160    224    454    458    Ljava/lang/Exception;
        //  233    274    465    469    Ljava/lang/Exception;
        //  287    352    454    458    Ljava/lang/Exception;
        //  361    402    465    469    Ljava/lang/Exception;
        //  410    451    454    458    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0277:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private static String b(final IMUserInfo imUserInfo) {
        final StringBuilder sb = new StringBuilder();
        if (imUserInfo.getScreenDensity() != null) {
            sb.append("&d-device-screen-density=").append(getURLEncoded(imUserInfo.getScreenDensity()));
        }
        if (imUserInfo.getScreenSize() != null) {
            sb.append("&d-device-screen-size=").append(getURLEncoded(imUserInfo.getScreenSize()));
        }
        return sb.toString();
    }
    
    private static String c(final IMUserInfo imUserInfo) {
        final StringBuilder sb = new StringBuilder();
        if (imUserInfo.getSiteId() != null) {
            sb.append("mk-siteid=");
            sb.append(getURLEncoded(imUserInfo.getSiteId()));
        }
        if (imUserInfo.getUIDMapEncrypted() != null) {
            sb.append("&u-id-map=");
            sb.append(getURLEncoded(imUserInfo.getUIDMapEncrypted()));
            sb.append("&u-id-key=");
            sb.append(imUserInfo.getRandomKey());
            sb.append("&u-key-ver=");
            sb.append(imUserInfo.getRsakeyVersion());
        }
        if (imUserInfo.getAid() != null) {
            sb.append("&aid=");
            sb.append(getURLEncoded(imUserInfo.getAid()));
        }
        sb.append("&mk-version=");
        sb.append(getURLEncoded("pr-SAND-DTGTC-20121219"));
        sb.append("&mk-rel-version=");
        sb.append(getURLEncoded("3.6.2"));
        sb.append("&format=xhtml");
        sb.append("&mk-ads=1");
        sb.append("&h-user-agent=");
        sb.append(getURLEncoded(imUserInfo.getPhoneDefaultUserAgent()));
        sb.append("&u-appBId=");
        sb.append(getURLEncoded(imUserInfo.getAppBId()));
        sb.append("&u-appDNM=");
        sb.append(getURLEncoded(imUserInfo.getAppDisplayName()));
        sb.append("&u-appVer=");
        sb.append(getURLEncoded(imUserInfo.getAppVer()));
        sb.append("&d-localization=");
        sb.append(getURLEncoded(imUserInfo.getLocalization()));
        if (imUserInfo.getNetworkType() != null) {
            sb.append("&d-netType=");
            sb.append(getURLEncoded(imUserInfo.getNetworkType()));
        }
        if (imUserInfo.getOrientation() != 0) {
            sb.append("&d-orientation=");
            sb.append(imUserInfo.getOrientation());
        }
        sb.append("&mk-ad-slot=");
        sb.append(getURLEncoded(imUserInfo.getAdUnitSlot()));
        if (imUserInfo.getSlotId() != null) {
            sb.append("&mk-site-slotid=");
            sb.append(getURLEncoded(imUserInfo.getSlotId()));
        }
        if (imUserInfo.isValidGeoInfo()) {
            sb.append("&u-latlong-accu=");
            sb.append(getURLEncoded(currentLocationStr(imUserInfo)));
        }
        if (imUserInfo.getRefTagKey() != null && imUserInfo.getRefTagValue() != null) {
            sb.append("&").append(getURLEncoded(imUserInfo.getRefTagKey())).append("=").append(getURLEncoded(imUserInfo.getRefTagValue()));
        }
        return sb.toString();
    }
    
    public static String currentLocationStr(final IMUserInfo imUserInfo) {
        final StringBuilder sb = new StringBuilder();
        if (sb != null && imUserInfo.isValidGeoInfo()) {
            sb.append(imUserInfo.getLat());
            sb.append(",");
            sb.append(imUserInfo.getLon());
            sb.append(",");
            sb.append((int)imUserInfo.getLocAccuracy());
            return sb.toString();
        }
        return "";
    }
    
    public static String getURLDecoded(final String s, final String enc) {
        try {
            return URLDecoder.decode(s, enc);
        }
        catch (Exception ex) {
            return "";
        }
    }
    
    public static String getURLEncoded(final String s) {
        try {
            return URLEncoder.encode(s, "UTF-8");
        }
        catch (Exception ex) {
            return "";
        }
    }
}
