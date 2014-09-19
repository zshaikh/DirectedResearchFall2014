package com.flurry.org.codehaus.jackson.util;

import java.util.regex.*;
import com.flurry.org.codehaus.jackson.*;

public class VersionUtil
{
    public static final String VERSION_FILE = "VERSION.txt";
    private static final Pattern VERSION_SEPARATOR;
    
    static {
        VERSION_SEPARATOR = Pattern.compile("[-_./;:]");
    }
    
    public static Version parseVersion(final String s) {
        if (s == null) {
            return null;
        }
        final String trim = s.trim();
        if (trim.length() == 0) {
            return null;
        }
        final String[] split = VersionUtil.VERSION_SEPARATOR.split(trim);
        if (split.length < 2) {
            return null;
        }
        final int versionPart = parseVersionPart(split[0]);
        final int versionPart2 = parseVersionPart(split[1]);
        int versionPart3;
        if (split.length > 2) {
            versionPart3 = parseVersionPart(split[2]);
        }
        else {
            versionPart3 = 0;
        }
        String s2;
        if (split.length > 3) {
            s2 = split[3];
        }
        else {
            s2 = null;
        }
        return new Version(versionPart, versionPart2, versionPart3, s2);
    }
    
    protected static int parseVersionPart(final String s) {
        final String string = s.toString();
        final int length = string.length();
        int n = 0;
        for (int i = 0; i < length; ++i) {
            final char char1 = string.charAt(i);
            if (char1 > '9' || char1 < '0') {
                break;
            }
            n = n * 10 + (char1 - '0');
        }
        return n;
    }
    
    public static Version versionFor(final Class<?> p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: ldc             "VERSION.txt"
        //     5: invokevirtual   java/lang/Class.getResourceAsStream:(Ljava/lang/String;)Ljava/io/InputStream;
        //     8: astore_3       
        //     9: aconst_null    
        //    10: astore_1       
        //    11: aload_3        
        //    12: ifnull          47
        //    15: new             Ljava/io/BufferedReader;
        //    18: dup            
        //    19: new             Ljava/io/InputStreamReader;
        //    22: dup            
        //    23: aload_3        
        //    24: ldc             "UTF-8"
        //    26: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;Ljava/lang/String;)V
        //    29: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //    32: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //    35: invokestatic    com/flurry/org/codehaus/jackson/util/VersionUtil.parseVersion:(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/Version;
        //    38: astore          6
        //    40: aload           6
        //    42: astore_1       
        //    43: aload_3        
        //    44: invokevirtual   java/io/InputStream.close:()V
        //    47: aload_1        
        //    48: ifnonnull       92
        //    51: invokestatic    com/flurry/org/codehaus/jackson/Version.unknownVersion:()Lcom/flurry/org/codehaus/jackson/Version;
        //    54: areturn        
        //    55: astore          7
        //    57: new             Ljava/lang/RuntimeException;
        //    60: dup            
        //    61: aload           7
        //    63: invokespecial   java/lang/RuntimeException.<init>:(Ljava/lang/Throwable;)V
        //    66: athrow         
        //    67: astore_2       
        //    68: goto            47
        //    71: astore          4
        //    73: aload_3        
        //    74: invokevirtual   java/io/InputStream.close:()V
        //    77: aload           4
        //    79: athrow         
        //    80: astore          5
        //    82: new             Ljava/lang/RuntimeException;
        //    85: dup            
        //    86: aload           5
        //    88: invokespecial   java/lang/RuntimeException.<init>:(Ljava/lang/Throwable;)V
        //    91: athrow         
        //    92: aload_1        
        //    93: areturn        
        //    Signature:
        //  (Ljava/lang/Class<*>;)Lcom/flurry/org/codehaus/jackson/Version;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      9      67     71     Ljava/io/IOException;
        //  15     40     71     92     Any
        //  43     47     55     67     Ljava/io/IOException;
        //  57     67     67     71     Ljava/io/IOException;
        //  73     77     80     92     Ljava/io/IOException;
        //  77     80     67     71     Ljava/io/IOException;
        //  82     92     67     71     Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 50, Size: 50
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3553)
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
}
