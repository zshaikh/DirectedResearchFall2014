.class public Lam/sunrise/android/calendar/ui/b/n;
.super Lam/sunrise/android/calendar/ui/b/d;
.source "SRSectionnedChoiceListDialog.java"


# instance fields
.field private a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/d;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    const v0, 0x7f030049

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 32
    const v0, 0x7f0b0094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/n;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 33
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/n;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    new-instance v2, Lam/sunrise/android/calendar/ui/b/o;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/b/o;-><init>(Lam/sunrise/android/calendar/ui/b/n;)V

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/n;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 40
    return-object v1
.end method

.method public a(Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/n;->dismiss()V

    .line 61
    return-void
.end method

.method public a(Lse/emilsjolander/stickylistheaders/i;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/n;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 57
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/n;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 53
    return-void
.end method
