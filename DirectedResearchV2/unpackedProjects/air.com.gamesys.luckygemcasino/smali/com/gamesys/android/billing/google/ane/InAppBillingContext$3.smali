.class Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;
.super Ljava/lang/Object;
.source "InAppBillingContext.java"

# interfaces
.implements Lcom/gamesys/android/billing/google/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->executeActionSetup(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

.field private final synthetic val$minimalSetup:Z

.field private final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;ZLjava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    iput-boolean p2, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->val$minimalSetup:Z

    iput-object p3, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->val$params:Ljava/util/Map;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/gamesys/android/billing/google/util/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/gamesys/android/billing/google/util/IabResult;

    .prologue
    .line 396
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup finished."

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem setting up in-app billing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_SETUP_RESULT_ERROR"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    .line 414
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->val$minimalSetup:Z

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->val$params:Ljava/util/Map;

    # invokes: Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionSetup(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$3(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Ljava/util/Map;)V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_0
.end method
