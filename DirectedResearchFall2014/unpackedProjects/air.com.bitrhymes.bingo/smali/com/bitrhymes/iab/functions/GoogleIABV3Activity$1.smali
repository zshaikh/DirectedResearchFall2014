.class Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;
.super Ljava/lang/Object;
.source "GoogleIABV3Activity.java"

# interfaces
.implements Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->purchaeItemRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;


# direct methods
.method constructor <init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    return-object v0
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/bitrhymes/iab/util/IabResult;)V
    .locals 6
    .parameter "result"

    .prologue
    const-string v2, "InApp"

    .line 67
    const-string v0, "InApp"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "purchaeItemRequest Setup finished."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "InApp"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMessage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "InApp"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getResponse : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->getResponse()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "InApp"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hashCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "InApp"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " purchaeItemRequest Problem setting up in-app billing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 79
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    invoke-virtual {v0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 81
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "PURCHASE_CONFIRMATION_FAILED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v4, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1$1;

    invoke-direct {v4, p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1$1;-><init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;)V

    .line 125
    .local v4, mPurchasedItemListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getInAppActivity()Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    iget-object v0, v0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getInAppActivity()Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    iget-object v2, v2, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mSku:Ljava/lang/String;

    const/16 v3, 0x2711

    iget-object v5, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    iget-object v5, v5, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->devPayLoad:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/bitrhymes/iab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0
.end method
