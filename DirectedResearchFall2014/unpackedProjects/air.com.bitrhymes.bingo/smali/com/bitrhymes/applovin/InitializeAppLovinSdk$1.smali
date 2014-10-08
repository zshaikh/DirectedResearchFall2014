.class Lcom/bitrhymes/applovin/InitializeAppLovinSdk$1;
.super Ljava/lang/Object;
.source "InitializeAppLovinSdk.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/applovin/InitializeAppLovinSdk;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/applovin/InitializeAppLovinSdk;


# direct methods
.method constructor <init>(Lcom/bitrhymes/applovin/InitializeAppLovinSdk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/applovin/InitializeAppLovinSdk$1;->this$0:Lcom/bitrhymes/applovin/InitializeAppLovinSdk;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 31
    const-string v1, "AppLovin-AdLoadListener"

    const-string v2, "Received ad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lcom/bitrhymes/applovin/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 34
    .local v0, "mContext":Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "APPLOVIN_AD_LOAD_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 40
    const-string v1, "AppLovin-AdLoadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to receive ad with error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/bitrhymes/applovin/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 42
    .local v0, "mContext":Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 43
    const-string v1, "APPLOVIN_AD_LOAD_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method
