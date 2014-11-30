.class Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;
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
    name = "HandleCartGetItemRequest"
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/ReserveActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 1

    .prologue
    .line 485
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;)Lcom/redbox/android/activity/ReserveActivity;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->aborted:Z

    .line 492
    return-void
.end method

.method public connectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->aborted:Z

    if-eqz v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v1, 0x1

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V
    invoke-static {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->access$0(Lcom/redbox/android/activity/ReserveActivity;Z)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 504
    iget-boolean v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->aborted:Z

    if-eqz v4, :cond_0

    .line 533
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 508
    .local v2, "output":Ljava/lang/String;
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v4, v2}, Lcom/redbox/android/activity/ReserveActivity;->d(Ljava/lang/String;)V

    .line 509
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest$1;

    invoke-direct {v5, p0}, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest$1;-><init>(Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 518
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v4, "d"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 520
    .local v3, "result":I
    if-nez v3, :cond_1

    .line 522
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const-string v5, "goto Step 3"

    invoke-virtual {v4, v5}, Lcom/redbox/android/activity/ReserveActivity;->d(Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v4

    .line 524
    new-instance v5, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;

    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-direct {v5, v6}, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-boolean v6, v6, Lcom/redbox/android/activity/ReserveActivity;->applyCredit:Z

    .line 523
    invoke-virtual {v4, v5, v6}, Lcom/redbox/android/http/ServerCommunicationHandler;->cartRefresh(Lcom/redbox/android/http/ServerCommunicationListener;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v3    # "result":I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 528
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 529
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const-string v5, "Problem converting card/addItem request to json object"

    invoke-virtual {v4, v5}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    .line 530
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v4, v2}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    .line 532
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v5, 0x0

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V
    invoke-static {v4, v5}, Lcom/redbox/android/activity/ReserveActivity;->access$0(Lcom/redbox/android/activity/ReserveActivity;Z)V

    goto :goto_0
.end method

.method public status(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;->aborted:Z

    if-eqz v0, :cond_0

    .line 540
    :cond_0
    return-void
.end method
