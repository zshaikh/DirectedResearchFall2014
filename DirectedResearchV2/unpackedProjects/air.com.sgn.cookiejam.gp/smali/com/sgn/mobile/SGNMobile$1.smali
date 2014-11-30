.class Lcom/sgn/mobile/SGNMobile$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SGNMobile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sgn/mobile/SGNMobile;->verifyTransaction(Ljava/util/Map;Lcom/jesusla/ane/Closure;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sgn/mobile/SGNMobile;

.field final synthetic val$callback:Lcom/jesusla/ane/Closure;


# direct methods
.method constructor <init>(Lcom/sgn/mobile/SGNMobile;Lcom/jesusla/ane/Closure;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sgn/mobile/SGNMobile$1;->this$0:Lcom/sgn/mobile/SGNMobile;

    iput-object p2, p0, Lcom/sgn/mobile/SGNMobile$1;->val$callback:Lcom/jesusla/ane/Closure;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 170
    iget-object v0, p0, Lcom/sgn/mobile/SGNMobile$1;->val$callback:Lcom/jesusla/ane/Closure;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method protected handleSuccessMessage(ILjava/lang/String;)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    const-string v1, "Verification: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/sgn/mobile/SGNMobile$1;->val$callback:Lcom/jesusla/ane/Closure;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/sgn/mobile/SGNMobile$1;->val$callback:Lcom/jesusla/ane/Closure;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
