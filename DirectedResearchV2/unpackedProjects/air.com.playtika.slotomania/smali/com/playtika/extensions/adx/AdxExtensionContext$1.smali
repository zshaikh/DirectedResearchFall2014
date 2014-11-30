.class Lcom/playtika/extensions/adx/AdxExtensionContext$1;
.super Landroid/os/AsyncTask;
.source "AdxExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/adx/AdxExtensionContext;->getReferralAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/adx/AdxExtensionContext;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/adx/AdxExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/adx/AdxExtensionContext$1;->this$0:Lcom/playtika/extensions/adx/AdxExtensionContext;

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/playtika/extensions/adx/AdxExtensionContext$1;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 6
    .param p1, "context"    # [Landroid/content/Context;

    .prologue
    .line 46
    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/AdX/tag/AdXConnect;->getAdXReferral(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "referral":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v2, "object":Lorg/json/JSONObject;
    const-string v4, "referral"

    if-nez v3, :cond_0

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    .local v1, "json":Ljava/lang/String;
    iget-object v4, p0, Lcom/playtika/extensions/adx/AdxExtensionContext$1;->this$0:Lcom/playtika/extensions/adx/AdxExtensionContext;

    const-string v5, ""

    invoke-virtual {v4, v1, v5}, Lcom/playtika/extensions/adx/AdxExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v4, 0x0

    return-object v4

    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    move-object v5, v3

    .line 51
    goto :goto_0

    .line 53
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
