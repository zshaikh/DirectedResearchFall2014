.class Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/ReserveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandleCardRefreshRequest"
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/ReserveActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 1

    .prologue
    .line 549
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;)Lcom/redbox/android/activity/ReserveActivity;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->aborted:Z

    .line 556
    return-void
.end method

.method public connectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->aborted:Z

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v1, 0x1

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V
    invoke-static {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->access$0(Lcom/redbox/android/activity/ReserveActivity;Z)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 568
    iget-boolean v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->aborted:Z

    if-eqz v5, :cond_0

    .line 602
    :goto_0
    return-void

    .line 571
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 572
    .local v4, "output":Ljava/lang/String;
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v5, v4}, Lcom/redbox/android/activity/ReserveActivity;->d(Ljava/lang/String;)V

    .line 575
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 576
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "d"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 577
    .local v1, "d":Lorg/json/JSONObject;
    const-string v5, "cart"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 578
    .local v0, "cartJson":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    new-instance v6, Lcom/redbox/android/model/Cart;

    invoke-direct {v6, v0}, Lcom/redbox/android/model/Cart;-><init>(Lorg/json/JSONObject;)V

    iput-object v6, v5, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    .line 579
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v5, v5, Lcom/redbox/android/activity/ReserveActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest$1;

    invoke-direct {v6, p0}, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest$1;-><init>(Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v5, v5, Lcom/redbox/android/activity/ReserveActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest$2;

    invoke-direct {v6, p0}, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest$2;-><init>(Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 594
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/redbox/android/activity/ReserveActivity;->removeDialog(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v0    # "cartJson":Lorg/json/JSONObject;
    .end local v1    # "d":Lorg/json/JSONObject;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 597
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 598
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const-string v6, "Problem converting cart refresh request to json object"

    invoke-virtual {v5, v6}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    .line 599
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v5, v4}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    .line 601
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v6, 0x0

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V
    invoke-static {v5, v6}, Lcom/redbox/android/activity/ReserveActivity;->access$0(Lcom/redbox/android/activity/ReserveActivity;Z)V

    goto :goto_0
.end method

.method public status(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->aborted:Z

    if-eqz v0, :cond_0

    .line 609
    :cond_0
    return-void
.end method
