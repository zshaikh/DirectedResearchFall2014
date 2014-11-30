.class Lcom/dolphin/browser/q/c/h;
.super Lcom/facebook/dolphin/BaseRequestListener;
.source "FacebookManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/c/n;

.field final synthetic b:Lcom/dolphin/browser/q/c/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/n;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/dolphin/browser/q/c/h;->b:Lcom/dolphin/browser/q/c/b;

    iput-object p2, p0, Lcom/dolphin/browser/q/c/h;->a:Lcom/dolphin/browser/q/c/n;

    invoke-direct {p0}, Lcom/facebook/dolphin/BaseRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 569
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 572
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 574
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 575
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 576
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 577
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 578
    const-string v5, "FacebookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 580
    new-instance v5, Lcom/dolphin/browser/q/a;

    invoke-direct {v5, v4, v3}, Lcom/dolphin/browser/q/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/c/h;->a:Lcom/dolphin/browser/q/c/n;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/dolphin/browser/q/c/h;->a:Lcom/dolphin/browser/q/c/n;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/q/c/n;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_2
    :goto_1
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    iget-object v1, p0, Lcom/dolphin/browser/q/c/h;->a:Lcom/dolphin/browser/q/c/n;

    if-eqz v1, :cond_3

    .line 589
    iget-object v1, p0, Lcom/dolphin/browser/q/c/h;->a:Lcom/dolphin/browser/q/c/n;

    invoke-interface {v1}, Lcom/dolphin/browser/q/c/n;->a()V

    .line 591
    :cond_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method
