.class Lse/emilsjolander/stickylistheaders/b;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# instance fields
.field final synthetic a:Lse/emilsjolander/stickylistheaders/a;


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/a;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/b;->a:Lse/emilsjolander/stickylistheaders/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/b;->a:Lse/emilsjolander/stickylistheaders/a;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/a;->c(Lse/emilsjolander/stickylistheaders/a;)V

    .line 49
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/b;->a:Lse/emilsjolander/stickylistheaders/a;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/a;->a(Lse/emilsjolander/stickylistheaders/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/b;->a:Lse/emilsjolander/stickylistheaders/a;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/a;->b(Lse/emilsjolander/stickylistheaders/a;)V

    .line 44
    return-void
.end method
