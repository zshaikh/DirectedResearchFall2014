.class Lcom/redbox/android/activity/FindRedboxActivity$14;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity;->findgeocode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$14;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/FindRedboxActivity$14;)Lcom/redbox/android/activity/FindRedboxActivity;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 0

    .prologue
    .line 875
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 881
    .line 882
    const-string v0, "connection error in method findgeocode in FindRedboxActivity."

    .line 881
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/FindRedboxActivity;->showConnectionError(I)V

    .line 884
    return-void
.end method

.method public dataReceived([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 888
    iget-boolean v4, p0, Lcom/redbox/android/activity/FindRedboxActivity$14;->aborted:Z

    if-eqz v4, :cond_0

    .line 956
    :goto_0
    return-void

    .line 892
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 893
    .local v0, "detail":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Geocode response "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 897
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 898
    .local v3, "sucess":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Geocode request status : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 898
    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    iget-object v4, p0, Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v4, v4, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/redbox/android/activity/FindRedboxActivity$14$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/redbox/android/activity/FindRedboxActivity$14$1;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$14;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 946
    .end local v0    # "detail":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "sucess":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 948
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 949
    const-string v4, "Error with Geocode encoding"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 950
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 953
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "Error parsing Geocode Json"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public status(II)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 961
    return-void
.end method
