.class public Lcom/playtika/extensions/tools/ToolsGetSpaceTotal;
.super Ljava/lang/Object;
.source "ToolsGetSpaceTotal.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    const/4 v4, 0x0

    .line 19
    .local v4, "result":Lcom/adobe/fre/FREObject;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 20
    .local v3, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 21
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v0, v10

    .line 22
    .local v0, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v6, v10

    .line 23
    .local v6, "totalBlocks":J
    mul-long v8, v6, v0

    .line 26
    .local v8, "totalSpace":J
    long-to-double v10, v8

    :try_start_0
    invoke-static {v10, v11}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 31
    :goto_0
    return-object v4

    .line 27
    :catch_0
    move-exception v2

    .line 28
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
