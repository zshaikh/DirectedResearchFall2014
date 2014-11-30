.class public Lcom/gamesys/android/tools/ane/file/ZipUtility;
.super Ljava/lang/Object;
.source "ZipUtility.java"


# static fields
.field private static final GAMESYS_DIR_NAME:Ljava/lang/String; = "com.gamesys.android.zip"

.field private static final TAG:Ljava/lang/String;

.field private static zipBaseDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/gamesys/android/tools/ane/file/ZipUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/file/ZipUtility;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesys/android/tools/ane/file/ZipUtility;->zipBaseDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureDirExists(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    .line 218
    .local v0, "f":Ljava/io/File;
    if-eqz p1, :cond_2

    .line 219
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .restart local v0    # "f":Ljava/io/File;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 221
    :cond_2
    move-object v0, p0

    goto :goto_1
.end method

.method public static getZipBaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v1, Lcom/gamesys/android/tools/ane/file/ZipUtility;->zipBaseDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 39
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 40
    .local v0, "base":Ljava/io/File;
    const-string v1, "com.gamesys.android.zip"

    invoke-static {v0, v1}, Lcom/gamesys/android/tools/ane/file/ZipUtility;->ensureDirExists(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    new-instance v1, Ljava/io/File;

    const-string v2, "com.gamesys.android.zip"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/gamesys/android/tools/ane/file/ZipUtility;->zipBaseDir:Ljava/io/File;

    .line 43
    .end local v0    # "base":Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/gamesys/android/tools/ane/file/ZipUtility;->zipBaseDir:Ljava/io/File;

    return-object v1
.end method

.method public static unZipFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "zipFileFullPath"    # Ljava/lang/String;
    .param p2, "unzipDirFullPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 59
    const/4 v0, 0x0

    .line 62
    .local v0, "destPath":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 63
    new-instance v0, Ljava/io/File;

    .end local v0    # "destPath":Ljava/io/File;
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v0    # "destPath":Ljava/io/File;
    invoke-static {v0, v6}, Lcom/gamesys/android/tools/ane/file/ZipUtility;->ensureDirExists(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_2

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/file/ZipUtility;->getZipBaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 72
    :cond_2
    const/4 v3, 0x0

    .line 76
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    move-object v3, v4

    .line 86
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 88
    :try_start_1
    invoke-static {v0, v3}, Lcom/gamesys/android/tools/ane/file/ZipUtility;->unZipStream(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v5

    .line 89
    .local v5, "res":Z
    if-nez v5, :cond_3

    .line 90
    const/4 v0, 0x0

    .line 91
    sget-object v7, Lcom/gamesys/android/tools/ane/file/ZipUtility;->TAG:Ljava/lang/String;

    const-string v8, "Unable to unzip the file"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v5    # "res":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 99
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 105
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :cond_5
    return-object v6

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 80
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e1":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 82
    :try_start_4
    sget-object v7, Lcom/gamesys/android/tools/ane/file/ZipUtility;->TAG:Ljava/lang/String;

    const-string v8, "Unable to find the file"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 97
    if-eqz v3, :cond_6

    .line 99
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 104
    :cond_6
    :goto_2
    throw v6

    .line 100
    :catch_2
    move-exception v7

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_1
.end method

.method public static unZipFileAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/tools/ane/file/IAsyncListener;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "zipFileFullPath"    # Ljava/lang/String;
    .param p2, "unzipDirFullPath"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    .prologue
    .line 117
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 118
    .local v5, "handler":Landroid/os/Handler;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/tools/ane/file/IAsyncListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method

.method public static unZipStream(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 12
    .param p0, "zipDir"    # Ljava/io/File;
    .param p1, "zipInStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v8, 0x0

    .line 165
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 167
    .local v7, "zipStream":Ljava/util/zip/ZipInputStream;
    const/4 v4, 0x0

    .line 169
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-nez v4, :cond_1

    .line 195
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    .line 196
    const/4 v8, 0x1

    .line 202
    :cond_0
    :goto_1
    return v8

    .line 170
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "dirName":Ljava/lang/String;
    sget-object v9, Lcom/gamesys/android/tools/ane/file/ZipUtility;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unzipping "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 175
    invoke-static {p0, v1}, Lcom/gamesys/android/tools/ane/file/ZipUtility;->ensureDirExists(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v1    # "dirName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    if-eqz v4, :cond_0

    .line 200
    sget-object v9, Lcom/gamesys/android/tools/ane/file/ZipUtility;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to unzip: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dirName":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v5, "zipFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    .local v6, "zipFileOutStream":Ljava/io/FileOutputStream;
    const/high16 v9, 0x10000

    new-array v0, v9, [B

    .line 185
    .local v0, "buffer":[B
    :cond_3
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v7, v0, v9, v10}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    .line 186
    .local v3, "read":I
    if-lez v3, :cond_4

    .line 187
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 184
    :cond_4
    if-gez v3, :cond_3

    .line 191
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 192
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
