.class Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1$1;
.super Ljava/lang/Object;
.source "GoogleIABV3Activity.java"

# interfaces
.implements Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->onQueryInventoryFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Inventory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;


# direct methods
.method constructor <init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1$1;->this$2:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/bitrhymes/iab/util/Purchase;Lcom/bitrhymes/iab/util/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/bitrhymes/iab/util/Purchase;
    .param p2, "result"    # Lcom/bitrhymes/iab/util/IabResult;

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 230
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1$1;->this$2:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;

    # getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;
    invoke-static {v0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3$1;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;

    move-result-object v0

    # getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    invoke-static {v0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 231
    invoke-virtual {p2}, Lcom/bitrhymes/iab/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PURCHASE_CONFIRMATION_SUCCESS:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 238
    const-string v1, "PURCHASE_CONFIRMATION_SUCCESS"

    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 242
    const-string v1, "PURCHASE_CONFIRMATION_FAILED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
