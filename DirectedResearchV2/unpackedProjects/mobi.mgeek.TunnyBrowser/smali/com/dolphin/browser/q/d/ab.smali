.class Lcom/dolphin/browser/q/d/ab;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Lcom/dolphin/browser/share/g;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/ap;

.field final synthetic b:Lcom/dolphin/browser/q/d/aa;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/ap;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dolphin/browser/q/d/ab;->b:Lcom/dolphin/browser/q/d/aa;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/ab;->a:Lcom/dolphin/browser/q/d/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 119
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v0, "screen_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v0, "name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    const-string v0, "profile_image_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const-string v0, "profile_image_url_https"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/q/d/ab;->b:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v1}, Lcom/dolphin/browser/q/d/aa;->c(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/ao;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/q/d/ao;->a(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/q/d/ab;->b:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v1}, Lcom/dolphin/browser/q/d/aa;->c(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/ao;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/q/d/ao;->b(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/dolphin/browser/q/d/ab;->b:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v1}, Lcom/dolphin/browser/q/d/aa;->c(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/d/ao;->c(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ab;->a:Lcom/dolphin/browser/q/d/ap;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ab;->a:Lcom/dolphin/browser/q/d/ap;

    invoke-interface {v0}, Lcom/dolphin/browser/q/d/ap;->a()V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ab;->b:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/aa;->d(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/ap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ab;->b:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/aa;->d(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/q/d/ap;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ab;->b:Lcom/dolphin/browser/q/d/aa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/d/aa;->a(Lcom/dolphin/browser/q/d/aa;Z)Z

    .line 139
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ab;->b:Lcom/dolphin/browser/q/d/aa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/d/aa;->a(Lcom/dolphin/browser/q/d/aa;Z)Z

    .line 144
    return-void
.end method
