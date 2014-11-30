.class Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;
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
    name = "HandleReserveMovieRequest"
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/ReserveActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 1

    .prologue
    .line 613
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->aborted:Z

    .line 620
    return-void
.end method

.method public connectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->aborted:Z

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v1, 0x1

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V
    invoke-static {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->access$0(Lcom/redbox/android/activity/ReserveActivity;Z)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 632
    iget-boolean v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->aborted:Z

    if-eqz v5, :cond_0

    .line 742
    :goto_0
    return-void

    .line 635
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 636
    .local v4, "output":Ljava/lang/String;
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v5, v4}, Lcom/redbox/android/activity/ReserveActivity;->d(Ljava/lang/String;)V

    .line 639
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 640
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    const-string v5, "d"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 642
    .local v0, "d":Lorg/json/JSONObject;
    const-string v5, "msgKeys"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 644
    .local v2, "msgKeys":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/redbox/android/activity/ReserveActivity;->removeDialog(I)V

    .line 646
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v5, v5, Lcom/redbox/android/activity/ReserveActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;

    invoke-direct {v6, p0, v2, v0}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;-><init>(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    .end local v0    # "d":Lorg/json/JSONObject;
    .end local v2    # "msgKeys":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 737
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 738
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const-string v6, "Problem converting reserveMovie request to json object"

    invoke-virtual {v5, v6}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    .line 739
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v5, v4}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    .line 741
    iget-object v5, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

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
    .line 746
    iget-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->aborted:Z

    if-eqz v0, :cond_0

    .line 749
    :cond_0
    return-void
.end method
