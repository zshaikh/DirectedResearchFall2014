.class Lcom/dolphin/browser/bookmark/m;
.super Lcom/dolphin/browser/util/f;
.source "BaseBookmarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/dolphin/browser/bookmark/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/j;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/bookmark/j;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/bookmark/j;Lcom/dolphin/browser/bookmark/k;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/m;-><init>(Lcom/dolphin/browser/bookmark/j;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/m;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 364
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/m;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 375
    if-nez p1, :cond_2

    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/j;->a(Lcom/dolphin/browser/bookmark/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->notifyDataSetChanged()V

    .line 382
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->z()Lcom/dolphin/browser/bookmark/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->z()Lcom/dolphin/browser/bookmark/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a;->a()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/j;->a(Lcom/dolphin/browser/bookmark/j;Z)Z

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/j;->b(Lcom/dolphin/browser/bookmark/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/j;->b(Lcom/dolphin/browser/bookmark/j;Z)Z

    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->p()V

    .line 391
    :cond_1
    return-void

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/m;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-static {v0, p1}, Lcom/dolphin/browser/bookmark/j;->a(Lcom/dolphin/browser/bookmark/j;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
