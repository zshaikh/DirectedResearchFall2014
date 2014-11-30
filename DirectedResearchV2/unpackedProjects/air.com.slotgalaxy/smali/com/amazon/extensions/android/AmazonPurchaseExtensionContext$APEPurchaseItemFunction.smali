.class Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;
.super Ljava/lang/Object;
.source "AmazonPurchaseExtensionContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "APEPurchaseItemFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;


# direct methods
.method private constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 472
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "itemId":Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    invoke-virtual {v2, v1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->ffiPurchaseItem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v1    # "itemId":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 475
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "[AMPExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
