.class Lse/emilsjolander/stickylistheaders/m;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/d;


# instance fields
.field final synthetic a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/m;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/m;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)V
    .locals 7

    .prologue
    .line 523
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/m;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/n;

    move-result-object v0

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/m;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Lse/emilsjolander/stickylistheaders/n;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 526
    return-void
.end method
