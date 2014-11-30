.class public Lcom/playtika/extensions/tools/ToolsGetRAMTotal;
.super Ljava/lang/Object;
.source "ToolsGetRAMTotal.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    const/4 v5, 0x0

    .line 17
    .local v5, "result":Lcom/adobe/fre/FREObject;
    const/4 v3, 0x0

    .line 18
    .local v3, "reader":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 20
    .local v2, "load":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "/proc/meminfo"

    const-string v7, "r"

    invoke-direct {v4, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .local v4, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 22
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    move-object v3, v4

    .line 30
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_2
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;
    :try_end_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 35
    :goto_1
    return-object v5

    .line 23
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 24
    .local v1, "ex":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 32
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1

    .line 23
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
