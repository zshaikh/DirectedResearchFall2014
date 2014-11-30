.class final Lcom/dolphin/browser/q/c/k;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Lcom/facebook/dolphin/Facebook$DialogListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/c/b;

.field private b:Lcom/dolphin/browser/q/c/o;

.field private c:Lcom/dolphin/browser/q/c/r;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/o;Lcom/dolphin/browser/q/c/r;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/dolphin/browser/q/c/k;->a:Lcom/dolphin/browser/q/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/dolphin/browser/q/c/k;->b:Lcom/dolphin/browser/q/c/o;

    .line 265
    iput-object p3, p0, Lcom/dolphin/browser/q/c/k;->c:Lcom/dolphin/browser/q/c/r;

    .line 266
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/facebook/dolphin/SessionEvents;->onLoginSuccess()V

    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/q/c/k;->b:Lcom/dolphin/browser/q/c/o;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/q/c/k;->b:Lcom/dolphin/browser/q/c/o;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/o;->a()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/c/k;->a:Lcom/dolphin/browser/q/c/b;

    iget-object v1, p0, Lcom/dolphin/browser/q/c/k;->c:Lcom/dolphin/browser/q/c/r;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/r;)V

    .line 294
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    invoke-static {p1}, Lcom/facebook/dolphin/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/q/c/k;->b:Lcom/dolphin/browser/q/c/o;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/dolphin/browser/q/c/k;->b:Lcom/dolphin/browser/q/c/o;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/c/o;->a(Ljava/lang/String;)V

    .line 301
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 285
    const-string v0, "Action Canceled"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/c/k;->a(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/dolphin/browser/q/c/k;->a()V

    .line 271
    return-void
.end method

.method public onError(Lcom/facebook/dolphin/DialogError;)V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/facebook/dolphin/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/c/k;->a(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onFacebookError(Lcom/facebook/dolphin/FacebookError;)V
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/facebook/dolphin/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/c/k;->a(Ljava/lang/String;)V

    .line 276
    return-void
.end method
