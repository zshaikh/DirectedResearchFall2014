.class Lcom/dolphin/browser/q/b/k;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/e;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/ax;

.field final synthetic b:Lcom/dolphin/browser/q/b/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/ax;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/dolphin/browser/q/b/k;->b:Lcom/dolphin/browser/q/b/f;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/k;->a:Lcom/dolphin/browser/q/b/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/q/b/az;->a(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 232
    const-string v0, "evernote share"

    const-string v1, "login"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/q/b/az;->a(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/q/b/k;->a:Lcom/dolphin/browser/q/b/ax;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/q/b/k;->a:Lcom/dolphin/browser/q/b/ax;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/b/ax;->a(Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method public a(Lorg/d/d/i;)V
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/CookieSyncManager;->sync()V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/k;->b:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;

    move-result-object v0

    check-cast p1, Lcom/c/a/b/a;

    invoke-virtual {v0, p1}, Lcom/c/a/b/a/b;->a(Lcom/c/a/b/a;)V

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/q/b/k;->b:Lcom/dolphin/browser/q/b/f;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/k;->b:Lcom/dolphin/browser/q/b/f;

    invoke-static {v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/b/a/b;->f()Lcom/c/b/b/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;Lcom/c/b/b/b;)Lcom/c/b/b/b;

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/q/b/k;->b:Lcom/dolphin/browser/q/b/f;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/k;->b:Lcom/dolphin/browser/q/b/f;

    invoke-static {v1}, Lcom/dolphin/browser/q/b/f;->e(Lcom/dolphin/browser/q/b/f;)Lcom/c/b/d/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;Lcom/c/b/d/b;)Lcom/c/b/d/b;

    .line 251
    invoke-static {}, Lcom/dolphin/browser/q/b/az;->a()V

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/q/b/k;->a:Lcom/dolphin/browser/q/b/ax;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/q/b/k;->a:Lcom/dolphin/browser/q/b/ax;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/ax;->a()V

    .line 256
    :cond_0
    const-string v0, "evernote share"

    const-string v1, "login"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/c/c/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 259
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/b/k;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 262
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/b/k;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
