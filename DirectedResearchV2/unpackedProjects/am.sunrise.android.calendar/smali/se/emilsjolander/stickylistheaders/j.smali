.class Lse/emilsjolander/stickylistheaders/j;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/j;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 389
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/j;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/j;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/n;

    move-result-object v0

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/j;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/j;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/j;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/j;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v4}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lse/emilsjolander/stickylistheaders/n;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 394
    :cond_0
    return-void
.end method
