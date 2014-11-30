.class Lcom/dolphin/browser/q/d/ai;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Lcom/dolphin/browser/share/g;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/z;

.field final synthetic b:Lcom/dolphin/browser/q/d/aa;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/z;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/dolphin/browser/q/d/ai;->b:Lcom/dolphin/browser/q/d/aa;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/ai;->a:Lcom/dolphin/browser/q/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 342
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    const-string v1, "ids"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/dolphin/browser/q/d/ai;->a:Lcom/dolphin/browser/q/d/z;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/d/z;->a(Lorg/json/JSONArray;)V

    .line 349
    iget-object v1, p0, Lcom/dolphin/browser/q/d/ai;->b:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v1}, Lcom/dolphin/browser/q/d/aa;->a(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/d/k;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 359
    const-string v0, "TwitterManager"

    const-string v1, "requireFriends onFailed."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method
