.class Lse/emilsjolander/stickylistheaders/c;
.super Ljava/lang/Object;
.source "AdapterWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lse/emilsjolander/stickylistheaders/a;


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/a;I)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/c;->b:Lse/emilsjolander/stickylistheaders/a;

    iput p2, p0, Lse/emilsjolander/stickylistheaders/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/c;->b:Lse/emilsjolander/stickylistheaders/a;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/a;->d(Lse/emilsjolander/stickylistheaders/a;)Lse/emilsjolander/stickylistheaders/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/c;->b:Lse/emilsjolander/stickylistheaders/a;

    iget-object v0, v0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    iget v1, p0, Lse/emilsjolander/stickylistheaders/c;->a:I

    invoke-interface {v0, v1}, Lse/emilsjolander/stickylistheaders/i;->a(I)J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/c;->b:Lse/emilsjolander/stickylistheaders/a;

    invoke-static {v2}, Lse/emilsjolander/stickylistheaders/a;->d(Lse/emilsjolander/stickylistheaders/a;)Lse/emilsjolander/stickylistheaders/d;

    move-result-object v2

    iget v3, p0, Lse/emilsjolander/stickylistheaders/c;->a:I

    invoke-interface {v2, p1, v3, v0, v1}, Lse/emilsjolander/stickylistheaders/d;->a(Landroid/view/View;IJ)V

    .line 142
    :cond_0
    return-void
.end method
