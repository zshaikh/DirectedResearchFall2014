.class Lcom/dolphin/browser/tablist/v;
.super Lcom/dolphin/browser/util/f;
.source "CloudTabListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 1

    .prologue
    .line 418
    iput-object p1, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/v;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/tablist/j;Lcom/dolphin/browser/tablist/k;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/v;-><init>(Lcom/dolphin/browser/tablist/j;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 418
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/v;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/j;->f(Lcom/dolphin/browser/tablist/j;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/tablist/j;->a:Ljava/util/List;

    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/j;->g(Lcom/dolphin/browser/tablist/j;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/tablist/j;->b:Ljava/util/List;

    .line 434
    iget-object v0, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/j;->h(Lcom/dolphin/browser/tablist/j;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/tablist/j;->c:Ljava/util/List;

    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/v;->a(Z)V

    .line 426
    invoke-super {p0}, Lcom/dolphin/browser/util/f;->a()V

    .line 427
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 418
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/v;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->i(Lcom/dolphin/browser/tablist/j;)V

    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/v;->a(Z)V

    .line 443
    invoke-super {p0, p1}, Lcom/dolphin/browser/util/f;->a(Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/dolphin/browser/tablist/v;->a:Lcom/dolphin/browser/tablist/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/j;->a(Lcom/dolphin/browser/tablist/j;Lcom/dolphin/browser/tablist/v;)Lcom/dolphin/browser/tablist/v;

    .line 454
    iput-boolean p1, p0, Lcom/dolphin/browser/tablist/v;->b:Z

    .line 455
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/v;->b:Z

    return v0
.end method
