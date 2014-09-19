package com.facebook;

import android.graphics.*;
import org.json.*;
import android.net.*;
import java.net.*;
import android.location.*;
import android.content.*;
import android.text.*;
import android.os.*;
import java.text.*;
import java.io.*;
import java.util.*;
import android.util.*;
import com.facebook.model.*;
import com.facebook.internal.*;

class Request$Serializer implements Request$KeyValueSerializer
{
    private boolean firstWrite;
    private final Logger logger;
    private final OutputStream outputStream;
    
    public Request$Serializer(final OutputStream outputStream, final Logger logger) {
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
        bitmap.compress(Bitmap$CompressFormat.PNG, 100, this.outputStream);
        this.writeLine("", new Object[0]);
        this.writeRecordBoundary();
        if (this.logger != null) {
            this.logger.appendKeyValue("    " + str, "<Image>");
        }
    }
    
    public void writeBytes(final String str, final byte[] b) {
        this.writeContentDisposition(str, str, "content/unknown");
        this.outputStream.write(b);
        this.writeLine("", new Object[0]);
        this.writeRecordBoundary();
        if (this.logger != null) {
            this.logger.appendKeyValue("    " + str, String.format("<Data: %d>", b.length));
        }
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
    
    public void writeFile(final String p0, final ParcelFileDescriptor p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore          4
        //     3: aload_3        
        //     4: ifnonnull       263
        //     7: ldc             "content/unknown"
        //     9: astore          5
        //    11: aload_0        
        //    12: aload_1        
        //    13: aload_1        
        //    14: aload           5
        //    16: invokevirtual   com/facebook/Request$Serializer.writeContentDisposition:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //    19: aload_0        
        //    20: getfield        com/facebook/Request$Serializer.outputStream:Ljava/io/OutputStream;
        //    23: instanceof      Lcom/facebook/ProgressNoopOutputStream;
        //    26: ifeq            121
        //    29: aload_0        
        //    30: getfield        com/facebook/Request$Serializer.outputStream:Ljava/io/OutputStream;
        //    33: checkcast       Lcom/facebook/ProgressNoopOutputStream;
        //    36: aload_2        
        //    37: invokevirtual   android/os/ParcelFileDescriptor.getStatSize:()J
        //    40: invokevirtual   com/facebook/ProgressNoopOutputStream.addProgress:(J)V
        //    43: iconst_0       
        //    44: istore          13
        //    46: aload_0        
        //    47: ldc             ""
        //    49: iconst_0       
        //    50: anewarray       Ljava/lang/Object;
        //    53: invokevirtual   com/facebook/Request$Serializer.writeLine:(Ljava/lang/String;[Ljava/lang/Object;)V
        //    56: aload_0        
        //    57: invokevirtual   com/facebook/Request$Serializer.writeRecordBoundary:()V
        //    60: aload_0        
        //    61: getfield        com/facebook/Request$Serializer.logger:Lcom/facebook/internal/Logger;
        //    64: ifnull          120
        //    67: aload_0        
        //    68: getfield        com/facebook/Request$Serializer.logger:Lcom/facebook/internal/Logger;
        //    71: astore          14
        //    73: new             Ljava/lang/StringBuilder;
        //    76: dup            
        //    77: ldc             "    "
        //    79: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    82: aload_1        
        //    83: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    86: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    89: astore          15
        //    91: iconst_1       
        //    92: anewarray       Ljava/lang/Object;
        //    95: astore          16
        //    97: aload           16
        //    99: iconst_0       
        //   100: iload           13
        //   102: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   105: aastore        
        //   106: aload           14
        //   108: aload           15
        //   110: ldc             "<Data: %d>"
        //   112: aload           16
        //   114: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   117: invokevirtual   com/facebook/internal/Logger.appendKeyValue:(Ljava/lang/String;Ljava/lang/Object;)V
        //   120: return         
        //   121: new             Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
        //   124: dup            
        //   125: aload_2        
        //   126: invokespecial   android/os/ParcelFileDescriptor$AutoCloseInputStream.<init>:(Landroid/os/ParcelFileDescriptor;)V
        //   129: astore          6
        //   131: new             Ljava/io/BufferedInputStream;
        //   134: dup            
        //   135: aload           6
        //   137: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
        //   140: astore          7
        //   142: sipush          8192
        //   145: newarray        B
        //   147: astore          10
        //   149: iconst_0       
        //   150: istore          11
        //   152: aload           7
        //   154: aload           10
        //   156: invokevirtual   java/io/BufferedInputStream.read:([B)I
        //   159: istore          12
        //   161: iload           12
        //   163: iconst_m1      
        //   164: if_icmpeq       189
        //   167: aload_0        
        //   168: getfield        com/facebook/Request$Serializer.outputStream:Ljava/io/OutputStream;
        //   171: aload           10
        //   173: iconst_0       
        //   174: iload           12
        //   176: invokevirtual   java/io/OutputStream.write:([BII)V
        //   179: iload           11
        //   181: iload           12
        //   183: iadd           
        //   184: istore          11
        //   186: goto            152
        //   189: aload           7
        //   191: invokevirtual   java/io/BufferedInputStream.close:()V
        //   194: aload           6
        //   196: invokevirtual   android/os/ParcelFileDescriptor$AutoCloseInputStream.close:()V
        //   199: iload           11
        //   201: istore          13
        //   203: goto            46
        //   206: astore          9
        //   208: aconst_null    
        //   209: astore          7
        //   211: aload           7
        //   213: ifnull          221
        //   216: aload           7
        //   218: invokevirtual   java/io/BufferedInputStream.close:()V
        //   221: aload           4
        //   223: ifnull          231
        //   226: aload           4
        //   228: invokevirtual   android/os/ParcelFileDescriptor$AutoCloseInputStream.close:()V
        //   231: aload           9
        //   233: athrow         
        //   234: astore          17
        //   236: aload           6
        //   238: astore          4
        //   240: aload           17
        //   242: astore          9
        //   244: aconst_null    
        //   245: astore          7
        //   247: goto            211
        //   250: astore          8
        //   252: aload           6
        //   254: astore          4
        //   256: aload           8
        //   258: astore          9
        //   260: goto            211
        //   263: aload_3        
        //   264: astore          5
        //   266: goto            11
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  121    131    206    211    Any
        //  131    142    234    250    Any
        //  142    149    250    263    Any
        //  152    161    250    263    Any
        //  167    179    250    263    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 129, Size: 129
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
    
    public void writeFile(final String s, final Request$ParcelFileDescriptorWithMimeType request$ParcelFileDescriptorWithMimeType) {
        this.writeFile(s, request$ParcelFileDescriptorWithMimeType.getFileDescriptor(), request$ParcelFileDescriptorWithMimeType.getMimeType());
    }
    
    public void writeLine(final String s, final Object... array) {
        this.write(s, array);
        this.write("\r\n", new Object[0]);
    }
    
    public void writeObject(final String s, final Object o, final Request currentRequest) {
        if (this.outputStream instanceof RequestOutputStream) {
            ((RequestOutputStream)this.outputStream).setCurrentRequest(currentRequest);
        }
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
            this.writeFile(s, (ParcelFileDescriptor)o, null);
            return;
        }
        if (o instanceof Request$ParcelFileDescriptorWithMimeType) {
            this.writeFile(s, (Request$ParcelFileDescriptorWithMimeType)o);
            return;
        }
        throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
    }
    
    public void writeRecordBoundary() {
        this.writeLine("--%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    }
    
    public void writeRequestsAsJson(final String str, final JSONArray jsonArray, final Collection<Request> collection) {
        if (!(this.outputStream instanceof RequestOutputStream)) {
            this.writeString(str, jsonArray.toString());
        }
        else {
            final RequestOutputStream requestOutputStream = (RequestOutputStream)this.outputStream;
            this.writeContentDisposition(str, null, null);
            this.write("[", new Object[0]);
            final Iterator<Request> iterator = collection.iterator();
            int n = 0;
            while (iterator.hasNext()) {
                final Request currentRequest = iterator.next();
                final JSONObject jsonObject = jsonArray.getJSONObject(n);
                requestOutputStream.setCurrentRequest(currentRequest);
                if (n > 0) {
                    this.write(",%s", jsonObject.toString());
                }
                else {
                    this.write("%s", jsonObject.toString());
                }
                ++n;
            }
            this.write("]", new Object[0]);
            if (this.logger != null) {
                this.logger.appendKeyValue("    " + str, jsonArray.toString());
            }
        }
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
