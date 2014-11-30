.class Lcom/dolphin/browser/share/facebook/l;
.super Ljava/lang/Object;
.source "FacebookShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/c/q;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a;

.field final synthetic b:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Lcom/dolphin/browser/share/a;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/l;->b:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    iput-object p2, p0, Lcom/dolphin/browser/share/facebook/l;->a:Lcom/dolphin/browser/share/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/l;->a:Lcom/dolphin/browser/share/a;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/l;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0}, Lcom/dolphin/browser/share/a;->a()V

    .line 531
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/l;->a:Lcom/dolphin/browser/share/a;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/l;->a:Lcom/dolphin/browser/share/a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Object;)V

    .line 538
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/l;->a:Lcom/dolphin/browser/share/a;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/l;->a:Lcom/dolphin/browser/share/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Throwable;)V

    .line 545
    :cond_0
    return-void
.end method
