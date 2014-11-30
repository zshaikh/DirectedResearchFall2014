.class Lse/emilsjolander/stickylistheaders/q;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/q;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/q;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/q;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/q;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 482
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/q;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/q;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/t;

    move-result-object v1

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/t;->a()I

    move-result v1

    invoke-static {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;I)V

    .line 483
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/q;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/q;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 491
    :cond_0
    return-void
.end method
