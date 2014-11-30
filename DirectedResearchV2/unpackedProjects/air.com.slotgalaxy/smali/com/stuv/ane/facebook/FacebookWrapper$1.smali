.class Lcom/stuv/ane/facebook/FacebookWrapper$1;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/facebook/FacebookWrapper;->dialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 4
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const-string v3, "dialog"

    .line 173
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "dialog"

    new-instance v1, Lcom/stuv/ane/facebook/ErrorData;

    invoke-direct {v1}, Lcom/stuv/ane/facebook/ErrorData;-><init>()V

    invoke-virtual {v1, p2}, Lcom/stuv/ane/facebook/ErrorData;->addException(Ljava/lang/Exception;)Lcom/stuv/ane/facebook/ErrorData;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchCancel(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;)V

    .line 192
    :goto_0
    return-void

    .line 176
    :cond_2
    const-string v1, "dialog"

    new-instance v1, Lcom/stuv/ane/facebook/ErrorData;

    invoke-direct {v1}, Lcom/stuv/ane/facebook/ErrorData;-><init>()V

    invoke-static {v3, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchCancel(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;)V

    goto :goto_0

    .line 177
    :cond_3
    if-eqz p2, :cond_4

    .line 179
    const-string v1, "dialog"

    new-instance v1, Lcom/stuv/ane/facebook/ErrorData;

    invoke-direct {v1}, Lcom/stuv/ane/facebook/ErrorData;-><init>()V

    invoke-virtual {v1, p2}, Lcom/stuv/ane/facebook/ErrorData;->addException(Ljava/lang/Exception;)Lcom/stuv/ane/facebook/ErrorData;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchError(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;)V

    goto :goto_0

    .line 185
    :cond_4
    :try_start_0
    const-string v1, "dialog"

    # invokes: Lcom/stuv/ane/facebook/FacebookWrapper;->jsonBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/stuv/ane/facebook/FacebookWrapper;->access$0(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 189
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dialog response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchAssert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
