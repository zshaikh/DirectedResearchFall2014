.class public Lcom/bitrhyms/tapjoylib/ShowOffersWithCurrencyID;
.super Ljava/lang/Object;
.source "ShowOffersWithCurrencyID.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/tapjoy/TapjoyViewNotifier;


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
    .locals 4
    .parameter "context"
    .parameter "args"

    .prologue
    .line 15
    invoke-static {p1}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 17
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 18
    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    .line 20
    .local v1, showTab:Z
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tapjoy/TapjoyConnect;->setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V

    .line 22
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/tapjoy/TapjoyConnect;->showOffersWithCurrencyID(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1           #showTab:Z
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 24
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 25
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ERROR_EVENT"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v2, "AIR_AndroidDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public viewDidClose(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 41
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 42
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 43
    const-string v1, "TAPJOY_SHOW_OFFERS_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public viewDidOpen(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 57
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 58
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 59
    const-string v1, "TAPJOY_SHOW_OFFERS_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public viewWillClose(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 33
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 34
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "TAPJOY_SHOW_OFFERS_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public viewWillOpen(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 49
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 50
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 51
    const-string v1, "TAPJOY_SHOW_OFFERS_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method
