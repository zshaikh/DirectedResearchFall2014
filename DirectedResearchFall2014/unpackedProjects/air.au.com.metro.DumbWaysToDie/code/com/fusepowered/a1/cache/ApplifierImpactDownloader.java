package com.fusepowered.a1.cache;

import com.fusepowered.a1.campaign.*;
import com.fusepowered.a1.properties.*;
import android.net.*;
import com.fusepowered.a1.*;
import java.util.*;
import android.os.*;
import java.io.*;
import java.net.*;

public class ApplifierImpactDownloader
{
    private static Vector<CacheDownload> _cacheDownloads;
    private static ArrayList<ApplifierImpactCampaign> _downloadList;
    private static ArrayList<IApplifierImpactDownloadListener> _downloadListeners;
    private static boolean _isDownloading;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType() {
        final int[] $switch_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType = ApplifierImpactDownloader.$SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType;
        if ($switch_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType != null) {
            return $switch_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType;
        }
        final int[] $switch_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType2 = new int[ApplifierDownloadEventType.values().length];
        while (true) {
            try {
                $switch_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType2[ApplifierDownloadEventType.DownloadCancelled.ordinal()] = 2;
                try {
                    $switch_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType2[ApplifierDownloadEventType.DownloadCompleted.ordinal()] = 1;
                    return ApplifierImpactDownloader.$SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType = $switch_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType2;
                }
                catch (NoSuchFieldError noSuchFieldError) {}
            }
            catch (NoSuchFieldError noSuchFieldError2) {
                continue;
            }
            break;
        }
    }
    
    static {
        ApplifierImpactDownloader._downloadList = null;
        ApplifierImpactDownloader._downloadListeners = null;
        ApplifierImpactDownloader._isDownloading = false;
        ApplifierImpactDownloader._cacheDownloads = null;
    }
    
    public static void addDownload(final ApplifierImpactCampaign e) {
        if (ApplifierImpactDownloader._downloadList == null) {
            ApplifierImpactDownloader._downloadList = new ArrayList<ApplifierImpactCampaign>();
        }
        if (!isInDownloads(e.getVideoUrl())) {
            ApplifierImpactDownloader._downloadList.add(e);
        }
        if (!ApplifierImpactDownloader._isDownloading) {
            ApplifierImpactDownloader._isDownloading = true;
            cacheNextFile();
        }
    }
    
    public static void addListener(final IApplifierImpactDownloadListener applifierImpactDownloadListener) {
        if (ApplifierImpactDownloader._downloadListeners == null) {
            ApplifierImpactDownloader._downloadListeners = new ArrayList<IApplifierImpactDownloadListener>();
        }
        if (!ApplifierImpactDownloader._downloadListeners.contains(applifierImpactDownloadListener)) {
            ApplifierImpactDownloader._downloadListeners.add(applifierImpactDownloadListener);
        }
    }
    
    private static void addToCacheDownloads(final CacheDownload e) {
        if (ApplifierImpactDownloader._cacheDownloads == null) {
            ApplifierImpactDownloader._cacheDownloads = new Vector<CacheDownload>();
        }
        ApplifierImpactDownloader._cacheDownloads.add(e);
    }
    
    private static void cacheCampaign(final ApplifierImpactCampaign applifierImpactCampaign) {
        if (ApplifierImpactProperties.CURRENT_ACTIVITY == null || ApplifierImpactProperties.CURRENT_ACTIVITY.getBaseContext() == null) {
            return;
        }
        final ConnectivityManager connectivityManager = (ConnectivityManager)ApplifierImpactProperties.CURRENT_ACTIVITY.getBaseContext().getSystemService("connectivity");
        if (connectivityManager == null || !connectivityManager.getNetworkInfo(1).isConnected()) {
            ApplifierImpactUtils.Log("No WIFI detected, not downloading: " + applifierImpactCampaign.getVideoUrl(), ApplifierImpactDownloader.class);
            removeDownload(applifierImpactCampaign);
            sendToListeners(ApplifierDownloadEventType.DownloadCancelled, applifierImpactCampaign.getVideoUrl());
            cacheNextFile();
            return;
        }
        ApplifierImpactUtils.Log("Starting download for: " + applifierImpactCampaign.getVideoFilename(), ApplifierImpactDownloader.class);
        if (applifierImpactCampaign != null && applifierImpactCampaign.getVideoUrl() != null && applifierImpactCampaign.getVideoUrl().length() > 0) {
            final CacheDownload cacheDownload = new CacheDownload(applifierImpactCampaign);
            addToCacheDownloads(cacheDownload);
            cacheDownload.execute((Object[])new String[] { applifierImpactCampaign.getVideoUrl() });
            return;
        }
        removeDownload(applifierImpactCampaign);
    }
    
    private static void cacheNextFile() {
        if (ApplifierImpactDownloader._downloadList != null && ApplifierImpactDownloader._downloadList.size() > 0) {
            cacheCampaign(ApplifierImpactDownloader._downloadList.get(0));
        }
        else if (ApplifierImpactDownloader._downloadList != null) {
            ApplifierImpactDownloader._isDownloading = false;
            ApplifierImpactUtils.Log("All downloads completed.", ApplifierImpactDownloader.class);
        }
    }
    
    public static void clearData() {
        if (ApplifierImpactDownloader._cacheDownloads != null) {
            ApplifierImpactDownloader._cacheDownloads.clear();
            ApplifierImpactDownloader._cacheDownloads = null;
        }
        ApplifierImpactDownloader._isDownloading = false;
        if (ApplifierImpactDownloader._downloadListeners != null) {
            ApplifierImpactDownloader._downloadListeners.clear();
            ApplifierImpactDownloader._downloadListeners = null;
        }
    }
    
    private static FileOutputStream getOutputStreamFor(final String s) {
        final File file = new File(ApplifierImpactUtils.createCacheDir(), s);
        try {
            return new FileOutputStream(file);
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Problems creating FOS: " + s, ApplifierImpactDownloader.class);
            return null;
        }
    }
    
    private static boolean isInDownloads(final String anObject) {
        if (ApplifierImpactDownloader._downloadList != null) {
            for (final ApplifierImpactCampaign o : ApplifierImpactDownloader._downloadList) {
                if (o != null && o.getVideoUrl() != null && o.getVideoUrl().equals(anObject)) {
                    return true;
                }
                if (o != null && o.getVideoUrl() != null) {
                    continue;
                }
                ApplifierImpactDownloader._downloadList.remove(o);
            }
        }
        return false;
    }
    
    private static void removeDownload(final ApplifierImpactCampaign obj) {
        if (ApplifierImpactDownloader._downloadList != null) {
            int index = -1;
            for (int i = 0; i < ApplifierImpactDownloader._downloadList.size(); ++i) {
                if (ApplifierImpactDownloader._downloadList.get(i).equals(obj)) {
                    index = i;
                    break;
                }
            }
            if (index > -1) {
                ApplifierImpactDownloader._downloadList.remove(index);
            }
        }
    }
    
    private static void removeFromCacheDownloads(final CacheDownload o) {
        if (ApplifierImpactDownloader._cacheDownloads != null) {
            ApplifierImpactDownloader._cacheDownloads.remove(o);
        }
    }
    
    public static void removeListener(final IApplifierImpactDownloadListener applifierImpactDownloadListener) {
        if (ApplifierImpactDownloader._downloadListeners != null && ApplifierImpactDownloader._downloadListeners.contains(applifierImpactDownloadListener)) {
            ApplifierImpactDownloader._downloadListeners.remove(applifierImpactDownloadListener);
        }
    }
    
    private static void sendToListeners(final ApplifierDownloadEventType applifierDownloadEventType, final String s) {
        if (ApplifierImpactDownloader._downloadListeners != null) {
            for (final IApplifierImpactDownloadListener applifierImpactDownloadListener : (ArrayList)ApplifierImpactDownloader._downloadListeners.clone()) {
                switch ($SWITCH_TABLE$com$applifier$impact$android$cache$ApplifierImpactDownloader$ApplifierDownloadEventType()[applifierDownloadEventType.ordinal()]) {
                    default: {
                        continue;
                    }
                    case 1: {
                        applifierImpactDownloadListener.onFileDownloadCompleted(s);
                        continue;
                    }
                    case 2: {
                        applifierImpactDownloadListener.onFileDownloadCancelled(s);
                        continue;
                    }
                }
            }
        }
    }
    
    public static void stopAllDownloads() {
        if (ApplifierImpactDownloader._cacheDownloads != null) {
            ApplifierImpactUtils.Log("ApplifierImpactDownloader->stopAllDownloads()", ApplifierImpactDownloader.class);
            final Iterator<CacheDownload> iterator = ApplifierImpactDownloader._cacheDownloads.iterator();
            while (iterator.hasNext()) {
                iterator.next().cancel(true);
            }
        }
    }
    
    private enum ApplifierDownloadEventType
    {
        DownloadCancelled("DownloadCancelled", 1), 
        DownloadCompleted("DownloadCompleted", 0);
    }
    
    private static class CacheDownload extends AsyncTask<String, Integer, String>
    {
        private ApplifierImpactCampaign _campaign;
        private boolean _cancelled;
        private int _downloadLength;
        private URL _downloadUrl;
        private InputStream _input;
        private OutputStream _output;
        private URLConnection _urlConnection;
        
        public CacheDownload(final ApplifierImpactCampaign campaign) {
            super();
            this._downloadUrl = null;
            this._input = null;
            this._output = null;
            this._downloadLength = 0;
            this._urlConnection = null;
            this._cancelled = false;
            this._campaign = null;
            this._campaign = campaign;
        }
        
        private void cancelDownload() {
            String string = "ERROR";
            if (this._downloadUrl != null) {
                string = this._downloadUrl.toString();
            }
            ApplifierImpactUtils.Log("Download cancelled for: " + string, this);
            this.closeAndFlushConnection();
            ApplifierImpactUtils.removeFile(this._campaign.getVideoFilename());
            removeDownload(this._campaign);
            removeFromCacheDownloads(this);
            sendToListeners(ApplifierDownloadEventType.DownloadCancelled, string);
        }
        
        private void closeAndFlushConnection() {
            try {
                this._output.flush();
                this._output.close();
                this._input.close();
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Problems closing connection: " + ex.getMessage(), this);
            }
        }
        
        protected String doInBackground(final String... p0) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: invokestatic    java/lang/System.currentTimeMillis:()J
            //     3: lstore_2       
            //     4: aload_0        
            //     5: new             Ljava/net/URL;
            //     8: dup            
            //     9: aload_1        
            //    10: iconst_0       
            //    11: aaload         
            //    12: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
            //    15: putfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._downloadUrl:Ljava/net/URL;
            //    18: aload_0        
            //    19: aload_0        
            //    20: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._downloadUrl:Ljava/net/URL;
            //    23: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
            //    26: putfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._urlConnection:Ljava/net/URLConnection;
            //    29: aload_0        
            //    30: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._urlConnection:Ljava/net/URLConnection;
            //    33: sipush          10000
            //    36: invokevirtual   java/net/URLConnection.setConnectTimeout:(I)V
            //    39: aload_0        
            //    40: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._urlConnection:Ljava/net/URLConnection;
            //    43: sipush          10000
            //    46: invokevirtual   java/net/URLConnection.setReadTimeout:(I)V
            //    49: aload_0        
            //    50: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._urlConnection:Ljava/net/URLConnection;
            //    53: invokevirtual   java/net/URLConnection.connect:()V
            //    56: aload_0        
            //    57: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._urlConnection:Ljava/net/URLConnection;
            //    60: ifnull          206
            //    63: aload_0        
            //    64: aload_0        
            //    65: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._urlConnection:Ljava/net/URLConnection;
            //    68: invokevirtual   java/net/URLConnection.getContentLength:()I
            //    71: putfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._downloadLength:I
            //    74: aload_0        
            //    75: new             Ljava/io/BufferedInputStream;
            //    78: dup            
            //    79: aload_0        
            //    80: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._downloadUrl:Ljava/net/URL;
            //    83: invokevirtual   java/net/URL.openStream:()Ljava/io/InputStream;
            //    86: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
            //    89: putfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._input:Ljava/io/InputStream;
            //    92: aload_0        
            //    93: aload_0        
            //    94: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
            //    97: invokevirtual   com/fusepowered/a1/campaign/ApplifierImpactCampaign.getVideoFilename:()Ljava/lang/String;
            //   100: invokestatic    com/fusepowered/a1/cache/ApplifierImpactDownloader.access$0:(Ljava/lang/String;)Ljava/io/FileOutputStream;
            //   103: putfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._output:Ljava/io/OutputStream;
            //   106: aload_0        
            //   107: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._output:Ljava/io/OutputStream;
            //   110: ifnonnull       117
            //   113: aload_0        
            //   114: invokevirtual   com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload.onCancelled:()V
            //   117: sipush          1024
            //   120: newarray        B
            //   122: astore          7
            //   124: lconst_0       
            //   125: lstore          8
            //   127: aload_0        
            //   128: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._input:Ljava/io/InputStream;
            //   131: aload           7
            //   133: invokevirtual   java/io/InputStream.read:([B)I
            //   136: istore          11
            //   138: iload           11
            //   140: iconst_m1      
            //   141: if_icmpne       298
            //   144: aload_0        
            //   145: invokespecial   com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload.closeAndFlushConnection:()V
            //   148: invokestatic    java/lang/System.currentTimeMillis:()J
            //   151: lload_2        
            //   152: lsub           
            //   153: lstore          14
            //   155: new             Ljava/lang/StringBuilder;
            //   158: dup            
            //   159: ldc             "File: "
            //   161: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   164: aload_0        
            //   165: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
            //   168: invokevirtual   com/fusepowered/a1/campaign/ApplifierImpactCampaign.getVideoFilename:()Ljava/lang/String;
            //   171: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   174: ldc             " of size: "
            //   176: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   179: lload           8
            //   181: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
            //   184: ldc             " downloaded in: "
            //   186: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   189: lload           14
            //   191: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
            //   194: ldc             "ms"
            //   196: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   199: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   202: aload_0        
            //   203: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   206: aconst_null    
            //   207: areturn        
            //   208: astore          4
            //   210: new             Ljava/lang/StringBuilder;
            //   213: dup            
            //   214: ldc             "Problems with url: "
            //   216: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   219: aload           4
            //   221: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   224: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   227: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   230: aload_0        
            //   231: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   234: aload_0        
            //   235: invokevirtual   com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload.onCancelled:()V
            //   238: aconst_null    
            //   239: areturn        
            //   240: astore          5
            //   242: new             Ljava/lang/StringBuilder;
            //   245: dup            
            //   246: ldc             "Problems opening connection: "
            //   248: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   251: aload           5
            //   253: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   256: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   259: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   262: aload_0        
            //   263: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   266: goto            56
            //   269: astore          6
            //   271: new             Ljava/lang/StringBuilder;
            //   274: dup            
            //   275: ldc             "Problems opening stream: "
            //   277: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   280: aload           6
            //   282: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   285: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   288: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   291: aload_0        
            //   292: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   295: goto            92
            //   298: lload           8
            //   300: iload           11
            //   302: i2l            
            //   303: ladd           
            //   304: lstore          8
            //   306: iconst_1       
            //   307: anewarray       Ljava/lang/Integer;
            //   310: astore          12
            //   312: aload           12
            //   314: iconst_0       
            //   315: ldc2_w          100
            //   318: lload           8
            //   320: lmul           
            //   321: aload_0        
            //   322: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._downloadLength:I
            //   325: i2l            
            //   326: ldiv           
            //   327: l2i            
            //   328: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
            //   331: aastore        
            //   332: aload_0        
            //   333: aload           12
            //   335: invokevirtual   com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload.publishProgress:([Ljava/lang/Object;)V
            //   338: aload_0        
            //   339: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._output:Ljava/io/OutputStream;
            //   342: aload           7
            //   344: iconst_0       
            //   345: iload           11
            //   347: invokevirtual   java/io/OutputStream.write:([BII)V
            //   350: aload_0        
            //   351: getfield        com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload._cancelled:Z
            //   354: istore          13
            //   356: iload           13
            //   358: ifeq            127
            //   361: aconst_null    
            //   362: areturn        
            //   363: astore          10
            //   365: new             Ljava/lang/StringBuilder;
            //   368: dup            
            //   369: ldc             "Problems downloading file: "
            //   371: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   374: aload           10
            //   376: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   379: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   382: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   385: aload_0        
            //   386: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   389: aload_0        
            //   390: invokespecial   com/fusepowered/a1/cache/ApplifierImpactDownloader$CacheDownload.cancelDownload:()V
            //   393: invokestatic    com/fusepowered/a1/cache/ApplifierImpactDownloader.access$1:()V
            //   396: aconst_null    
            //   397: areturn        
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                 
            //  -----  -----  -----  -----  ---------------------
            //  4      18     208    240    Ljava/lang/Exception;
            //  18     56     240    269    Ljava/lang/Exception;
            //  74     92     269    298    Ljava/lang/Exception;
            //  127    138    363    398    Ljava/lang/Exception;
            //  306    356    363    398    Ljava/lang/Exception;
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 186, Size: 186
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        protected void onCancelled() {
            ApplifierImpactUtils.Log("Force stopping download!", this);
            this._cancelled = true;
            this.cancelDownload();
        }
        
        protected void onPostExecute(final String s) {
            if (!this._cancelled) {
                removeDownload(this._campaign);
                removeFromCacheDownloads(this);
                cacheNextFile();
                String string = "ERROR";
                if (this._downloadUrl != null) {
                    string = this._downloadUrl.toString();
                }
                sendToListeners(ApplifierDownloadEventType.DownloadCompleted, string);
                super.onPostExecute((Object)s);
            }
        }
        
        protected void onPreExecute() {
            super.onPreExecute();
        }
        
        protected void onProgressUpdate(final Integer... array) {
            super.onProgressUpdate((Object[])array);
            array[0];
        }
    }
}
