.class public Lcom/dolphin/browser/q/b/o;
.super Ljava/util/Observable;
.source "EvernoteApiCaller.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/c/b/c/l;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/q/b/f;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 548
    iput-object p1, p0, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 549
    iput-object v0, p0, Lcom/dolphin/browser/q/b/o;->b:Ljava/util/List;

    .line 550
    iput-object v0, p0, Lcom/dolphin/browser/q/b/o;->c:Lcom/c/b/c/l;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/o;Lcom/c/b/c/l;)Lcom/c/b/c/l;
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/dolphin/browser/q/b/o;->c:Lcom/c/b/c/l;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/o;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/dolphin/browser/q/b/o;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/dolphin/browser/q/b/o;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/q/b/au;)V
    .locals 3

    .prologue
    .line 575
    new-instance v1, Lcom/dolphin/browser/q/b/p;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/b/p;-><init>(Lcom/dolphin/browser/q/b/o;)V

    .line 589
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 608
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v2}, Lcom/dolphin/browser/q/b/f;->b(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V

    .line 609
    return-void

    .line 589
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/q;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/b/q;-><init>(Lcom/dolphin/browser/q/b/o;Lcom/dolphin/browser/q/b/au;)V

    goto :goto_0
.end method

.method public b()Lcom/c/b/c/l;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/q/b/o;->c:Lcom/c/b/c/l;

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/q/b/au;)V
    .locals 3

    .prologue
    .line 615
    new-instance v1, Lcom/dolphin/browser/q/b/r;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/b/r;-><init>(Lcom/dolphin/browser/q/b/o;)V

    .line 637
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 657
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/q/b/o;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v2}, Lcom/dolphin/browser/q/b/f;->b(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V

    .line 658
    return-void

    .line 637
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/s;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/b/s;-><init>(Lcom/dolphin/browser/q/b/o;Lcom/dolphin/browser/q/b/au;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 561
    iput-object v1, p0, Lcom/dolphin/browser/q/b/o;->c:Lcom/c/b/c/l;

    .line 562
    iget-object v0, p0, Lcom/dolphin/browser/q/b/o;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/q/b/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 565
    :cond_0
    iput-object v1, p0, Lcom/dolphin/browser/q/b/o;->b:Ljava/util/List;

    .line 566
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/o;->setChanged()V

    .line 570
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/o;->notifyObservers()V

    .line 571
    return-void
.end method
