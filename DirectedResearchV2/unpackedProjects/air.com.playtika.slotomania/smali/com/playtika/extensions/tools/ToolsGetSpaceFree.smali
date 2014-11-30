.class public Lcom/playtika/extensions/tools/ToolsGetSpaceFree;
.super Ljava/lang/Object;
.source "ToolsGetSpaceFree.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-double v4, v4

    .line 19
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-double v6, v6

    .line 18
    mul-double v1, v4, v6

    .line 21
    .local v1, "sdAvailSize":D
    invoke-static {v1, v2}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 24
    .end local v1    # "sdAvailSize":D
    .end local v3    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v4

    goto :goto_0
.end method
