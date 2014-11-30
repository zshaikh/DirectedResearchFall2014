.class Lcom/dolphin/browser/q/b/ac;
.super Lcom/dolphin/browser/util/f;
.source "EvernoteAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/y;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/q/b/y;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ac;->a:Lcom/dolphin/browser/q/b/y;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/q/b/y;Lcom/dolphin/browser/q/b/z;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/ac;-><init>(Lcom/dolphin/browser/q/b/y;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/b/ac;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ac;->a:Lcom/dolphin/browser/q/b/y;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/ac;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v1}, Lcom/dolphin/browser/q/b/y;->b(Lcom/dolphin/browser/q/b/y;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/y;->a(Lcom/dolphin/browser/q/b/y;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ac;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->c(Lcom/dolphin/browser/q/b/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/q/b/ad;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/b/ad;-><init>(Lcom/dolphin/browser/q/b/ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/b/ac;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/ac;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ac;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->d(Lcom/dolphin/browser/q/b/y;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ac;->a:Lcom/dolphin/browser/q/b/y;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "auth url is null"

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/y;->a(Lcom/dolphin/browser/q/b/y;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
