.class public Lcom/bitrhymes/nativeutils/functions/GetAvailableInternalMemorySize;
.super Ljava/lang/Object;
.source "GetAvailableInternalMemorySize.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v12, ","

    .line 20
    const/4 v4, 0x0

    .line 23
    .local v4, "deviceInfoObject":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    .line 24
    .local v7, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 25
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 26
    .local v2, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 27
    .local v0, "availableBlocks":J
    mul-long v9, v0, v2

    invoke-static {v9, v10}, Lcom/bitrhymes/nativeutils/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, "memSize":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    .line 30
    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 37
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "memSize":Ljava/lang/String;
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v4

    .line 32
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "blockSize":J
    .restart local v6    # "memSize":Ljava/lang/String;
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "stat":Landroid/os/StatFs;
    :cond_0
    const-string v9, ""

    invoke-static {v9}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 33
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "memSize":Ljava/lang/String;
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 34
    .local v5, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v5}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    .line 35
    const-string v9, "ERROR_EVENT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/adobe/fre/FREWrongThreadException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/adobe/fre/FREWrongThreadException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/adobe/fre/FREWrongThreadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Lcom/bitrhymes/nativeutils/utils/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
