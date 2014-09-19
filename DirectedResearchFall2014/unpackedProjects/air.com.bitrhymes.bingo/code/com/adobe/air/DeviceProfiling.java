package com.adobe.air;

import java.io.*;
import android.app.*;
import android.content.*;
import com.adobe.air.utils.*;

class DeviceProfiling
{
    private static final int BUFFER_SIZE = 8192;
    private static final String DEFAULT_PROFILER_PORT = "9999";
    private static final String DELIM_STRING = "=";
    private static final String FLASH_TRUST_DIR = "FlashPlayerTrust";
    private static final String LOG_TAG = "DeviceProfiling";
    private static final String META_INF;
    private static final String MM_DOT_CFG = "mm.cfg";
    private static final String PROFILER_HOST_ID = "raw.debugger";
    private static final String PROFILER_RES_ID = "raw.profileragent";
    private static final String PROFILER_SWF_NAME = "ProfilerAgent.swf";
    private static final String PROFILE_CONFIG_FILENAME = "Profiling.cfg";
    private static ResourceFileManager mResManager;
    
    static {
        META_INF = "META-INF" + File.separator + "AIR";
    }
    
    public static boolean checkAndInitiateProfiler(final Activity activity) {
        DeviceProfiling.mResManager = new ResourceFileManager((Context)activity);
        final boolean resExists = DeviceProfiling.mResManager.resExists(DeviceProfiling.mResManager.lookupResId("raw.debugger"));
        final boolean resExists2 = DeviceProfiling.mResManager.resExists(DeviceProfiling.mResManager.lookupResId("raw.profileragent"));
        if (!resExists || !resExists2) {
            AIRLogger.d("DeviceProfiling", "Preload SWF/debughost resource does not exist inside the APK" + resExists + " " + resExists2);
            return false;
        }
        extractProfilerResource();
        insertPreloadTagEntry();
        insertTrustConfigEntry();
        return true;
    }
    
    private static void extractProfilerResource() {
        final File file = new File(ApplicationFileManager.getAppRoot() + File.separator + DeviceProfiling.META_INF + File.separator + "ProfilerAgent.swf");
        file.getParentFile().mkdirs();
        try {
            DeviceProfiling.mResManager.extractResource(DeviceProfiling.mResManager.lookupResId("raw.profileragent"), file);
        }
        catch (Exception ex) {
            AIRLogger.d("DeviceProfiling", " Exception while writing/closing preloadSWF File " + ex.getMessage());
        }
    }
    
    private static void insertPreloadTagEntry() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/File;
        //     3: dup            
        //     4: new             Ljava/lang/StringBuilder;
        //     7: dup            
        //     8: invokespecial   java/lang/StringBuilder.<init>:()V
        //    11: invokestatic    com/adobe/air/utils/Utils.GetExternalStorageDirectory:()Ljava/lang/String;
        //    14: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    17: getstatic       java/io/File.separator:Ljava/lang/String;
        //    20: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    23: ldc             "."
        //    25: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    28: ldc             "adobe"
        //    30: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    33: getstatic       java/io/File.separator:Ljava/lang/String;
        //    36: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    39: ldc             "AIR"
        //    41: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    44: getstatic       java/io/File.separator:Ljava/lang/String;
        //    47: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    50: ldc             "mm.cfg"
        //    52: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    55: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    58: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //    61: astore_0       
        //    62: new             Ljava/io/File;
        //    65: dup            
        //    66: new             Ljava/lang/StringBuilder;
        //    69: dup            
        //    70: invokespecial   java/lang/StringBuilder.<init>:()V
        //    73: invokestatic    com/adobe/air/ApplicationFileManager.getAndroidAppDataPath:()Ljava/lang/String;
        //    76: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    79: getstatic       java/io/File.separator:Ljava/lang/String;
        //    82: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    85: ldc             "mm.cfg"
        //    87: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    90: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    93: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //    96: astore_1       
        //    97: new             Ljava/io/File;
        //   100: dup            
        //   101: new             Ljava/lang/StringBuilder;
        //   104: dup            
        //   105: invokespecial   java/lang/StringBuilder.<init>:()V
        //   108: invokestatic    com/adobe/air/ApplicationFileManager.getAndroidAppDataPath:()Ljava/lang/String;
        //   111: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   114: getstatic       java/io/File.separator:Ljava/lang/String;
        //   117: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   120: getstatic       com/adobe/air/AndroidConstants.DEBUGGER_INFO:Ljava/lang/String;
        //   123: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   126: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   129: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   132: astore_2       
        //   133: new             Ljava/lang/StringBuilder;
        //   136: dup            
        //   137: invokespecial   java/lang/StringBuilder.<init>:()V
        //   140: invokestatic    com/adobe/air/ApplicationFileManager.getAppRoot:()Ljava/lang/String;
        //   143: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   146: getstatic       java/io/File.separator:Ljava/lang/String;
        //   149: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   152: getstatic       com/adobe/air/DeviceProfiling.META_INF:Ljava/lang/String;
        //   155: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   158: getstatic       java/io/File.separator:Ljava/lang/String;
        //   161: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   164: ldc             "ProfilerAgent.swf"
        //   166: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   169: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   172: astore_3       
        //   173: getstatic       com/adobe/air/DeviceProfiling.mResManager:Lcom/adobe/air/ResourceFileManager;
        //   176: getstatic       com/adobe/air/DeviceProfiling.mResManager:Lcom/adobe/air/ResourceFileManager;
        //   179: ldc             "raw.debugger"
        //   181: invokevirtual   com/adobe/air/ResourceFileManager.lookupResId:(Ljava/lang/String;)I
        //   184: aload_2        
        //   185: invokevirtual   com/adobe/air/ResourceFileManager.extractResource:(ILjava/io/File;)V
        //   188: new             Ljava/util/HashMap;
        //   191: dup            
        //   192: invokespecial   java/util/HashMap.<init>:()V
        //   195: astore          6
        //   197: aload_2        
        //   198: new             Ljava/lang/String;
        //   201: dup            
        //   202: ldc             "="
        //   204: invokespecial   java/lang/String.<init>:(Ljava/lang/String;)V
        //   207: invokestatic    com/adobe/air/utils/Utils.parseKeyValuePairFile:(Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;
        //   210: astore          24
        //   212: aload           24
        //   214: astore          9
        //   216: new             Ljava/lang/String;
        //   219: dup            
        //   220: ldc             "PreloadSwf="
        //   222: invokespecial   java/lang/String.<init>:(Ljava/lang/String;)V
        //   225: aload_3        
        //   226: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //   229: ldc             "?"
        //   231: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //   234: astore          10
        //   236: new             Ljava/lang/StringBuffer;
        //   239: dup            
        //   240: invokespecial   java/lang/StringBuffer.<init>:()V
        //   243: astore          11
        //   245: aload           9
        //   247: ldc             "Host"
        //   249: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   252: ifnull          563
        //   255: aload           10
        //   257: ldc             "host="
        //   259: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //   262: aload           9
        //   264: ldc             "Host"
        //   266: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   269: checkcast       Ljava/lang/String;
        //   272: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //   275: astore          12
        //   277: aload           12
        //   279: ldc             "&"
        //   281: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //   284: ldc             "port="
        //   286: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //   289: ldc             "9999"
        //   291: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //   294: astore          13
        //   296: aload_0        
        //   297: invokevirtual   java/io/File.exists:()Z
        //   300: ifeq            515
        //   303: new             Ljava/io/BufferedReader;
        //   306: dup            
        //   307: new             Ljava/io/FileReader;
        //   310: dup            
        //   311: aload_0        
        //   312: invokespecial   java/io/FileReader.<init>:(Ljava/io/File;)V
        //   315: sipush          8192
        //   318: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;I)V
        //   321: astore          17
        //   323: iconst_0       
        //   324: istore          18
        //   326: aload           17
        //   328: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //   331: astore          21
        //   333: aload           21
        //   335: ifnull          489
        //   338: aload           21
        //   340: aload           13
        //   342: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   345: ifeq            351
        //   348: iconst_1       
        //   349: istore          18
        //   351: aload           11
        //   353: aload           21
        //   355: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   358: ldc             "\n"
        //   360: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   363: pop            
        //   364: goto            326
        //   367: astore          19
        //   369: ldc             "DeviceProfiling"
        //   371: new             Ljava/lang/StringBuilder;
        //   374: dup            
        //   375: invokespecial   java/lang/StringBuilder.<init>:()V
        //   378: ldc             "Reading from Configuration file with path"
        //   380: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   383: aload_0        
        //   384: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   387: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   390: ldc             " failed."
        //   392: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   395: aload           19
        //   397: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   400: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   403: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   406: invokestatic    com/adobe/air/utils/AIRLogger.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   409: pop            
        //   410: aload           11
        //   412: aload_1        
        //   413: invokestatic    com/adobe/air/utils/Utils.writeBufferToFile:(Ljava/lang/StringBuffer;Ljava/io/File;)V
        //   416: return         
        //   417: astore          4
        //   419: ldc             "DeviceProfiling"
        //   421: new             Ljava/lang/StringBuilder;
        //   424: dup            
        //   425: invokespecial   java/lang/StringBuilder.<init>:()V
        //   428: ldc             " Extracting Resource debugInfo failed "
        //   430: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   433: aload           4
        //   435: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   441: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   444: invokestatic    com/adobe/air/utils/AIRLogger.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   447: pop            
        //   448: goto            188
        //   451: astore          7
        //   453: ldc             "DeviceProfiling"
        //   455: new             Ljava/lang/StringBuilder;
        //   458: dup            
        //   459: invokespecial   java/lang/StringBuilder.<init>:()V
        //   462: ldc             " Parsing for key-value pairs failed/mm.cfg not found "
        //   464: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   467: aload           7
        //   469: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   472: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   475: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   478: invokestatic    com/adobe/air/utils/AIRLogger.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   481: pop            
        //   482: aload           6
        //   484: astore          9
        //   486: goto            216
        //   489: iload           18
        //   491: ifne            507
        //   494: aload           11
        //   496: aload           13
        //   498: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   501: ldc             "\n"
        //   503: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   506: pop            
        //   507: aload           17
        //   509: invokevirtual   java/io/BufferedReader.close:()V
        //   512: goto            410
        //   515: aload           11
        //   517: aload           13
        //   519: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   522: ldc             "\n"
        //   524: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   527: pop            
        //   528: goto            410
        //   531: astore          15
        //   533: ldc             "DeviceProfiling"
        //   535: new             Ljava/lang/StringBuilder;
        //   538: dup            
        //   539: invokespecial   java/lang/StringBuilder.<init>:()V
        //   542: ldc             " Writing string buffer to file failed "
        //   544: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   547: aload           15
        //   549: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   552: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   555: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   558: invokestatic    com/adobe/air/utils/AIRLogger.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   561: pop            
        //   562: return         
        //   563: aload           10
        //   565: astore          12
        //   567: goto            277
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  173    188    417    451    Ljava/lang/Exception;
        //  197    212    451    489    Ljava/lang/Exception;
        //  303    323    367    410    Ljava/lang/Exception;
        //  326    333    367    410    Ljava/lang/Exception;
        //  338    348    367    410    Ljava/lang/Exception;
        //  351    364    367    410    Ljava/lang/Exception;
        //  410    416    531    563    Ljava/lang/Exception;
        //  494    507    367    410    Ljava/lang/Exception;
        //  507    512    367    410    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 239, Size: 239
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    private static void insertTrustConfigEntry() {
        final File file = new File(ApplicationFileManager.getAppRoot() + File.separator + DeviceProfiling.META_INF + File.separator + "FlashPlayerTrust");
        file.mkdir();
        final File file2 = new File(Utils.GetExternalStorageDirectory() + File.separator + "FlashPlayerTrust");
        String s;
        while (true) {
            try {
                Utils.copyTo(file2, file);
                final String string;
                s = (string = ApplicationFileManager.getAppRoot() + File.separator + DeviceProfiling.META_INF);
                final StringBuilder sb = new StringBuilder();
                final String s2 = ApplicationFileManager.getAppRoot();
                final StringBuilder sb2 = sb.append(s2);
                final String s3 = File.separator;
                final StringBuilder sb3 = sb2.append(s3);
                final String s4 = DeviceProfiling.META_INF;
                final StringBuilder sb4 = sb3.append(s4);
                final String s5 = File.separator;
                final StringBuilder sb5 = sb4.append(s5);
                final String s6 = "FlashPlayerTrust";
                final StringBuilder sb6 = sb5.append(s6);
                final String s7 = File.separator;
                final StringBuilder sb7 = sb6.append(s7);
                final String s8 = "Profiling.cfg";
                final StringBuilder sb8 = sb7.append(s8);
                final String s9 = sb8.toString();
                final File file3 = new File(s9);
                Utils.writeStringToFile(string, file3);
                return;
            }
            catch (Exception ex) {
                AIRLogger.d("DeviceProfiling", "Recursive Copy for FlashPlayerTrust folder failed." + ex.getMessage());
                continue;
            }
            break;
        }
        try {
            final String string = s;
            final StringBuilder sb = new StringBuilder();
            final String s2 = ApplicationFileManager.getAppRoot();
            final StringBuilder sb2 = sb.append(s2);
            final String s3 = File.separator;
            final StringBuilder sb3 = sb2.append(s3);
            final String s4 = DeviceProfiling.META_INF;
            final StringBuilder sb4 = sb3.append(s4);
            final String s5 = File.separator;
            final StringBuilder sb5 = sb4.append(s5);
            final String s6 = "FlashPlayerTrust";
            final StringBuilder sb6 = sb5.append(s6);
            final String s7 = File.separator;
            final StringBuilder sb7 = sb6.append(s7);
            final String s8 = "Profiling.cfg";
            final StringBuilder sb8 = sb7.append(s8);
            final String s9 = sb8.toString();
            final File file3 = new File(s9);
            Utils.writeStringToFile(string, file3);
        }
        catch (Exception ex2) {
            AIRLogger.d("DeviceProfiling", " Write to FlashPlayerTrust Failed" + ex2.getMessage());
        }
    }
}
