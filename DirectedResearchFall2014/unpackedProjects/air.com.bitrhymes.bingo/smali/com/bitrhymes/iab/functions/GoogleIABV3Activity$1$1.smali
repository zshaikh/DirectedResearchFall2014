.class Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1$1;
.super Ljava/lang/Object;
.source "GoogleIABV3Activity.java"

# interfaces
.implements Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->onIabSetupFinished(Lcom/bitrhymes/iab/util/IabResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;


# direct methods
.method constructor <init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
    .locals 7
    .param p1, "result"    # Lcom/bitrhymes/iab/util/IabResult;
    .param p2, "purchase"    # Lcom/bitrhymes/iab/util/Purchase;

    .prologue
    const-string v6, ""

    const-string v5, "PURCHASE_STATE_FAILED"

    const-string v4, "InApp"

    .line 90
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 91
    iget-object v2, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;

    # getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    invoke-static {v2}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 93
    const-string v2, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "purchaeItemRequest:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->getResponse()I

    move-result v2

    const/16 v3, -0x3ed

    if-ne v2, v3, :cond_0

    .line 96
    const-string v2, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "User cancelled:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v2

    const-string v3, "PURCHASE_STATE_CANCELLED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->isFailure()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string v2, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error purchasing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v2

    const-string v3, "PURCHASE_STATE_FAILED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    if-eqz p2, :cond_2

    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "0"

    invoke-virtual {p2}, Lcom/bitrhymes/iab/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v2, "1"

    invoke-virtual {p2}, Lcom/bitrhymes/iab/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v2, "InApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PURCHASE_STATE_SUCCESS : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v2

    const-string v3, "PURCHASE_STATE_SUCCESS"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v2

    const-string v3, "PURCHASE_STATE_FAILED"

    const-string v3, ""

    invoke-virtual {v2, v5, v6}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_2
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v2

    const-string v3, "PURCHASE_STATE_FAILED"

    const-string v3, ""

    invoke-virtual {v2, v5, v6}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
