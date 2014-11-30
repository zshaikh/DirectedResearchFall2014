.class public Lcom/dolphin/browser/q/c/m;
.super Lcom/facebook/dolphin/BaseRequestListener;
.source "FacebookManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/c/b;

.field private b:Lcom/dolphin/browser/q/c/r;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/r;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/dolphin/browser/q/c/m;->a:Lcom/dolphin/browser/q/c/b;

    invoke-direct {p0}, Lcom/facebook/dolphin/BaseRequestListener;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/dolphin/browser/q/c/m;->b:Lcom/dolphin/browser/q/c/r;

    .line 178
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/q/c/m;->b:Lcom/dolphin/browser/q/c/r;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/q/c/m;->b:Lcom/dolphin/browser/q/c/r;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/r;->b()V

    .line 236
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/q/c/m;->a:Lcom/dolphin/browser/q/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/b;Z)Z

    .line 238
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    const-string v2, "email"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    iget-object v3, p0, Lcom/dolphin/browser/q/c/m;->a:Lcom/dolphin/browser/q/c/b;

    invoke-static {v3}, Lcom/dolphin/browser/q/c/b;->b(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/s;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/q/c/s;->b(Ljava/lang/String;)V

    .line 189
    const-string v2, "username"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/dolphin/browser/q/c/m;->a:Lcom/dolphin/browser/q/c/b;

    invoke-static {v3}, Lcom/dolphin/browser/q/c/b;->b(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/s;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/q/c/s;->c(Ljava/lang/String;)V

    .line 192
    const-string v2, "picture"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/dolphin/browser/q/c/m;->a:Lcom/dolphin/browser/q/c/b;

    invoke-static {v2}, Lcom/dolphin/browser/q/c/b;->b(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/q/c/s;->d(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/q/c/m;->b:Lcom/dolphin/browser/q/c/r;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/q/c/m;->b:Lcom/dolphin/browser/q/c/r;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/c/r;->a(Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/c/m;->a:Lcom/dolphin/browser/q/c/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/c/b;->c(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/t;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/q/c/m;->a:Lcom/dolphin/browser/q/c/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/c/b;->c(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/t;->a()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/c/m;->a:Lcom/dolphin/browser/q/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/b;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/c/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFacebookError(Lcom/facebook/dolphin/FacebookError;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/c/m;->a(Ljava/lang/Throwable;)V

    .line 219
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/c/m;->a(Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/c/m;->a(Ljava/lang/Throwable;)V

    .line 230
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/c/m;->a(Ljava/lang/Throwable;)V

    .line 225
    return-void
.end method
