package com.adobe.air;

import java.io.*;
import java.util.zip.*;
import java.util.*;

public final class ApplicationFileManager
{
    private static final String APP_PREFIX = "app";
    private static final String APP_XML_PATH = "META-INF/AIR/application.xml";
    private static final String ASSET_STRING = "assets";
    public static String sAndroidPackageName;
    public static String sApkPath;
    public static String sAppDataPath;
    public static String sInitialContentName;
    private final int BUFFER_SIZE;
    private final int DEFAULT_SIZE;
    private HashMap<Object, Object> mFileInfoMap;
    
    ApplicationFileManager() {
        super();
        this.BUFFER_SIZE = 8192;
        this.DEFAULT_SIZE = -1;
        this.mFileInfoMap = new HashMap<Object, Object>();
        this.procZipContents(this.getApkPathFile());
    }
    
    private static void RefreshAppCache(final String s, final String str) {
        if (new File(s + File.separator + str).exists()) {
            return;
        }
        deleteDir(new File(s));
    }
    
    public static void checkAndCreateAppDataDir() {
        final File file = new File(ApplicationFileManager.sAppDataPath);
        if (file.exists()) {
            return;
        }
        try {
            file.mkdirs();
        }
        catch (SecurityException ex) {}
    }
    
    private void closeInputStream(final InputStream inputStream) throws Exception {
        inputStream.close();
    }
    
    private void closeOutputStream(final OutputStream outputStream) throws Exception {
        outputStream.flush();
        outputStream.close();
    }
    
    public static boolean deleteDir(final File file) {
        if (file.isDirectory()) {
            final File[] listFiles = file.listFiles();
            for (int length = listFiles.length, i = 0; i < length; ++i) {
                if (!deleteDir(listFiles[i])) {
                    return false;
                }
            }
        }
        return file.delete();
    }
    
    public static boolean deleteUnzippedContents(final String pathname) {
        final File file = new File(pathname);
        if (file.isDirectory()) {
            final File[] listFiles = file.listFiles();
            for (int i = 0; i < listFiles.length; ++i) {
                deleteUnzippedContents(listFiles[i].getAbsolutePath());
            }
        }
        return file.delete();
    }
    
    public static String getAndroidApkPath() {
        return ApplicationFileManager.sApkPath;
    }
    
    public static String getAndroidAppDataPath() {
        return ApplicationFileManager.sAppDataPath;
    }
    
    public static String getAndroidUnzipContentPath() {
        return ApplicationFileManager.sAppDataPath;
    }
    
    private File getApkPathFile() {
        return new File(getAndroidApkPath());
    }
    
    public static String getAppRoot() {
        return getAndroidUnzipContentPath() + File.separatorChar + "assets";
    }
    
    public static String getAppXMLRoot() {
        return getAndroidUnzipContentPath() + File.separatorChar + "META-INF/AIR/application.xml";
    }
    
    public static void processAndroidDataPath(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/lang/StringBuilder;
        //     3: dup            
        //     4: invokespecial   java/lang/StringBuilder.<init>:()V
        //     7: aload_0        
        //     8: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    11: getstatic       java/io/File.separator:Ljava/lang/String;
        //    14: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    17: ldc             "app"
        //    19: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    22: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    25: astore_1       
        //    26: invokestatic    com/adobe/air/AndroidActivityWrapper.GetAndroidActivityWrapper:()Lcom/adobe/air/AndroidActivityWrapper;
        //    29: invokevirtual   com/adobe/air/AndroidActivityWrapper.getActivity:()Landroid/app/Activity;
        //    32: invokevirtual   android/app/Activity.getPackageManager:()Landroid/content/pm/PackageManager;
        //    35: invokestatic    com/adobe/air/AndroidActivityWrapper.GetAndroidActivityWrapper:()Lcom/adobe/air/AndroidActivityWrapper;
        //    38: invokevirtual   com/adobe/air/AndroidActivityWrapper.getActivity:()Landroid/app/Activity;
        //    41: invokevirtual   android/app/Activity.getComponentName:()Landroid/content/ComponentName;
        //    44: sipush          128
        //    47: invokevirtual   android/content/pm/PackageManager.getActivityInfo:(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
        //    50: getfield        android/content/pm/ActivityInfo.metaData:Landroid/os/Bundle;
        //    53: astore          9
        //    55: aload           9
        //    57: ifnull          210
        //    60: aload           9
        //    62: ldc             "uniqueappversionid"
        //    64: invokevirtual   android/os/Bundle.get:(Ljava/lang/String;)Ljava/lang/Object;
        //    67: checkcast       Ljava/lang/String;
        //    70: astore          10
        //    72: aload_1        
        //    73: aload           10
        //    75: invokestatic    com/adobe/air/ApplicationFileManager.RefreshAppCache:(Ljava/lang/String;Ljava/lang/String;)V
        //    78: aload           9
        //    80: ldc             "initialcontent"
        //    82: invokevirtual   android/os/Bundle.get:(Ljava/lang/String;)Ljava/lang/Object;
        //    85: checkcast       Ljava/lang/String;
        //    88: astore          5
        //    90: aload           10
        //    92: astore          4
        //    94: new             Ljava/lang/StringBuilder;
        //    97: dup            
        //    98: invokespecial   java/lang/StringBuilder.<init>:()V
        //   101: aload_1        
        //   102: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   105: getstatic       java/io/File.separator:Ljava/lang/String;
        //   108: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   111: aload           4
        //   113: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   116: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   119: invokestatic    com/adobe/air/ApplicationFileManager.setAndroidDataPath:(Ljava/lang/String;)V
        //   122: new             Ljava/io/File;
        //   125: dup            
        //   126: new             Ljava/lang/StringBuilder;
        //   129: dup            
        //   130: invokespecial   java/lang/StringBuilder.<init>:()V
        //   133: aload_1        
        //   134: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   137: getstatic       java/io/File.separator:Ljava/lang/String;
        //   140: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   143: aload           4
        //   145: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   148: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   151: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   154: invokevirtual   java/io/File.mkdirs:()Z
        //   157: pop            
        //   158: aload           5
        //   160: invokestatic    com/adobe/air/ApplicationFileManager.setInitialContentName:(Ljava/lang/String;)V
        //   163: return         
        //   164: astore          7
        //   166: ldc             "app"
        //   168: astore          8
        //   170: aload           8
        //   172: astore          4
        //   174: aconst_null    
        //   175: astore          5
        //   177: goto            94
        //   180: astore_2       
        //   181: ldc             "app"
        //   183: astore_3       
        //   184: aload_3        
        //   185: astore          4
        //   187: aconst_null    
        //   188: astore          5
        //   190: goto            94
        //   193: astore          12
        //   195: aload           10
        //   197: astore_3       
        //   198: goto            184
        //   201: astore          11
        //   203: aload           10
        //   205: astore          8
        //   207: goto            170
        //   210: ldc             "app"
        //   212: astore          4
        //   214: aconst_null    
        //   215: astore          5
        //   217: goto            94
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  26     55     164    170    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  26     55     180    184    Ljava/lang/NullPointerException;
        //  60     72     164    170    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  60     72     180    184    Ljava/lang/NullPointerException;
        //  72     90     201    210    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  72     90     193    201    Ljava/lang/NullPointerException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0094:
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
    
    public static void setAndroidAPKPath(final String sApkPath) {
        ApplicationFileManager.sApkPath = sApkPath;
    }
    
    private static void setAndroidDataPath(final String sAppDataPath) {
        ApplicationFileManager.sAppDataPath = sAppDataPath;
    }
    
    public static void setAndroidPackageName(final String sAndroidPackageName) {
        ApplicationFileManager.sAndroidPackageName = sAndroidPackageName;
    }
    
    private static void setInitialContentName(final String sInitialContentName) {
        ApplicationFileManager.sInitialContentName = sInitialContentName;
    }
    
    public boolean addToCache(final String s) {
        return ApplicationFileManager.sInitialContentName != null && s.indexOf(ApplicationFileManager.sInitialContentName) != -1;
    }
    
    public String[] appDirectoryNameList(final String str) {
        String string;
        if (!str.equals("")) {
            string = "assets" + File.separator + str;
        }
        else {
            string = "assets";
        }
        final Iterator<String> iterator = this.mFileInfoMap.keySet().iterator();
        final ArrayList<String> list = new ArrayList<String>();
        while (iterator.hasNext()) {
            final String s = iterator.next();
            if (!s.equals(string) && s.startsWith(string) && -1 == s.indexOf(File.separator, 1 + string.length())) {
                list.add(s.substring(1 + string.length()));
            }
        }
        return list.toArray(new String[0]);
    }
    
    public boolean[] appDirectoryTypeList(final String str) {
        String string;
        if (!str.equals("")) {
            string = "assets" + File.separator + str;
        }
        else {
            string = "assets";
        }
        final Iterator<String> iterator = this.mFileInfoMap.keySet().iterator();
        final ArrayList<Boolean> list = new ArrayList<Boolean>();
        while (iterator.hasNext()) {
            final String key = iterator.next();
            if (!key.equals(string) && key.startsWith(string) && -1 == key.indexOf(File.separator, 1 + string.length())) {
                list.add(new Boolean(((FileInfo)this.mFileInfoMap.get(key)).mIsFile));
            }
        }
        final boolean[] array = new boolean[list.size()];
        for (int i = 0; i < array.length; ++i) {
            array[i] = list.get(i);
        }
        return array;
    }
    
    public void copyFolder(final String str) {
        while (true) {
            Label_0246: {
                if (str.equals("")) {
                    break Label_0246;
                }
                final String string = "assets" + File.separator + str;
                ZipInputStream zipInputStream = null;
            Label_0261:
                while (true) {
                    final String string2 = getAndroidUnzipContentPath() + File.separatorChar;
                    final File apkPathFile = this.getApkPathFile();
                    while (true) {
                        BufferedOutputStream bufferedOutputStream = null;
                        Label_0252: {
                            try {
                                zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(apkPathFile), 8192));
                                String name;
                                do {
                                    final ZipEntry nextEntry = zipInputStream.getNextEntry();
                                    if (nextEntry == null) {
                                        break Label_0261;
                                    }
                                    name = nextEntry.getName();
                                } while (!name.substring(0, "assets".length()).equals("assets") || !name.startsWith(string));
                                final File file = new File(string2 + name);
                                new File(file.getParent()).mkdirs();
                                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 8192);
                                final byte[] array = new byte[8192];
                                while (true) {
                                    final int read = zipInputStream.read(array, 0, 8192);
                                    if (read == -1) {
                                        break Label_0252;
                                    }
                                    bufferedOutputStream.write(array, 0, read);
                                }
                            }
                            catch (Exception ex) {
                                return;
                            }
                            break Label_0246;
                        }
                        this.closeOutputStream(bufferedOutputStream);
                        continue;
                    }
                }
                this.closeInputStream(zipInputStream);
                return;
            }
            final String string = "assets";
            continue;
        }
    }
    
    public void deleteFile(final String pathname) {
        new File(pathname).delete();
    }
    
    public boolean fileExists(final String str) {
        String string;
        if (!str.equals("")) {
            string = "assets" + File.separator + str;
        }
        else {
            string = "assets";
        }
        return this.mFileInfoMap.containsKey(string);
    }
    
    public long getLSize(final String str) {
        final FileInfo fileInfo = this.mFileInfoMap.get("assets" + File.separator + str);
        if (fileInfo != null && fileInfo.mFileSize != -1L) {
            return fileInfo.mFileSize;
        }
        return 0L;
    }
    
    public boolean isDirectory(final String str) {
        String string;
        if (!str.equals("")) {
            string = "assets" + File.separator + str;
        }
        else {
            string = "assets";
        }
        final FileInfo fileInfo = this.mFileInfoMap.get(string);
        return fileInfo != null && fileInfo.mIsDirectory;
    }
    
    public void procZipContents(final File file) {
        try {
            final ZipFile zipFile = new ZipFile(file);
            final Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                final ZipEntry zipEntry = (ZipEntry)entries.nextElement();
                final String name = zipEntry.getName();
                if (name.substring(0, "assets".length()).equals("assets")) {
                    this.mFileInfoMap.put(name, new FileInfo(zipEntry.getSize(), true, false));
                    for (File file2 = new File(name); file2.getParent() != null && this.mFileInfoMap.get(file2.getParent()) == null; file2 = new File(file2.getParent())) {
                        this.mFileInfoMap.put(file2.getParent(), new FileInfo(-1L, false, true));
                    }
                }
            }
            zipFile.close();
        }
        catch (Exception ex) {}
    }
    
    public boolean readFileName(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/lang/StringBuilder;
        //     3: dup            
        //     4: invokespecial   java/lang/StringBuilder.<init>:()V
        //     7: ldc             "assets"
        //     9: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    12: getstatic       java/io/File.separator:Ljava/lang/String;
        //    15: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    18: aload_1        
        //    19: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    22: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    25: astore_2       
        //    26: new             Ljava/lang/StringBuilder;
        //    29: dup            
        //    30: invokespecial   java/lang/StringBuilder.<init>:()V
        //    33: invokestatic    com/adobe/air/ApplicationFileManager.getAndroidUnzipContentPath:()Ljava/lang/String;
        //    36: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    39: getstatic       java/io/File.separatorChar:C
        //    42: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //    45: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    48: astore_3       
        //    49: new             Ljava/io/File;
        //    52: dup            
        //    53: new             Ljava/lang/StringBuilder;
        //    56: dup            
        //    57: invokespecial   java/lang/StringBuilder.<init>:()V
        //    60: aload_3        
        //    61: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    64: aload_2        
        //    65: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    68: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    71: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //    74: astore          4
        //    76: aload           4
        //    78: invokevirtual   java/io/File.exists:()Z
        //    81: ifeq            86
        //    84: iconst_1       
        //    85: ireturn        
        //    86: aload_0        
        //    87: invokespecial   com/adobe/air/ApplicationFileManager.getApkPathFile:()Ljava/io/File;
        //    90: astore          5
        //    92: new             Ljava/util/zip/ZipFile;
        //    95: dup            
        //    96: aload           5
        //    98: invokespecial   java/util/zip/ZipFile.<init>:(Ljava/io/File;)V
        //   101: astore          6
        //   103: aload           6
        //   105: invokevirtual   java/util/zip/ZipFile.entries:()Ljava/util/Enumeration;
        //   108: astore          13
        //   110: aload           13
        //   112: invokeinterface java/util/Enumeration.hasMoreElements:()Z
        //   117: ifeq            278
        //   120: aload           13
        //   122: invokeinterface java/util/Enumeration.nextElement:()Ljava/lang/Object;
        //   127: checkcast       Ljava/util/zip/ZipEntry;
        //   130: astore          15
        //   132: aload           15
        //   134: invokevirtual   java/util/zip/ZipEntry.getName:()Ljava/lang/String;
        //   137: astore          16
        //   139: aload           16
        //   141: iconst_0       
        //   142: ldc             "assets"
        //   144: invokevirtual   java/lang/String.length:()I
        //   147: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   150: ldc             "assets"
        //   152: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   155: ifeq            110
        //   158: aload           16
        //   160: aload_2        
        //   161: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   164: ifeq            296
        //   167: aload           6
        //   169: aload           15
        //   171: invokevirtual   java/util/zip/ZipFile.getInputStream:(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
        //   174: astore          18
        //   176: new             Ljava/io/File;
        //   179: dup            
        //   180: aload           4
        //   182: invokevirtual   java/io/File.getParent:()Ljava/lang/String;
        //   185: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   188: invokevirtual   java/io/File.mkdirs:()Z
        //   191: pop            
        //   192: new             Ljava/io/BufferedOutputStream;
        //   195: dup            
        //   196: new             Ljava/io/FileOutputStream;
        //   199: dup            
        //   200: aload           4
        //   202: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   205: sipush          8192
        //   208: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;I)V
        //   211: astore          20
        //   213: sipush          8192
        //   216: newarray        B
        //   218: astore          21
        //   220: aload           18
        //   222: aload           21
        //   224: invokevirtual   java/io/InputStream.read:([B)I
        //   227: istore          22
        //   229: iload           22
        //   231: iconst_m1      
        //   232: if_icmpeq       266
        //   235: aload           20
        //   237: aload           21
        //   239: iconst_0       
        //   240: iload           22
        //   242: invokevirtual   java/io/BufferedOutputStream.write:([BII)V
        //   245: goto            220
        //   248: astore          10
        //   250: aload           6
        //   252: astore          11
        //   254: aload           11
        //   256: ifnull          264
        //   259: aload           11
        //   261: invokevirtual   java/util/zip/ZipFile.close:()V
        //   264: iconst_1       
        //   265: ireturn        
        //   266: aload_0        
        //   267: aload           18
        //   269: invokespecial   com/adobe/air/ApplicationFileManager.closeInputStream:(Ljava/io/InputStream;)V
        //   272: aload_0        
        //   273: aload           20
        //   275: invokespecial   com/adobe/air/ApplicationFileManager.closeOutputStream:(Ljava/io/OutputStream;)V
        //   278: aload           6
        //   280: ifnull          264
        //   283: aload           6
        //   285: invokevirtual   java/util/zip/ZipFile.close:()V
        //   288: goto            264
        //   291: astore          14
        //   293: goto            264
        //   296: aload           16
        //   298: new             Ljava/lang/StringBuilder;
        //   301: dup            
        //   302: invokespecial   java/lang/StringBuilder.<init>:()V
        //   305: aload_2        
        //   306: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   309: ldc_w           "/"
        //   312: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   315: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   318: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   321: ifeq            110
        //   324: new             Ljava/io/File;
        //   327: dup            
        //   328: new             Ljava/lang/StringBuilder;
        //   331: dup            
        //   332: invokespecial   java/lang/StringBuilder.<init>:()V
        //   335: aload_3        
        //   336: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   339: aload_2        
        //   340: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   343: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   346: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   349: invokevirtual   java/io/File.mkdirs:()Z
        //   352: pop            
        //   353: goto            278
        //   356: astore          7
        //   358: aload           6
        //   360: astore          8
        //   362: aload           8
        //   364: ifnull          372
        //   367: aload           8
        //   369: invokevirtual   java/util/zip/ZipFile.close:()V
        //   372: aload           7
        //   374: athrow         
        //   375: astore          12
        //   377: goto            264
        //   380: astore          9
        //   382: goto            372
        //   385: astore          7
        //   387: aconst_null    
        //   388: astore          8
        //   390: goto            362
        //   393: astore          23
        //   395: aconst_null    
        //   396: astore          11
        //   398: goto            254
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  92     103    393    401    Ljava/lang/Exception;
        //  92     103    385    393    Any
        //  103    110    248    254    Ljava/lang/Exception;
        //  103    110    356    362    Any
        //  110    220    248    254    Ljava/lang/Exception;
        //  110    220    356    362    Any
        //  220    229    248    254    Ljava/lang/Exception;
        //  220    229    356    362    Any
        //  235    245    248    254    Ljava/lang/Exception;
        //  235    245    356    362    Any
        //  259    264    375    380    Ljava/lang/Exception;
        //  266    278    248    254    Ljava/lang/Exception;
        //  266    278    356    362    Any
        //  283    288    291    296    Ljava/lang/Exception;
        //  296    353    248    254    Ljava/lang/Exception;
        //  296    353    356    362    Any
        //  367    372    380    385    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0264:
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
}
