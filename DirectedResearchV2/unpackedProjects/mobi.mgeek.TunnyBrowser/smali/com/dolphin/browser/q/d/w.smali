.class Lcom/dolphin/browser/q/d/w;
.super Lcom/dolphin/browser/util/f;
.source "TwitterAuthDialog.java"


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
.field final synthetic a:Lcom/dolphin/browser/q/d/s;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/q/d/s;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/dolphin/browser/q/d/w;->a:Lcom/dolphin/browser/q/d/s;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/q/d/s;Lcom/dolphin/browser/q/d/t;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/d/w;-><init>(Lcom/dolphin/browser/q/d/s;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/d/w;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/q/d/w;->a:Lcom/dolphin/browser/q/d/s;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/w;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v1}, Lcom/dolphin/browser/q/d/s;->c(Lcom/dolphin/browser/q/d/s;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/d/s;->a(Lcom/dolphin/browser/q/d/s;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/q/d/w;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/s;->d(Lcom/dolphin/browser/q/d/s;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/q/d/x;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/d/x;-><init>(Lcom/dolphin/browser/q/d/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/d/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/q/d/w;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/s;->e(Lcom/dolphin/browser/q/d/s;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/w;->a:Lcom/dolphin/browser/q/d/s;

    new-instance v1, Lcom/dolphin/browser/q/d/y;

    const-string v2, "Login Failed"

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/d/y;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/d/s;->a(Lcom/dolphin/browser/q/d/s;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
