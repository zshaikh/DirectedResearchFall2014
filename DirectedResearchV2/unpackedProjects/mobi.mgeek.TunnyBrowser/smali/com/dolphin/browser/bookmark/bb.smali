.class public Lcom/dolphin/browser/bookmark/bb;
.super Ljava/lang/Object;
.source "BookmarkItemSorter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/bookmark/bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bb;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/bb;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bb;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/br;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bb;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00b4

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bb;->b:Lcom/dolphin/browser/bookmark/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bb;->b:Lcom/dolphin/browser/bookmark/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bd;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->b:Lcom/dolphin/browser/util/p;

    if-ne v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bb;->b:Lcom/dolphin/browser/bookmark/bd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/bd;->b(Z)Z

    .line 41
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/bd;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmark/bd;-><init>(Lcom/dolphin/browser/bookmark/bb;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/bb;->b:Lcom/dolphin/browser/bookmark/bd;

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bb;->b:Lcom/dolphin/browser/bookmark/bd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 43
    return-void
.end method
