.class public Lcom/bitrhymes/chartboost/CacheInterstitial;
.super Ljava/lang/Object;
.source "CacheInterstitial.java"

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
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v5, "Chartboost"

    const-string v6, ","

    .line 18
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "location":Ljava/lang/String;
    const-string v3, "Chartboost"

    const-string v4, " ** Chartboost_cacheInterstitial**"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 23
    .local v0, "_cb":Lcom/chartboost/sdk/Chartboost;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 24
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 35
    .end local v0    # "_cb":Lcom/chartboost/sdk/Chartboost;
    .end local v2    # "location":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 26
    .restart local v0    # "_cb":Lcom/chartboost/sdk/Chartboost;
    .restart local v2    # "location":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    .end local v0    # "_cb":Lcom/chartboost/sdk/Chartboost;
    .end local v2    # "location":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Chartboost"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Errore:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v3, "ERROR_EVENT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 32
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/bitrhymes/chartboost/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {p1, v3, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
