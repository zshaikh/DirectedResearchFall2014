.class Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$2;
.super Ljava/lang/Object;
.source "GoogleIABV3Activity.java"

# interfaces
.implements Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->callIsSupported()V
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
    iput-object p1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$2;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/bitrhymes/iab/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/bitrhymes/iab/util/IabResult;

    .prologue
    const-string v3, "IAP_SUPPORT_STATUS"

    const-string v2, "InApp"

    .line 150
    const-string v0, "InApp"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callIsSupported Setup finished."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 153
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$2;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    invoke-virtual {v0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 154
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string v0, "InApp"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callIsSupported Problem setting up in-app billing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "IAP_SUPPORT_STATUS"

    const-string v1, "0"

    invoke-virtual {v0, v3, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "InApp"

    const-string v0, "Setup successful. Querying inventory."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "IAP_SUPPORT_STATUS"

    const-string v1, "1"

    invoke-virtual {v0, v3, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
