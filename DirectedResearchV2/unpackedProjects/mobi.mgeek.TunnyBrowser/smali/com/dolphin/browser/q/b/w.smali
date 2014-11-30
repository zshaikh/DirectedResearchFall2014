.class Lcom/dolphin/browser/q/b/w;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/ar;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/q/b/t;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/t;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/dolphin/browser/q/b/w;->b:Lcom/dolphin/browser/q/b/t;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 739
    new-instance v0, Lcom/c/b/c/x;

    invoke-direct {v0}, Lcom/c/b/c/x;-><init>()V

    .line 740
    iget-object v1, p0, Lcom/dolphin/browser/q/b/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/b/c/x;->b(Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/dolphin/browser/q/b/w;->b:Lcom/dolphin/browser/q/b/t;

    iget-object v1, v1, Lcom/dolphin/browser/q/b/t;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v1}, Lcom/dolphin/browser/q/b/f;->f(Lcom/dolphin/browser/q/b/f;)Lcom/c/b/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/q/b/w;->b:Lcom/dolphin/browser/q/b/t;

    iget-object v2, v2, Lcom/dolphin/browser/q/b/t;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v2}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/c/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/c/b/b/b;->a(Ljava/lang/String;Lcom/c/b/c/x;)Lcom/c/b/c/x;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/dolphin/browser/q/b/w;->b:Lcom/dolphin/browser/q/b/t;

    invoke-static {v1, v0}, Lcom/dolphin/browser/q/b/t;->a(Lcom/dolphin/browser/q/b/t;Lcom/c/b/c/x;)V

    .line 746
    :cond_0
    return-object v0
.end method
