.class Lse/emilsjolander/stickylistheaders/k;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnTouchListener;

.field final synthetic b:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/k;->b:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object p2, p0, Lse/emilsjolander/stickylistheaders/k;->a:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/k;->a:Landroid/view/View$OnTouchListener;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/k;->b:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
