.class Lcom/dolphin/browser/q/b/ak;
.super Ljava/lang/Object;
.source "EvernoteManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/au;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/be;

.field final synthetic b:Lcom/dolphin/browser/q/b/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/be;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ak;->b:Lcom/dolphin/browser/q/b/ag;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/ak;->a:Lcom/dolphin/browser/q/b/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 103
    if-eqz p1, :cond_1

    .line 104
    instance-of v0, p1, Lcom/c/b/c/l;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ak;->a:Lcom/dolphin/browser/q/b/be;

    check-cast p1, Lcom/c/b/c/l;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/be;->a(Lcom/c/b/c/l;)V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ak;->a:Lcom/dolphin/browser/q/b/be;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "Returned object is not an instance of notebook."

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/b/be;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ak;->a:Lcom/dolphin/browser/q/b/be;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "Returned notebook is null."

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/b/be;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
