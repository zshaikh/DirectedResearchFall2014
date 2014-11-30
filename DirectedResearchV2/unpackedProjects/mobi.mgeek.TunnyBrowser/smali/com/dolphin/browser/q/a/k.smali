.class Lcom/dolphin/browser/q/a/k;
.super Ljava/lang/Object;
.source "BoxManager.java"

# interfaces
.implements Lcom/b/a/c/b;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/j;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dolphin/browser/q/a/k;->a:Lcom/dolphin/browser/q/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/d;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "get_account_info_ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/q/a/k;->a:Lcom/dolphin/browser/q/a/j;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/j;->b(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/y;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/a/y;->a(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/q/a/k;->a:Lcom/dolphin/browser/q/a/j;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/j;->c(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/q/a/k;->a:Lcom/dolphin/browser/q/a/j;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/j;->c(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/q/a/z;->a()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/a/k;->a:Lcom/dolphin/browser/q/a/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/a/j;->a(Lcom/dolphin/browser/q/a/j;Z)Z

    .line 120
    return-void
.end method

.method public a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 124
    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/q/a/k;->a:Lcom/dolphin/browser/q/a/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/a/j;->a(Lcom/dolphin/browser/q/a/j;Z)Z

    .line 126
    return-void
.end method
