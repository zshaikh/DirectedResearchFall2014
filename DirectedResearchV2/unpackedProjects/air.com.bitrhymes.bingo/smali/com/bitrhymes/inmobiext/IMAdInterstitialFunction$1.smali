.class Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;
.super Ljava/lang/Object;
.source "IMAdInterstitialFunction.java"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;


# direct methods
.method constructor <init>(Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;->this$0:Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 3
    .param p1, "adInterstitial"    # Lcom/inmobi/androidsdk/IMAdInterstitial;
    .param p2, "errorCode"    # Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;->this$0:Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;

    # getter for: Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->access$0(Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "fullscreen_failed"

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onAdRequestFailed, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onAdRequestLoaded(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3
    .param p1, "adInterstitial"    # Lcom/inmobi/androidsdk/IMAdInterstitial;

    .prologue
    .line 81
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onAdRequestLoaded, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;->this$0:Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;

    iget-object v0, v0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mIMAdInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->getState()Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;->this$0:Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;

    iget-object v0, v0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mIMAdInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->show()V

    .line 88
    :cond_0
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3
    .param p1, "adInterstitial"    # Lcom/inmobi/androidsdk/IMAdInterstitial;

    .prologue
    .line 59
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onDismissAdScreen, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;->this$0:Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;

    # getter for: Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->access$0(Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 63
    const-string v1, "fullscreen_success"

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3
    .param p1, "adInterstitial"    # Lcom/inmobi/androidsdk/IMAdInterstitial;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;->this$0:Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;

    # getter for: Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->access$0(Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "fullscreen_exit"

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onLeaveApplication, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3
    .param p1, "adInterstitial"    # Lcom/inmobi/androidsdk/IMAdInterstitial;

    .prologue
    .line 51
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onShowAdScreen, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;->this$0:Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;

    # getter for: Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->access$0(Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "fullscreen_success"

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
