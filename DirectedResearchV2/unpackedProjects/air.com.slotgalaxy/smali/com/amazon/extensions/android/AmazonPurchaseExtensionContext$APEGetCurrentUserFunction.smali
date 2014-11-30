.class Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;
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
    name = "APEGetCurrentUserFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;


# direct methods
.method private constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 452
    :try_start_0
    iget-object v3, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    invoke-virtual {v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "user":Ljava/lang/String;
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "resObject":Lcom/adobe/fre/FREObject;
    move-object v3, v1

    .line 461
    .end local v1    # "resObject":Lcom/adobe/fre/FREObject;
    .end local v2    # "user":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 457
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "[AMPExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v3, 0x0

    goto :goto_0
.end method
