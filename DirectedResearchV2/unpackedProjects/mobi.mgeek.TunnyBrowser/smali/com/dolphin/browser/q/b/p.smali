.class Lcom/dolphin/browser/q/b/p;
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
    .line 575
    iput-object p1, p0, Lcom/dolphin/browser/q/b/p;->a:Lcom/dolphin/browser/q/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/dolphin/browser/q/b/p;->a:Lcom/dolphin/browser/q/b/o;

    iget-object v0, v0, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 580
    iget-object v0, p0, Lcom/dolphin/browser/q/b/p;->a:Lcom/dolphin/browser/q/b/o;

    iget-object v0, v0, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->f(Lcom/dolphin/browser/q/b/f;)Lcom/c/b/b/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/c/b/b/b;->c(Ljava/lang/String;)Lcom/c/b/c/l;

    move-result-object v0

    .line 581
    iget-object v2, p0, Lcom/dolphin/browser/q/b/p;->a:Lcom/dolphin/browser/q/b/o;

    iget-object v2, v2, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v2, v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/dolphin/browser/q/b/p;->a:Lcom/dolphin/browser/q/b/o;

    invoke-static {v1, v0}, Lcom/dolphin/browser/q/b/o;->a(Lcom/dolphin/browser/q/b/o;Lcom/c/b/c/l;)Lcom/c/b/c/l;

    .line 585
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
