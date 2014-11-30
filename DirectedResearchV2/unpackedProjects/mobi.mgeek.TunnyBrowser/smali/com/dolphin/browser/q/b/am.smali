.class Lcom/dolphin/browser/q/b/am;
.super Ljava/lang/Object;
.source "EvernoteManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/av;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/bd;

.field final synthetic b:Lcom/dolphin/browser/q/b/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bd;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/dolphin/browser/q/b/am;->b:Lcom/dolphin/browser/q/b/ag;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/am;->a:Lcom/dolphin/browser/q/b/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 163
    if-eqz p1, :cond_1

    .line 164
    instance-of v0, p1, Lcom/c/b/c/x;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/q/b/am;->a:Lcom/dolphin/browser/q/b/bd;

    check-cast p1, Lcom/c/b/c/x;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/bd;->a(Lcom/c/b/c/x;)V

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/am;->a:Lcom/dolphin/browser/q/b/bd;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "Returned result is not an instance of Tag."

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/b/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/am;->a:Lcom/dolphin/browser/q/b/bd;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "Returned tag that created is null."

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/b/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
