.class public Lcom/dolphin/browser/q/b/t;
.super Ljava/util/Observable;
.source "EvernoteApiCaller.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/q/b/f;)V
    .locals 1

    .prologue
    .line 661
    iput-object p1, p0, Lcom/dolphin/browser/q/b/t;->a:Lcom/dolphin/browser/q/b/f;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/t;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/t;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/dolphin/browser/q/b/t;->b:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/c/b/c/x;)V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/dolphin/browser/q/b/t;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/t;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/t;Lcom/c/b/c/x;)V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/t;->a(Lcom/c/b/c/x;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/dolphin/browser/q/b/t;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/dolphin/browser/q/b/t;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 677
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/t;->b:Ljava/util/List;

    .line 678
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/b/av;)V
    .locals 3

    .prologue
    .line 693
    new-instance v1, Lcom/dolphin/browser/q/b/u;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/b/u;-><init>(Lcom/dolphin/browser/q/b/t;)V

    .line 710
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 730
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/q/b/t;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v2}, Lcom/dolphin/browser/q/b/f;->b(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V

    .line 731
    return-void

    .line 710
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/v;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/b/v;-><init>(Lcom/dolphin/browser/q/b/t;Lcom/dolphin/browser/q/b/av;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/q/b/av;)V
    .locals 3

    .prologue
    .line 735
    new-instance v0, Lcom/dolphin/browser/q/b/w;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/b/w;-><init>(Lcom/dolphin/browser/q/b/t;Ljava/lang/String;)V

    .line 750
    new-instance v1, Lcom/dolphin/browser/q/b/x;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/q/b/x;-><init>(Lcom/dolphin/browser/q/b/t;Lcom/dolphin/browser/q/b/av;)V

    .line 769
    iget-object v2, p0, Lcom/dolphin/browser/q/b/t;->a:Lcom/dolphin/browser/q/b/f;

    invoke-static {v2}, Lcom/dolphin/browser/q/b/f;->b(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V

    .line 770
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Lcom/dolphin/browser/q/b/t;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/t;->setChanged()V

    .line 686
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/t;->notifyObservers()V

    .line 687
    return-void
.end method
