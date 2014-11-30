.class Lcom/dolphin/browser/q/b/ao;
.super Ljava/lang/Object;
.source "EvernoteManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/at;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/bh;

.field final synthetic b:Lcom/dolphin/browser/q/b/n;

.field final synthetic c:Lcom/dolphin/browser/q/b/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bh;Lcom/dolphin/browser/q/b/n;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ao;->c:Lcom/dolphin/browser/q/b/ag;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/ao;->a:Lcom/dolphin/browser/q/b/bh;

    iput-object p3, p0, Lcom/dolphin/browser/q/b/ao;->b:Lcom/dolphin/browser/q/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ao;->a:Lcom/dolphin/browser/q/b/bh;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/bh;->a(Ljava/lang/Object;)V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ao;->b:Lcom/dolphin/browser/q/b/n;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/dolphin/browser/q/b/n;->e:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ao;->c:Lcom/dolphin/browser/q/b/ag;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/ao;->b:Lcom/dolphin/browser/q/b/n;

    iget-object v2, p0, Lcom/dolphin/browser/q/b/ao;->a:Lcom/dolphin/browser/q/b/bh;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/bh;)V

    goto :goto_0
.end method
