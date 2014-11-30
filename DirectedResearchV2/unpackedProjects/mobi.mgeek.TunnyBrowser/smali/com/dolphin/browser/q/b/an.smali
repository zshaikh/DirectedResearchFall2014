.class Lcom/dolphin/browser/q/b/an;
.super Ljava/lang/Object;
.source "EvernoteManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/at;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/bh;

.field final synthetic b:Lcom/dolphin/browser/q/b/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bh;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dolphin/browser/q/b/an;->b:Lcom/dolphin/browser/q/b/ag;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/an;->a:Lcom/dolphin/browser/q/b/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 208
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/c/b/c/g;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/q/b/an;->a:Lcom/dolphin/browser/q/b/bh;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/bh;->a(Ljava/lang/Object;)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/an;->a:Lcom/dolphin/browser/q/b/bh;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "save note failed."

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/b/bh;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
