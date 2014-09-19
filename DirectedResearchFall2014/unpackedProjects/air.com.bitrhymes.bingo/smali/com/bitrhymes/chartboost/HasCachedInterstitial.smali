.class public Lcom/bitrhymes/chartboost/HasCachedInterstitial;
.super Ljava/lang/Object;
.source "HasCachedInterstitial.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static final TAG:Ljava/lang/String; = "Chartboost"


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
    .locals 9
    .parameter "context"
    .parameter "arg1"

    .prologue
    const-string v7, "Chartboost"

    const-string v8, ","

    .line 18
    :try_start_0
    const-string v5, "Chartboost"

    const-string v6, " ** Chartboost_hasCachedInterstitial**"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, location:Ljava/lang/String;
    const/4 v3, 0x0

    .line 22
    .local v3, hasCached:Z
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 23
    .local v0, _cb:Lcom/chartboost/sdk/Chartboost;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 24
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Chartboost;->hasCachedInterstitial(Ljava/lang/String;)Z

    move-result v3

    .line 28
    :goto_0
    const/4 v2, 0x0

    .line 30
    .local v2, freObj:Lcom/adobe/fre/FREObject;
    if-eqz v3, :cond_1

    const-string v5, "1"

    :goto_1
    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    move-object v5, v2

    .line 38
    .end local v0           #_cb:Lcom/chartboost/sdk/Chartboost;
    .end local v2           #freObj:Lcom/adobe/fre/FREObject;
    .end local v3           #hasCached:Z
    .end local v4           #location:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 26
    .restart local v0       #_cb:Lcom/chartboost/sdk/Chartboost;
    .restart local v3       #hasCached:Z
    .restart local v4       #location:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->hasCachedInterstitial()Z

    move-result v3

    goto :goto_0

    .line 30
    .restart local v2       #freObj:Lcom/adobe/fre/FREObject;
    :cond_1
    const-string v5, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 33
    .end local v0           #_cb:Lcom/chartboost/sdk/Chartboost;
    .end local v2           #freObj:Lcom/adobe/fre/FREObject;
    .end local v3           #hasCached:Z
    .end local v4           #location:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 34
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Chartboost"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v5, "ERROR_EVENT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/bitrhymes/chartboost/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v5, 0x0

    goto :goto_2
.end method
