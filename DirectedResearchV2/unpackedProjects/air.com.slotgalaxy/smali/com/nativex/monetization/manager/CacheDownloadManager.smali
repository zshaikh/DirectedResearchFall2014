.class public Lcom/nativex/monetization/manager/CacheDownloadManager;
.super Ljava/lang/Object;
.source "CacheDownloadManager.java"


# static fields
.field public static final EXTERNAL_STORAGE_FOLDER:Ljava/lang/String; = "nativex"

.field private static MAX_PARALLEL_DOWNLOADS:I

.field private static activeDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadManager:Landroid/app/DownloadManager;

.field private static downloadQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadReceiver:Lcom/nativex/monetization/receivers/DownloadReceiver;

.field private static instance:Lcom/nativex/monetization/manager/CacheDownloadManager;

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->MAX_PARALLEL_DOWNLOADS:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadQueue:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->activeDownloads:Ljava/util/ArrayList;

    .line 70
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/manager/CacheDownloadManager;
    check-cast p0, Landroid/app/DownloadManager;

    sput-object p0, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    .line 71
    return-void
.end method

.method private download(Lcom/nativex/monetization/business/CacheFile;)V
    .locals 11
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 126
    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "downloadUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 130
    .local v2, "downloadUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 131
    .local v5, "request":Landroid/app/DownloadManager$Request;
    new-instance v8, Landroid/app/DownloadManager$Request;

    invoke-direct {v8, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v8, v10}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v8

    const-string v9, "nativex"

    invoke-virtual {v8, v9, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    .line 135
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_0

    .line 136
    invoke-virtual {v5, v10}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 145
    :goto_0
    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nativex/monetization/manager/CacheManager;->getAvailableInternalMemorySize()J

    move-result-wide v6

    .line 146
    .local v6, "size":J
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "######### DEvice free Spce ######### "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    sget-object v8, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v8, v5}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 148
    .local v0, "downloadId":J
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v8

    invoke-virtual {v8, v0, v1, p1}, Lcom/nativex/monetization/manager/CacheDBManager;->addDownloadId(JLcom/nativex/monetization/business/CacheFile;)J

    .line 149
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v8

    sget-object v9, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v8, p1, v9}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    .line 150
    return-void

    .line 141
    .end local v0    # "downloadId":J
    .end local v6    # "size":J
    :cond_0
    invoke-virtual {v5, v10}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    goto :goto_0
.end method

.method public static getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->instance:Lcom/nativex/monetization/manager/CacheDownloadManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/nativex/monetization/manager/CacheDownloadManager;

    invoke-direct {v0}, Lcom/nativex/monetization/manager/CacheDownloadManager;-><init>()V

    sput-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->instance:Lcom/nativex/monetization/manager/CacheDownloadManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->instance:Lcom/nativex/monetization/manager/CacheDownloadManager;

    return-object v0
.end method

.method private initiateDownload(Lcom/nativex/monetization/business/CacheFile;)V
    .locals 2
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "shared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    const-string v1, "Ignoring download as External Media is either Shared or Read only."

    invoke-static {v1}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-direct {p0, p1}, Lcom/nativex/monetization/manager/CacheDownloadManager;->download(Lcom/nativex/monetization/business/CacheFile;)V

    goto :goto_0
.end method

.method private removeActiveDownload(Lcom/nativex/monetization/business/CacheFile;)V
    .locals 1
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 153
    sget-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Lcom/nativex/monetization/manager/CacheDownloadManager;->startNext()V

    .line 155
    return-void
.end method

.method private startNext()V
    .locals 2

    .prologue
    .line 105
    sget-object v1, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    sget-object v1, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/CacheFile;

    .line 107
    .local v0, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    sget-object v1, Lcom/nativex/monetization/manager/CacheDownloadManager;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-direct {p0, v0}, Lcom/nativex/monetization/manager/CacheDownloadManager;->initiateDownload(Lcom/nativex/monetization/business/CacheFile;)V

    .line 110
    .end local v0    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    :cond_0
    return-void
.end method

.method private transferFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "dest"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 268
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v3, "externalSDcardCacheFile":Ljava/io/File;
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "FILENAME":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 273
    .local v4, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 274
    .local v6, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 276
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_0

    .line 277
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v1    # "buffer":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v8

    .line 284
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v7

    .line 279
    .restart local v1    # "buffer":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 280
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    const/4 v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public calculateMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 289
    const-string v4, ""

    .line 291
    .local v4, "md5":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, "externalSDcardCacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v5, v4

    .line 312
    .end local v2    # "externalSDcardCacheFile":Ljava/io/File;
    .end local v4    # "md5":Ljava/lang/String;
    .local v5, "md5":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 296
    .end local v5    # "md5":Ljava/lang/String;
    .restart local v2    # "externalSDcardCacheFile":Ljava/io/File;
    .restart local v4    # "md5":Ljava/lang/String;
    :cond_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 297
    .local v6, "messageDigest":Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 298
    .local v3, "inputStream":Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 301
    .local v0, "buffer":[B
    :cond_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 302
    .local v7, "numRead":I
    if-lez v7, :cond_2

    .line 303
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 305
    :cond_2
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 307
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "buffer":[B
    .end local v2    # "externalSDcardCacheFile":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "messageDigest":Ljava/security/MessageDigest;
    .end local v7    # "numRead":I
    :goto_1
    move-object v5, v4

    .line 312
    .end local v4    # "md5":Ljava/lang/String;
    .restart local v5    # "md5":Ljava/lang/String;
    goto :goto_0

    .line 309
    .end local v5    # "md5":Ljava/lang/String;
    .restart local v4    # "md5":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public cancelDownload(Lcom/nativex/monetization/business/CacheFile;)V
    .locals 10
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    const/4 v9, 0x1

    .line 162
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nativex/monetization/manager/CacheDBManager;->getDownloadMap()Ljava/util/List;

    move-result-object v1

    .line 163
    .local v1, "downloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/DownloadMap;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/DownloadMap;

    .line 164
    .local v0, "downloadMap":Lcom/nativex/monetization/business/DownloadMap;
    invoke-virtual {v0}, Lcom/nativex/monetization/business/DownloadMap;->getCacheFile()Lcom/nativex/monetization/business/CacheFile;

    move-result-object v3

    .line 165
    .local v3, "mapCacheFile":Lcom/nativex/monetization/business/CacheFile;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 169
    sget-object v4, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    if-eqz v4, :cond_1

    .line 170
    sget-object v4, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    new-array v5, v9, [J

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/nativex/monetization/business/DownloadMap;->getDownloadId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->remove([J)I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Successfully cancelled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nativex/monetization/business/DownloadMap;->getCacheFile()Lcom/nativex/monetization/business/CacheFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeActiveDownload(Lcom/nativex/monetization/business/CacheFile;)V

    .line 173
    invoke-virtual {v0}, Lcom/nativex/monetization/business/DownloadMap;->getDownloadId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeDownloadId(J)V

    .line 179
    .end local v0    # "downloadMap":Lcom/nativex/monetization/business/DownloadMap;
    .end local v3    # "mapCacheFile":Lcom/nativex/monetization/business/CacheFile;
    :cond_1
    return-void
.end method

.method public getCacheFile(J)Lcom/nativex/monetization/business/CacheFile;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 182
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheFileForDownloadId(J)Lcom/nativex/monetization/business/CacheFile;

    move-result-object v0

    return-object v0
.end method

.method public push(Lcom/nativex/monetization/business/CacheFile;)V
    .locals 2
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 98
    sget-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/nativex/monetization/manager/CacheDownloadManager;->MAX_PARALLEL_DOWNLOADS:I

    if-ge v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/nativex/monetization/manager/CacheDownloadManager;->startNext()V

    .line 102
    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadReceiver:Lcom/nativex/monetization/receivers/DownloadReceiver;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/nativex/monetization/receivers/DownloadReceiver;

    invoke-direct {v1}, Lcom/nativex/monetization/receivers/DownloadReceiver;-><init>()V

    sput-object v1, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadReceiver:Lcom/nativex/monetization/receivers/DownloadReceiver;

    .line 81
    :cond_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadReceiver:Lcom/nativex/monetization/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public removeDownloadId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 158
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nativex/monetization/manager/CacheDBManager;->deleteDownloadId(J)J

    .line 159
    return-void
.end method

.method public declared-synchronized removeDownloadedFilesFromSDCard()V
    .locals 6

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nativex/monetization/manager/CacheDBManager;->getDownloadedFiles()Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, "downloadedFilesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "state":Ljava/lang/String;
    const-string v5, "shared"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 325
    :cond_0
    const-string v5, "SDCard is not accessible. Ignoring the remove downloaded files from sdcard as for now."

    invoke-static {v5}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_1
    monitor-exit p0

    return-void

    .line 329
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 332
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->deleteDownloadedFile(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    .end local v0    # "downloadedFilesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 334
    .restart local v0    # "downloadedFilesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "state":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->deleteDownloadedFile(Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setMaxParallelDownloads(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 94
    sput p1, Lcom/nativex/monetization/manager/CacheDownloadManager;->MAX_PARALLEL_DOWNLOADS:I

    .line 95
    return-void
.end method

.method public stopAllDownloads()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 343
    sget-object v3, Lcom/nativex/monetization/manager/CacheDownloadManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 344
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nativex/monetization/manager/CacheDBManager;->getDownloadMap()Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, "downloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/DownloadMap;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/DownloadMap;

    .line 347
    .local v0, "downloadMap":Lcom/nativex/monetization/business/DownloadMap;
    sget-object v4, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    if-eqz v4, :cond_0

    .line 348
    sget-object v4, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/nativex/monetization/business/DownloadMap;->getDownloadId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->remove([J)I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Successfully cancelled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nativex/monetization/business/DownloadMap;->getCacheFile()Lcom/nativex/monetization/business/CacheFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Lcom/nativex/monetization/business/DownloadMap;->getDownloadId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeDownloadId(J)V

    goto :goto_0

    .line 356
    .end local v0    # "downloadMap":Lcom/nativex/monetization/business/DownloadMap;
    .end local v1    # "downloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/DownloadMap;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 355
    .restart local v1    # "downloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/DownloadMap;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/nativex/monetization/manager/CacheDownloadManager;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 356
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadReceiver:Lcom/nativex/monetization/receivers/DownloadReceiver;

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadReceiver:Lcom/nativex/monetization/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/manager/CacheDownloadManager;->downloadReceiver:Lcom/nativex/monetization/receivers/DownloadReceiver;

    .line 91
    :cond_1
    return-void
.end method

.method public declared-synchronized updateDownloadStatus(JLandroid/content/Context;)V
    .locals 18
    .param p1, "downloadId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    const-string v15, "download"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/DownloadManager;

    .line 204
    .local v7, "downloadManager":Landroid/app/DownloadManager;
    new-instance v9, Landroid/app/DownloadManager$Query;

    invoke-direct {v9}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 205
    .local v9, "query":Landroid/app/DownloadManager$Query;
    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v16, 0x0

    aput-wide p1, v15, v16

    invoke-virtual {v9, v15}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 206
    invoke-virtual {v7, v9}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheFileForDownloadId(J)Lcom/nativex/monetization/business/CacheFile;

    move-result-object v4

    .line 209
    .local v4, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 212
    const-string v15, "status"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 213
    .local v5, "columnIndex":I
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 215
    .local v14, "status":I
    const/16 v15, 0x8

    if-ne v14, v15, :cond_2

    .line 216
    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nativex/monetization/manager/CacheManager;->getAvailableInternalMemorySize()J

    move-result-wide v12

    .line 217
    .local v12, "size":J
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "######### DEvice free Spce after download ######### "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    const-string v15, "local_uri"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 220
    .local v11, "sdCardfileUri":Ljava/lang/String;
    invoke-static {v11}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, "sdCardfilePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/manager/CacheDownloadManager;->calculateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "md5":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 226
    invoke-virtual {v4}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 228
    invoke-virtual {v4}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v10

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/manager/CacheDownloadManager;->transferFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 229
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    sget-object v16, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    .line 230
    invoke-virtual/range {p0 .. p2}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeDownloadId(J)V

    .line 231
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeActiveDownload(Lcom/nativex/monetization/business/CacheFile;)V

    .line 232
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/nativex/monetization/manager/CacheDBManager;->addDownloadedFile(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v5    # "columnIndex":I
    .end local v8    # "md5":Ljava/lang/String;
    .end local v10    # "sdCardfilePath":Ljava/lang/String;
    .end local v11    # "sdCardfileUri":Ljava/lang/String;
    .end local v12    # "size":J
    .end local v14    # "status":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    .restart local v5    # "columnIndex":I
    .restart local v8    # "md5":Ljava/lang/String;
    .restart local v10    # "sdCardfilePath":Ljava/lang/String;
    .restart local v11    # "sdCardfileUri":Ljava/lang/String;
    .restart local v12    # "size":J
    .restart local v14    # "status":I
    :cond_1
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MD5 Mismatch found for the cache file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 238
    const-string v15, "Cache.BadMD5"

    invoke-static {v15}, Lcom/nativex/common/StatsDManager;->incrementCounter(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    sget-object v16, Lcom/nativex/monetization/enums/CacheError;->CHECKSUM_FAILED:Lcom/nativex/monetization/enums/CacheError;

    invoke-virtual {v4}, Lcom/nativex/monetization/business/CacheFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/nativex/monetization/manager/CacheDBManager;->addCacheError(Lcom/nativex/monetization/enums/CacheError;Ljava/lang/String;)J

    .line 240
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    sget-object v16, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    .line 241
    invoke-virtual/range {p0 .. p2}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeDownloadId(J)V

    .line 242
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeActiveDownload(Lcom/nativex/monetization/business/CacheFile;)V

    .line 243
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/nativex/monetization/manager/CacheDBManager;->addDownloadedFile(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    .end local v4    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    .end local v5    # "columnIndex":I
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "downloadManager":Landroid/app/DownloadManager;
    .end local v8    # "md5":Ljava/lang/String;
    .end local v9    # "query":Landroid/app/DownloadManager$Query;
    .end local v10    # "sdCardfilePath":Ljava/lang/String;
    .end local v11    # "sdCardfileUri":Ljava/lang/String;
    .end local v12    # "size":J
    .end local v14    # "status":I
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 247
    .restart local v4    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    .restart local v5    # "columnIndex":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "downloadManager":Landroid/app/DownloadManager;
    .restart local v9    # "query":Landroid/app/DownloadManager$Query;
    .restart local v14    # "status":I
    :cond_2
    const/16 v15, 0x10

    if-ne v14, v15, :cond_3

    .line 248
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DownloadManager.STATUS_FAILED observed for cache file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 249
    const-string v15, "Cache.DownloadFailed"

    invoke-static {v15}, Lcom/nativex/common/StatsDManager;->incrementCounter(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    sget-object v16, Lcom/nativex/monetization/enums/CacheError;->DOWNLOAD_FAILED:Lcom/nativex/monetization/enums/CacheError;

    invoke-virtual {v4}, Lcom/nativex/monetization/business/CacheFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/nativex/monetization/manager/CacheDBManager;->addCacheError(Lcom/nativex/monetization/enums/CacheError;Ljava/lang/String;)J

    .line 251
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    sget-object v16, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    .line 252
    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v16, 0x0

    aput-wide p1, v15, v16

    invoke-virtual {v7, v15}, Landroid/app/DownloadManager;->remove([J)I

    .line 253
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeActiveDownload(Lcom/nativex/monetization/business/CacheFile;)V

    .line 254
    invoke-virtual/range {p0 .. p2}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeDownloadId(J)V

    goto/16 :goto_0

    .line 256
    :cond_3
    const/4 v15, 0x4

    if-ne v14, v15, :cond_4

    .line 257
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DownloadManager.STATUS_PAUSED observed for cache file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    sget-object v16, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    goto/16 :goto_0

    .line 260
    :cond_4
    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 261
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v15

    sget-object v16, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateDownloadStatus(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    monitor-enter p0

    const/4 v1, 0x0

    .line 193
    .local v1, "downloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/DownloadMap;>;"
    :try_start_0
    sget-object v3, Lcom/nativex/monetization/manager/CacheDownloadManager;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nativex/monetization/manager/CacheDBManager;->getDownloadMap()Ljava/util/List;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/DownloadMap;

    .line 196
    .local v0, "downloadMap":Lcom/nativex/monetization/business/DownloadMap;
    invoke-virtual {v0}, Lcom/nativex/monetization/business/DownloadMap;->getDownloadId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p1}, Lcom/nativex/monetization/manager/CacheDownloadManager;->updateDownloadStatus(JLandroid/content/Context;)V

    goto :goto_0

    .line 198
    .end local v0    # "downloadMap":Lcom/nativex/monetization/business/DownloadMap;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 198
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    monitor-exit p0

    return-void
.end method
