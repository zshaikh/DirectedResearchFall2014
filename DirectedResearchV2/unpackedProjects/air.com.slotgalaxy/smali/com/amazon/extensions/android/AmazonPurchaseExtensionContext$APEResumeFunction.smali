.class Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;
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
    name = "APEResumeFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;


# direct methods
.method private constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    invoke-virtual {v1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->ffiResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 420
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[AMPExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
