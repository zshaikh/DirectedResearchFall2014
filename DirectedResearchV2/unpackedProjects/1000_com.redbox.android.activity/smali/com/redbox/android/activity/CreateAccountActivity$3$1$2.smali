.class Lcom/redbox/android/activity/CreateAccountActivity$3$1$2;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity$3$1;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

.field private final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity$3$1;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$2;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    iput-object p2, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$2;->val$result:Lorg/json/JSONObject;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$2;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;
    invoke-static {v1}, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)Lcom/redbox/android/activity/CreateAccountActivity$3;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$2;->val$result:Lorg/json/JSONObject;

    .line 227
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    iput-object v2, v1, Lcom/redbox/android/activity/CreateAccountActivity;->alertBoxMsg:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$2;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;
    invoke-static {v1}, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)Lcom/redbox/android/activity/CreateAccountActivity$3;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/CreateAccountActivity;->showDialog(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 232
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
