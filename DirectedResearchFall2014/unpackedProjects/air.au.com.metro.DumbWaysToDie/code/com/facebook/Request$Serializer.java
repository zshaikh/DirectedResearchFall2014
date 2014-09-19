package com.facebook;

import android.graphics.*;
import android.net.*;
import com.facebook.internal.*;
import java.net.*;
import android.location.*;
import android.os.*;
import java.text.*;
import org.json.*;
import java.io.*;
import java.util.*;
import android.util.*;
import android.text.*;
import com.facebook.model.*;

class Request$Serializer implements Request$KeyValueSerializer
{
    private boolean firstWrite;
    private final Logger logger;
    private final BufferedOutputStream outputStream;
    
    public Request$Serializer(final BufferedOutputStream outputStream, final Logger logger) {
        super();
        this.firstWrite = true;
        this.outputStream = outputStream;
        this.logger = logger;
    }
    
    public void write(final String format, final Object... args) {
        if (this.firstWrite) {
            this.outputStream.write("--".getBytes());
            this.outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
            this.outputStream.write("\r\n".getBytes());
            this.firstWrite = false;
        }
        this.outputStream.write(String.format(format, args).getBytes());
    }
    
    public void writeBitmap(final String str, final Bitmap bitmap) {
        this.writeContentDisposition(str, str, "image/png");
        bitmap.compress(Bitmap$CompressFormat.PNG, 100, (OutputStream)this.outputStream);
        this.writeLine("", new Object[0]);
        this.writeRecordBoundary();
        this.logger.appendKeyValue("    " + str, "<Image>");
    }
    
    public void writeBytes(final String str, final byte[] b) {
        this.writeContentDisposition(str, str, "content/unknown");
        this.outputStream.write(b);
        this.writeLine("", new Object[0]);
        this.writeRecordBoundary();
        this.logger.appendKeyValue("    " + str, String.format("<Data: %d>", b.length));
    }
    
    public void writeContentDisposition(final String s, final String s2, final String s3) {
        this.write("Content-Disposition: form-data; name=\"%s\"", s);
        if (s2 != null) {
            this.write("; filename=\"%s\"", s2);
        }
        this.writeLine("", new Object[0]);
        if (s3 != null) {
            this.writeLine("%s: %s", "Content-Type", s3);
        }
        this.writeLine("", new Object[0]);
    }
    
    public void writeFile(final String p0, final ParcelFileDescriptor p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_3       
        //     2: aload_0        
        //     3: aload_1        
        //     4: aload_1        
        //     5: ldc             "content/unknown"
        //     7: invokevirtual   com/facebook/Request$Serializer.writeContentDisposition:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //    10: new             Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
        //    13: dup            
        //    14: aload_2        
        //    15: invokespecial   android/os/ParcelFileDescriptor$AutoCloseInputStream.<init>:(Landroid/os/ParcelFileDescriptor;)V
        //    18: astore          4
        //    20: new             Ljava/io/BufferedInputStream;
        //    23: dup            
        //    24: aload           4
        //    26: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
        //    29: astore          5
        //    31: sipush          8192
        //    34: newarray        B
        //    36: astore          8
        //    38: iconst_0       
        //    39: istore          9
        //    41: aload           5
        //    43: aload           8
        //    45: invokevirtual   java/io/BufferedInputStream.read:([B)I
        //    48: istore          10
        //    50: iload           10
        //    52: iconst_m1      
        //    53: if_icmpeq       78
        //    56: aload_0        
        //    57: getfield        com/facebook/Request$Serializer.outputStream:Ljava/io/BufferedOutputStream;
        //    60: aload           8
        //    62: iconst_0       
        //    63: iload           10
        //    65: invokevirtual   java/io/BufferedOutputStream.write:([BII)V
        //    68: iload           9
        //    70: iload           10
        //    72: iadd           
        //    73: istore          9
        //    75: goto            41
        //    78: aload           5
        //    80: invokevirtual   java/io/BufferedInputStream.close:()V
        //    83: aload           4
        //    85: invokevirtual   android/os/ParcelFileDescriptor$AutoCloseInputStream.close:()V
        //    88: aload_0        
        //    89: ldc             ""
        //    91: iconst_0       
        //    92: anewarray       Ljava/lang/Object;
        //    95: invokevirtual   com/facebook/Request$Serializer.writeLine:(Ljava/lang/String;[Ljava/lang/Object;)V
        //    98: aload_0        
        //    99: invokevirtual   com/facebook/Request$Serializer.writeRecordBoundary:()V
        //   102: aload_0        
        //   103: getfield        com/facebook/Request$Serializer.logger:Lcom/facebook/internal/Logger;
        //   106: astore          11
        //   108: new             Ljava/lang/StringBuilder;
        //   111: dup            
        //   112: ldc             "    "
        //   114: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   117: aload_1        
        //   118: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   121: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   124: astore          12
        //   126: iconst_1       
        //   127: anewarray       Ljava/lang/Object;
        //   130: astore          13
        //   132: aload           13
        //   134: iconst_0       
        //   135: iload           9
        //   137: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   140: aastore        
        //   141: aload           11
        //   143: aload           12
        //   145: ldc             "<Data: %d>"
        //   147: aload           13
        //   149: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   152: invokevirtual   com/facebook/internal/Logger.appendKeyValue:(Ljava/lang/String;Ljava/lang/Object;)V
        //   155: return         
        //   156: astore          7
        //   158: aconst_null    
        //   159: astore          5
        //   161: aload           5
        //   163: ifnull          171
        //   166: aload           5
        //   168: invokevirtual   java/io/BufferedInputStream.close:()V
        //   171: aload_3        
        //   172: ifnull          179
        //   175: aload_3        
        //   176: invokevirtual   android/os/ParcelFileDescriptor$AutoCloseInputStream.close:()V
        //   179: aload           7
        //   181: athrow         
        //   182: astore          14
        //   184: aload           4
        //   186: astore_3       
        //   187: aload           14
        //   189: astore          7
        //   191: aconst_null    
        //   192: astore          5
        //   194: goto            161
        //   197: astore          6
        //   199: aload           4
        //   201: astore_3       
        //   202: aload           6
        //   204: astore          7
        //   206: goto            161
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  10     20     156    161    Any
        //  20     31     182    197    Any
        //  31     38     197    209    Any
        //  41     50     197    209    Any
        //  56     68     197    209    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 104, Size: 104
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
    
    public void writeLine(final String s, final Object... array) {
        this.write(s, array);
        this.write("\r\n", new Object[0]);
    }
    
    public void writeObject(final String s, final Object o) {
        if (isSupportedParameterType(o)) {
            this.writeString(s, parameterToString(o));
            return;
        }
        if (o instanceof Bitmap) {
            this.writeBitmap(s, (Bitmap)o);
            return;
        }
        if (o instanceof byte[]) {
            this.writeBytes(s, (byte[])o);
            return;
        }
        if (o instanceof ParcelFileDescriptor) {
            this.writeFile(s, (ParcelFileDescriptor)o);
            return;
        }
        throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
    }
    
    public void writeRecordBoundary() {
        this.writeLine("--%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    }
    
    @Override
    public void writeString(final String str, final String s) {
        this.writeContentDisposition(str, null, null);
        this.writeLine("%s", s);
        this.writeRecordBoundary();
        if (this.logger != null) {
            this.logger.appendKeyValue("    " + str, s);
        }
    }
}
