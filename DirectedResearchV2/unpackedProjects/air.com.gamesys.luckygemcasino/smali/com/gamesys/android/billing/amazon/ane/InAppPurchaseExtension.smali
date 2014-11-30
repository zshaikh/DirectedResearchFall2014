.class public Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseExtension;
.super Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;
.source "InAppPurchaseExtension.java"


# static fields
.field public static final AMAZON_SDK_TESTER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.testclient"

.field public static final CODE_ERROR_NO_TESTER_SDK_FOUND:Ljava/lang/String; = "com.gamesys.android.billing.common.ane.CODE_ERROR_NO_TESTER_SDK_FOUND"

.field public static final LEVEL_BUY_ITEM_ERROR_REVOKED_ITEM:Ljava/lang/String; = "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE_ERROR_REVOKED_ITEM"

.field public static final LEVEL_QUERY_ITEM_STORE_ERROR_UNAVAILABLE_ITEM:Ljava/lang/String; = "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR_UNAVAILABLE_ITEM"


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
    .line 35
    const-class v1, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseExtension;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseExtension;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-direct {v0, p1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "context":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    sget-object v1, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseExtension;->contextMap:Ljava/util/Map;

    const-string v2, "com.android.gamesys.billing.ane.context.AMAZONE_STORE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseExtension;->TAG:Ljava/lang/String;

    return-object v0
.end method
