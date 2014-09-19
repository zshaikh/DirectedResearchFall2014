.class Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;
.super Ljava/lang/Object;
.source "GoogleIABV3Activity.java"

# interfaces
.implements Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->onIabSetupFinished(Lcom/bitrhymes/iab/util/IabResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;


# direct methods
.method constructor <init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;

    return-object v0
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Inventory;)V
    .locals 4
    .parameter "result"
    .parameter "inventory"

    .prologue
    .line 215
    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callConfirmPurchase:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 221
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;

    #getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    invoke-static {v1}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 222
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v1

    const-string v2, "PURCHASE_CONFIRMATION_FAILED"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1$1;

    invoke-direct {v0, p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1$1;-><init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;)V

    .line 247
    .local v0, mConsumeFinishedListener:Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;

    #getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    invoke-static {v1}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v1

    iget-object v1, v1, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mSku:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/bitrhymes/iab/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/bitrhymes/iab/util/Purchase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;

    #getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    invoke-static {v1}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v1

    iget-object v1, v1, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    iget-object v2, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;

    #getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    invoke-static {v2}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mSku:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/bitrhymes/iab/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/bitrhymes/iab/util/Purchase;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bitrhymes/iab/util/IabHelper;->consumeAsync(Lcom/bitrhymes/iab/util/Purchase;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0
.end method
