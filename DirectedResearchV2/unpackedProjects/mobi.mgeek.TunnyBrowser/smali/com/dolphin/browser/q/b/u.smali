.class Lcom/dolphin/browser/q/b/u;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/ar;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/t;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/t;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/dolphin/browser/q/b/u;->a:Lcom/dolphin/browser/q/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/dolphin/browser/q/b/u;->a:Lcom/dolphin/browser/q/b/t;

    iget-object v0, v0, Lcom/dolphin/browser/q/b/t;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/dolphin/browser/q/b/u;->a:Lcom/dolphin/browser/q/b/t;

    iget-object v1, v1, Lcom/dolphin/browser/q/b/t;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v1}, Lcom/dolphin/browser/q/b/f;->f(Lcom/dolphin/browser/q/b/f;)Lcom/c/b/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/b/b/b;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 700
    iget-object v2, p0, Lcom/dolphin/browser/q/b/u;->a:Lcom/dolphin/browser/q/b/t;

    iget-object v2, v2, Lcom/dolphin/browser/q/b/t;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v2, v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/dolphin/browser/q/b/u;->a:Lcom/dolphin/browser/q/b/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/t;->a(Lcom/dolphin/browser/q/b/t;Ljava/util/List;)Ljava/util/List;

    .line 702
    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
