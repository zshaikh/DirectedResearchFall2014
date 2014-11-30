.class public Lcom/playtika/extensions/adx/AdxLogEventFunction;
.super Ljava/lang/Object;
.source "AdxLogEventFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v9, 0x0

    const-string v10, "Adx"

    .line 17
    if-eqz p2, :cond_0

    array-length v7, p2

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    .line 19
    :cond_0
    const-string v7, "Adx"

    const-string v7, "Not enough params!"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 40
    :goto_0
    return-object v7

    .line 25
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "eventName":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, "price":Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "currency":Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/adx/AdxExtensionContext;

    move-object v1, v0

    .line 30
    .local v1, "ctx":Lcom/playtika/extensions/adx/AdxExtensionContext;
    invoke-virtual {v1}, Lcom/playtika/extensions/adx/AdxExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 33
    .local v6, "tmp":Landroid/content/Context;
    invoke-static {v6, v4, v5, v2}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "ctx":Lcom/playtika/extensions/adx/AdxExtensionContext;
    .end local v2    # "currency":Ljava/lang/String;
    .end local v4    # "eventName":Ljava/lang/String;
    .end local v5    # "price":Ljava/lang/String;
    .end local v6    # "tmp":Landroid/content/Context;
    :goto_1
    move-object v7, v9

    .line 40
    goto :goto_0

    .line 35
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 37
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "Adx"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
