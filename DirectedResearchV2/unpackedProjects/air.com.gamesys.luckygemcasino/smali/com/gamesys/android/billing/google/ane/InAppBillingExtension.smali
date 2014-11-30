.class public Lcom/gamesys/android/billing/google/ane/InAppBillingExtension;
.super Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;
.source "InAppBillingExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v1, Lcom/gamesys/android/billing/google/ane/InAppBillingExtension;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gamesys/android/billing/google/ane/InAppBillingExtension;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-direct {v0, p1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "context":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    sget-object v1, Lcom/gamesys/android/billing/google/ane/InAppBillingExtension;->contextMap:Ljava/util/Map;

    const-string v2, "com.android.gamesys.billing.ane.context.GOOGLE_PLAY"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/gamesys/android/billing/google/ane/InAppBillingExtension;->TAG:Ljava/lang/String;

    return-object v0
.end method
