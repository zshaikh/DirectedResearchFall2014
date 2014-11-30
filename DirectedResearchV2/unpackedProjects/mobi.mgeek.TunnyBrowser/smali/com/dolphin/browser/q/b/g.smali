.class Lcom/dolphin/browser/q/b/g;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/ar;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/f;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/dolphin/browser/q/b/g;->a:Lcom/dolphin/browser/q/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/q/b/g;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/q/b/g;->a:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/f;->a()Lcom/c/b/d/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/c/b/d/b;->a(Ljava/lang/String;)Lcom/c/b/c/z;

    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/dolphin/browser/q/b/g;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v2, v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
