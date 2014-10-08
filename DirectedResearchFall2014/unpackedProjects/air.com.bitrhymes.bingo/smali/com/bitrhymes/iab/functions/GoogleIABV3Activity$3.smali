.class Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;
.super Ljava/lang/Object;
.source "GoogleIABV3Activity.java"

# interfaces
.implements Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->callConfirmPurchase()V
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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    return-object v0
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/bitrhymes/iab/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/bitrhymes/iab/util/IabResult;

    .prologue
    const-string v3, "InApp"

    .line 192
    const-string v1, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callConfirmPurchase Setup finished."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callConfirmPurchase Problem setting up in-app billing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 201
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    invoke-virtual {v1}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 202
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v1

    const-string v2, "PURCHASE_CONFIRMATION_FAILED"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v1, "InApp"

    const-string v1, "Setup successful. Querying inventory."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;

    invoke-direct {v0, p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;-><init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;)V

    .line 253
    .local v0, "mGotInventoryListener":Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    iget-object v1, v1, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    invoke-virtual {v1, v0}, Lcom/bitrhymes/iab/util/IabHelper;->queryInventoryAsync(Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
