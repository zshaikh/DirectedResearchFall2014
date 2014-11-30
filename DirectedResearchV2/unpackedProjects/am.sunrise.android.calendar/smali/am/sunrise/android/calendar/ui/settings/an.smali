.class public Lam/sunrise/android/calendar/ui/settings/an;
.super Lam/sunrise/android/calendar/ui/c;
.source "SettingsDefaultCalendarFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/settings/a/h;


# instance fields
.field private a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Lam/sunrise/android/calendar/ui/settings/a/d;

.field private f:Z

.field private g:Z

.field private h:Lam/sunrise/android/calendar/ui/settings/ap;

.field private i:Lam/sunrise/android/calendar/ui/settings/ar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 49
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ap;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/ap;-><init>(Lam/sunrise/android/calendar/ui/settings/an;Lam/sunrise/android/calendar/ui/settings/ao;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->h:Lam/sunrise/android/calendar/ui/settings/ap;

    .line 50
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ar;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/ar;-><init>(Lam/sunrise/android/calendar/ui/settings/an;Lam/sunrise/android/calendar/ui/settings/ao;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->i:Lam/sunrise/android/calendar/ui/settings/ar;

    .line 54
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/an;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/an;->d()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/an;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/an;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/an;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/settings/an;->f:Z

    return p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/an;)Lam/sunrise/android/calendar/ui/settings/a/d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->e:Lam/sunrise/android/calendar/ui/settings/a/d;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/an;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/settings/an;->g:Z

    return p1
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/settings/an;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->g:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->d:Landroid/widget/TextView;

    const v1, 0x7f0f00dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/settings/an;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->f:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/an;->i:Lam/sunrise/android/calendar/ui/settings/ar;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 101
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/an;->h:Lam/sunrise/android/calendar/ui/settings/ap;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 92
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f030066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/ui/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 70
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->b:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->b:Landroid/view/View;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->c:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->b:Landroid/view/View;

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->d:Landroid/widget/TextView;

    .line 74
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/an;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 80
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/an;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 81
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 83
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/d;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/an;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lam/sunrise/android/calendar/ui/settings/a/d;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/settings/a/h;Landroid/widget/ListView;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->e:Lam/sunrise/android/calendar/ui/settings/a/d;

    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/an;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/an;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/an;->e:Lam/sunrise/android/calendar/ui/settings/a/d;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 86
    return-void
.end method
