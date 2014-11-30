.class Lcom/dolphin/browser/q/b/r;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/ar;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/o;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/o;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/dolphin/browser/q/b/r;->a:Lcom/dolphin/browser/q/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/r;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Lcom/dolphin/browser/q/b/r;->a:Lcom/dolphin/browser/q/b/o;

    iget-object v0, v0, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->f(Lcom/dolphin/browser/q/b/f;)Lcom/c/b/b/b;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/dolphin/browser/q/b/r;->a:Lcom/dolphin/browser/q/b/o;

    iget-object v1, v1, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {v0, v1}, Lcom/c/b/b/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 624
    invoke-virtual {v0, v1}, Lcom/c/b/b/b;->c(Ljava/lang/String;)Lcom/c/b/c/l;

    move-result-object v0

    .line 626
    iget-object v3, p0, Lcom/dolphin/browser/q/b/r;->a:Lcom/dolphin/browser/q/b/o;

    iget-object v3, v3, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v3, v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/dolphin/browser/q/b/r;->a:Lcom/dolphin/browser/q/b/o;

    invoke-static {v1, v2}, Lcom/dolphin/browser/q/b/o;->a(Lcom/dolphin/browser/q/b/o;Ljava/util/List;)Ljava/util/List;

    .line 628
    iget-object v1, p0, Lcom/dolphin/browser/q/b/r;->a:Lcom/dolphin/browser/q/b/o;

    invoke-static {v1, v0}, Lcom/dolphin/browser/q/b/o;->a(Lcom/dolphin/browser/q/b/o;Lcom/c/b/c/l;)Lcom/c/b/c/l;

    .line 629
    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
