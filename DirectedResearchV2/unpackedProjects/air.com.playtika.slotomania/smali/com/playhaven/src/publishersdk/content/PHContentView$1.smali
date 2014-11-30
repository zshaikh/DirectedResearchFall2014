.class Lcom/playhaven/src/publishersdk/content/PHContentView$1;
.super Landroid/content/BroadcastReceiver;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;->registerPurchaseReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;


# direct methods
.method constructor <init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 430
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 433
    const-string v4, "com.playhaven.md"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 435
    .local v1, "metadata":Landroid/os/Bundle;
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Purchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/playhaven/src/publishersdk/content/PHPurchase;

    .line 437
    .local v2, "purchase":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received purchase resolution report in PHContentView: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    iget-object v5, v2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Resolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 439
    iget-object v5, v2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v5}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 437
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 441
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v3, "response":Lorg/json/JSONObject;
    const-string v4, "resolution"

    iget-object v5, v2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v5}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v5, v2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v3    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 446
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "PHContentView - BroadcastReceiver - onReceive"

    sget-object v5, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v4, v5}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method
