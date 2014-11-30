.class public Lcom/gamesys/android/billing/google/AndroidIABInterface;
.super Lcom/gamesys/android/billing/common/AneActivity;
.source "AndroidIABInterface.java"


# static fields
.field public static final RC_REQUEST:I = 0x1ac7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/gamesys/android/billing/google/AndroidIABInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/AneActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    .line 22
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gamesys/android/billing/google/AndroidIABInterface;)Lcom/gamesys/android/billing/google/ane/InAppBillingContext;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    return-object v0
.end method


# virtual methods
.method protected getContextName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "com.android.gamesys.billing.ane.context.GOOGLE_PLAY"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    if-nez v1, :cond_0

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/gamesys/android/billing/common/AneActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v2, Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_1

    move-object v1, p3

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper()Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v0

    .line 134
    .local v0, "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/gamesys/android/billing/google/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/gamesys/android/billing/common/AneActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    :goto_2
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_0

    .line 130
    .end local v0    # "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    :cond_1
    const-string v1, "null intent data"

    goto :goto_1

    .line 137
    .restart local v0    # "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    :cond_2
    sget-object v1, Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult handled by AndroidIABInterface."

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/gamesys/android/billing/common/AneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object v1, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    check-cast v1, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    iput-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    .line 38
    const/4 v2, 0x0

    .local v2, "productId":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "payload":Ljava/lang/String;
    const/4 v10, 0x0

    .line 39
    .local v10, "thirdPartyId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 40
    .local v6, "actionBuy":Z
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 41
    .local v7, "b":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 42
    const-string v1, "INTENT_KEY_PRODUCT_ID"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    const-string v1, "INTENT_KEY_PAYLOAD"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    const-string v1, "INTENT_KEY_THIRD_PARTY_ID"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 45
    const-string v1, "INTENT_ACTION_BUY_ITEM"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    if-nez v1, :cond_2

    .line 49
    sget-object v1, Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-virtual {p0, v1, v3}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->handleNullAsContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->isUnitTesting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1, p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->setAndroidContext(Landroid/content/Context;)V

    .line 58
    :cond_3
    if-eqz v6, :cond_1

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper()Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v0

    .line 66
    .local v0, "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 67
    move-object v11, v10

    .line 68
    .local v11, "thirdPartyIdFinal":Ljava/lang/String;
    move-object v9, v2

    .line 70
    .local v9, "pIdFinal":Ljava/lang/String;
    sget-object v1, Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;

    const-string v3, "Launching purchase flow."

    invoke-static {v1, v3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v3, 0x1ac7

    new-instance v4, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;

    invoke-direct {v4, p0, v11, v9}, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;-><init>(Lcom/gamesys/android/billing/google/AndroidIABInterface;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gamesys/android/billing/google/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0    # "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    .end local v9    # "pIdFinal":Ljava/lang/String;
    .end local v11    # "thirdPartyIdFinal":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;

    const-string v3, "Unable to launch purchase flow"

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v3, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR"

    const-string v4, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v1, v3, v4}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_0

    .line 111
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    :cond_4
    :try_start_1
    sget-object v1, Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;

    const-string v3, "Unable to launch purchase flow"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v3, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR"

    const-string v4, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v1, v3, v4}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
