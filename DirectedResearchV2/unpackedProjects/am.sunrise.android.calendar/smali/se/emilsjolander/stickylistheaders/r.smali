.class Lse/emilsjolander/stickylistheaders/r;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/u;


# instance fields
.field final synthetic a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/r;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/t;

    move-result-object v1

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/t;->a()I

    move-result v1

    invoke-static {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;I)V

    .line 504
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 507
    const/4 v0, 0x0

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getRight()I

    move-result v2

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 508
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1, v4, v5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 509
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 514
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/r;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1, v4, v5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method
