.class public Lcom/gamesys/android/billing/ane/BillingExtension;
.super Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;
.source "BillingExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 5
    .param p1, "contextName"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v2, Lcom/gamesys/android/billing/ane/BillingExtension;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gamesys/android/billing/ane/BillingExtension;->TAG:Ljava/lang/String;

    .line 28
    move-object v0, p1

    .line 30
    .local v0, "actualCtxName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 34
    .local v1, "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    const-string v2, "com.android.gamesys.billing.ane.context.AUTO"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.gamesys.billing.ane.context.APPLE_STORE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    invoke-static {}, Lcom/gamesys/android/common/tools/ToolsBox;->isInstalledFromGoogle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 38
    const-string v0, "com.android.gamesys.billing.ane.context.AMAZONE_STORE"

    .line 45
    :cond_1
    :goto_0
    const-string v2, "com.android.gamesys.billing.ane.context.GOOGLE_PLAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 48
    if-nez v1, :cond_2

    .line 49
    new-instance v1, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    .end local v1    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    invoke-direct {v1, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v1    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    :cond_2
    sget-object v2, Lcom/gamesys/android/billing/ane/BillingExtension;->contextMap:Ljava/util/Map;

    const-string v3, "com.android.gamesys.billing.ane.context.GOOGLE_PLAY"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_3
    :goto_1
    sget-object v2, Lcom/gamesys/android/billing/ane/BillingExtension;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Context choosen: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcom/gamesys/android/billing/ane/BillingExtension;->getContext(Ljava/lang/String;)Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    move-result-object v2

    return-object v2

    .line 40
    :cond_4
    const-string v0, "com.android.gamesys.billing.ane.context.GOOGLE_PLAY"

    goto :goto_0

    .line 52
    :cond_5
    const-string v2, "com.android.gamesys.billing.ane.context.AMAZONE_STORE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    sget-object v2, Lcom/gamesys/android/billing/ane/BillingExtension;->contextMap:Ljava/util/Map;

    const-string v3, "com.android.gamesys.billing.ane.context.AMAZONE_STORE"

    new-instance v4, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-direct {v4, v0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/gamesys/android/billing/ane/BillingExtension;->TAG:Ljava/lang/String;

    return-object v0
.end method
