.class Lse/emilsjolander/stickylistheaders/l;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersListView.java"


# instance fields
.field final synthetic a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/l;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/l;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/l;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    .line 464
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/l;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    .line 469
    return-void
.end method
