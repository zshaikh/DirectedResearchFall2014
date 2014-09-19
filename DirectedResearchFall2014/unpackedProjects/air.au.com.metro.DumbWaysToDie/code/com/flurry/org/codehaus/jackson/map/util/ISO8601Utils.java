package com.flurry.org.codehaus.jackson.map.util;

import java.util.*;

public class ISO8601Utils
{
    private static final String GMT_ID = "GMT";
    private static final TimeZone TIMEZONE_GMT;
    
    static {
        TIMEZONE_GMT = TimeZone.getTimeZone("GMT");
    }
    
    private static void checkOffset(final String s, final int index, final char c) throws IndexOutOfBoundsException {
        final char char1 = s.charAt(index);
        if (char1 != c) {
            throw new IndexOutOfBoundsException("Expected '" + c + "' character but found '" + char1 + "'");
        }
    }
    
    public static String format(final Date date) {
        return format(date, false, ISO8601Utils.TIMEZONE_GMT);
    }
    
    public static String format(final Date date, final boolean b) {
        return format(date, b, ISO8601Utils.TIMEZONE_GMT);
    }
    
    public static String format(final Date time, final boolean b, final TimeZone zone) {
        final GregorianCalendar gregorianCalendar = new GregorianCalendar(zone, Locale.US);
        gregorianCalendar.setTime(time);
        final int length = "yyyy-MM-ddThh:mm:ss".length();
        int length2;
        if (b) {
            length2 = ".sss".length();
        }
        else {
            length2 = 0;
        }
        final int n = length + length2;
        int n2;
        if (zone.getRawOffset() == 0) {
            n2 = "Z".length();
        }
        else {
            n2 = "+hh:mm".length();
        }
        final StringBuilder sb = new StringBuilder(n + n2);
        padInt(sb, gregorianCalendar.get(1), "yyyy".length());
        sb.append('-');
        padInt(sb, 1 + gregorianCalendar.get(2), "MM".length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), "dd".length());
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), "hh".length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), "mm".length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), "ss".length());
        if (b) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), "sss".length());
        }
        final int offset = zone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            final int abs = Math.abs(offset / 60000 / 60);
            final int abs2 = Math.abs(offset / 60000 % 60);
            char c;
            if (offset < 0) {
                c = '-';
            }
            else {
                c = '+';
            }
            sb.append(c);
            padInt(sb, abs, "hh".length());
            sb.append(':');
            padInt(sb, abs2, "mm".length());
        }
        else {
            sb.append('Z');
        }
        return sb.toString();
    }
    
    private static void padInt(final StringBuilder sb, final int i, final int n) {
        final String string = Integer.toString(i);
        for (int j = n - string.length(); j > 0; --j) {
            sb.append('0');
        }
        sb.append(string);
    }
    
    public static Date parse(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: iconst_4       
        //     2: iadd           
        //     3: istore_1       
        //     4: aload_0        
        //     5: iconst_0       
        //     6: iload_1        
        //     7: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.parseInt:(Ljava/lang/String;II)I
        //    10: istore          5
        //    12: aload_0        
        //    13: iload_1        
        //    14: bipush          45
        //    16: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.checkOffset:(Ljava/lang/String;IC)V
        //    19: iload_1        
        //    20: iconst_1       
        //    21: iadd           
        //    22: istore          6
        //    24: iload           6
        //    26: iconst_2       
        //    27: iadd           
        //    28: istore          7
        //    30: aload_0        
        //    31: iload           6
        //    33: iload           7
        //    35: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.parseInt:(Ljava/lang/String;II)I
        //    38: istore          8
        //    40: aload_0        
        //    41: iload           7
        //    43: bipush          45
        //    45: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.checkOffset:(Ljava/lang/String;IC)V
        //    48: iload           7
        //    50: iconst_1       
        //    51: iadd           
        //    52: istore          9
        //    54: iload           9
        //    56: iconst_2       
        //    57: iadd           
        //    58: istore          10
        //    60: aload_0        
        //    61: iload           9
        //    63: iload           10
        //    65: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.parseInt:(Ljava/lang/String;II)I
        //    68: istore          11
        //    70: aload_0        
        //    71: iload           10
        //    73: bipush          84
        //    75: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.checkOffset:(Ljava/lang/String;IC)V
        //    78: iload           10
        //    80: iconst_1       
        //    81: iadd           
        //    82: istore          12
        //    84: iload           12
        //    86: iconst_2       
        //    87: iadd           
        //    88: istore          13
        //    90: aload_0        
        //    91: iload           12
        //    93: iload           13
        //    95: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.parseInt:(Ljava/lang/String;II)I
        //    98: istore          17
        //   100: aload_0        
        //   101: iload           13
        //   103: bipush          58
        //   105: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.checkOffset:(Ljava/lang/String;IC)V
        //   108: iload           13
        //   110: iconst_1       
        //   111: iadd           
        //   112: istore          18
        //   114: iload           18
        //   116: iconst_2       
        //   117: iadd           
        //   118: istore          13
        //   120: aload_0        
        //   121: iload           18
        //   123: iload           13
        //   125: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.parseInt:(Ljava/lang/String;II)I
        //   128: istore          19
        //   130: aload_0        
        //   131: iload           13
        //   133: bipush          58
        //   135: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.checkOffset:(Ljava/lang/String;IC)V
        //   138: iload           13
        //   140: iconst_1       
        //   141: iadd           
        //   142: istore          20
        //   144: iload           20
        //   146: iconst_2       
        //   147: iadd           
        //   148: istore          13
        //   150: aload_0        
        //   151: iload           20
        //   153: iload           13
        //   155: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.parseInt:(Ljava/lang/String;II)I
        //   158: istore          21
        //   160: aload_0        
        //   161: iload           13
        //   163: invokevirtual   java/lang/String.charAt:(I)C
        //   166: bipush          46
        //   168: if_icmpne       562
        //   171: aload_0        
        //   172: iload           13
        //   174: bipush          46
        //   176: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.checkOffset:(Ljava/lang/String;IC)V
        //   179: iload           13
        //   181: iconst_1       
        //   182: iadd           
        //   183: istore          32
        //   185: iload           32
        //   187: iconst_3       
        //   188: iadd           
        //   189: istore          13
        //   191: aload_0        
        //   192: iload           32
        //   194: iload           13
        //   196: invokestatic    com/flurry/org/codehaus/jackson/map/util/ISO8601Utils.parseInt:(Ljava/lang/String;II)I
        //   199: istore          33
        //   201: iload           13
        //   203: istore          22
        //   205: iload           33
        //   207: istore          23
        //   209: aload_0        
        //   210: iload           22
        //   212: invokevirtual   java/lang/String.charAt:(I)C
        //   215: istore          27
        //   217: iload           27
        //   219: bipush          43
        //   221: if_icmpeq       231
        //   224: iload           27
        //   226: bipush          45
        //   228: if_icmpne       317
        //   231: new             Ljava/lang/StringBuilder;
        //   234: dup            
        //   235: invokespecial   java/lang/StringBuilder.<init>:()V
        //   238: ldc             "GMT"
        //   240: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   243: aload_0        
        //   244: iload           22
        //   246: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   249: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   252: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   255: astore          28
        //   257: aload           28
        //   259: invokestatic    java/util/TimeZone.getTimeZone:(Ljava/lang/String;)Ljava/util/TimeZone;
        //   262: astore          29
        //   264: aload           29
        //   266: invokevirtual   java/util/TimeZone.getID:()Ljava/lang/String;
        //   269: aload           28
        //   271: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   274: ifne            391
        //   277: new             Ljava/lang/IndexOutOfBoundsException;
        //   280: dup            
        //   281: invokespecial   java/lang/IndexOutOfBoundsException.<init>:()V
        //   284: athrow         
        //   285: astore_2       
        //   286: iload           22
        //   288: pop            
        //   289: new             Ljava/lang/IllegalArgumentException;
        //   292: dup            
        //   293: new             Ljava/lang/StringBuilder;
        //   296: dup            
        //   297: invokespecial   java/lang/StringBuilder.<init>:()V
        //   300: ldc             "Failed to parse date "
        //   302: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   305: aload_0        
        //   306: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   309: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   312: aload_2        
        //   313: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   316: athrow         
        //   317: iload           27
        //   319: bipush          90
        //   321: if_icmpne       331
        //   324: ldc             "GMT"
        //   326: astore          28
        //   328: goto            257
        //   331: new             Ljava/lang/IndexOutOfBoundsException;
        //   334: dup            
        //   335: new             Ljava/lang/StringBuilder;
        //   338: dup            
        //   339: invokespecial   java/lang/StringBuilder.<init>:()V
        //   342: ldc             "Invalid time zone indicator "
        //   344: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   347: iload           27
        //   349: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   352: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   355: invokespecial   java/lang/IndexOutOfBoundsException.<init>:(Ljava/lang/String;)V
        //   358: athrow         
        //   359: astore_3       
        //   360: iload           22
        //   362: pop            
        //   363: new             Ljava/lang/IllegalArgumentException;
        //   366: dup            
        //   367: new             Ljava/lang/StringBuilder;
        //   370: dup            
        //   371: invokespecial   java/lang/StringBuilder.<init>:()V
        //   374: ldc             "Failed to parse date "
        //   376: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   379: aload_0        
        //   380: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   383: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   386: aload_3        
        //   387: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   390: athrow         
        //   391: new             Ljava/util/GregorianCalendar;
        //   394: dup            
        //   395: aload           29
        //   397: invokespecial   java/util/GregorianCalendar.<init>:(Ljava/util/TimeZone;)V
        //   400: astore          30
        //   402: aload           30
        //   404: iconst_0       
        //   405: invokevirtual   java/util/Calendar.setLenient:(Z)V
        //   408: aload           30
        //   410: iconst_1       
        //   411: iload           5
        //   413: invokevirtual   java/util/Calendar.set:(II)V
        //   416: aload           30
        //   418: iconst_2       
        //   419: iload           8
        //   421: iconst_1       
        //   422: isub           
        //   423: invokevirtual   java/util/Calendar.set:(II)V
        //   426: aload           30
        //   428: iconst_5       
        //   429: iload           11
        //   431: invokevirtual   java/util/Calendar.set:(II)V
        //   434: aload           30
        //   436: bipush          11
        //   438: iload           17
        //   440: invokevirtual   java/util/Calendar.set:(II)V
        //   443: aload           30
        //   445: bipush          12
        //   447: iload           19
        //   449: invokevirtual   java/util/Calendar.set:(II)V
        //   452: aload           30
        //   454: bipush          13
        //   456: iload           21
        //   458: invokevirtual   java/util/Calendar.set:(II)V
        //   461: aload           30
        //   463: bipush          14
        //   465: iload           23
        //   467: invokevirtual   java/util/Calendar.set:(II)V
        //   470: aload           30
        //   472: invokevirtual   java/util/Calendar.getTime:()Ljava/util/Date;
        //   475: astore          31
        //   477: aload           31
        //   479: areturn        
        //   480: astore          4
        //   482: new             Ljava/lang/IllegalArgumentException;
        //   485: dup            
        //   486: new             Ljava/lang/StringBuilder;
        //   489: dup            
        //   490: invokespecial   java/lang/StringBuilder.<init>:()V
        //   493: ldc             "Failed to parse date "
        //   495: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   498: aload_0        
        //   499: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   502: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   505: aload           4
        //   507: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   510: athrow         
        //   511: astore          4
        //   513: goto            482
        //   516: astore          4
        //   518: iload           13
        //   520: pop            
        //   521: goto            482
        //   524: astore          4
        //   526: iload           22
        //   528: pop            
        //   529: goto            482
        //   532: astore_3       
        //   533: goto            363
        //   536: astore_3       
        //   537: goto            363
        //   540: astore_3       
        //   541: iload           13
        //   543: pop            
        //   544: goto            363
        //   547: astore_2       
        //   548: goto            289
        //   551: astore_2       
        //   552: goto            289
        //   555: astore_2       
        //   556: iload           13
        //   558: pop            
        //   559: goto            289
        //   562: iload           13
        //   564: istore          22
        //   566: iconst_0       
        //   567: istore          23
        //   569: goto            209
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                 
        //  -----  -----  -----  -----  -------------------------------------
        //  4      19     547    551    Ljava/lang/IndexOutOfBoundsException;
        //  4      19     532    536    Ljava/lang/NumberFormatException;
        //  4      19     480    482    Ljava/lang/IllegalArgumentException;
        //  30     48     547    551    Ljava/lang/IndexOutOfBoundsException;
        //  30     48     532    536    Ljava/lang/NumberFormatException;
        //  30     48     480    482    Ljava/lang/IllegalArgumentException;
        //  60     78     551    555    Ljava/lang/IndexOutOfBoundsException;
        //  60     78     536    540    Ljava/lang/NumberFormatException;
        //  60     78     511    516    Ljava/lang/IllegalArgumentException;
        //  90     108    555    562    Ljava/lang/IndexOutOfBoundsException;
        //  90     108    540    547    Ljava/lang/NumberFormatException;
        //  90     108    516    524    Ljava/lang/IllegalArgumentException;
        //  120    138    555    562    Ljava/lang/IndexOutOfBoundsException;
        //  120    138    540    547    Ljava/lang/NumberFormatException;
        //  120    138    516    524    Ljava/lang/IllegalArgumentException;
        //  150    179    555    562    Ljava/lang/IndexOutOfBoundsException;
        //  150    179    540    547    Ljava/lang/NumberFormatException;
        //  150    179    516    524    Ljava/lang/IllegalArgumentException;
        //  191    201    555    562    Ljava/lang/IndexOutOfBoundsException;
        //  191    201    540    547    Ljava/lang/NumberFormatException;
        //  191    201    516    524    Ljava/lang/IllegalArgumentException;
        //  209    217    285    289    Ljava/lang/IndexOutOfBoundsException;
        //  209    217    359    363    Ljava/lang/NumberFormatException;
        //  209    217    524    532    Ljava/lang/IllegalArgumentException;
        //  231    257    285    289    Ljava/lang/IndexOutOfBoundsException;
        //  231    257    359    363    Ljava/lang/NumberFormatException;
        //  231    257    524    532    Ljava/lang/IllegalArgumentException;
        //  257    285    285    289    Ljava/lang/IndexOutOfBoundsException;
        //  257    285    359    363    Ljava/lang/NumberFormatException;
        //  257    285    524    532    Ljava/lang/IllegalArgumentException;
        //  331    359    285    289    Ljava/lang/IndexOutOfBoundsException;
        //  331    359    359    363    Ljava/lang/NumberFormatException;
        //  331    359    524    532    Ljava/lang/IllegalArgumentException;
        //  391    477    285    289    Ljava/lang/IndexOutOfBoundsException;
        //  391    477    359    363    Ljava/lang/NumberFormatException;
        //  391    477    524    532    Ljava/lang/IllegalArgumentException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 291, Size: 291
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
    
    private static int parseInt(final String str, final int index, final int n) throws NumberFormatException {
        if (index < 0 || n > str.length() || index > n) {
            throw new NumberFormatException(str);
        }
        int i;
        int n2;
        if (index < n) {
            i = index + 1;
            final int digit = Character.digit(str.charAt(index), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str);
            }
            n2 = -digit;
        }
        else {
            i = index;
            n2 = 0;
        }
        while (i < n) {
            final int n3 = i + 1;
            final int digit2 = Character.digit(str.charAt(i), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str);
            }
            n2 = n2 * 10 - digit2;
            i = n3;
        }
        return -n2;
    }
}
