.class public Lam/sunrise/android/calendar/ui/settings/bj;
.super Lam/sunrise/android/calendar/ui/c;
.source "SettingsVisibleCalendarsFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/settings/a/t;


# instance fields
.field private a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Lam/sunrise/android/calendar/ui/settings/a/q;

.field private f:Z

.field private g:Z

.field private h:Lam/sunrise/android/calendar/ui/settings/bl;

.field private i:Lam/sunrise/android/calendar/ui/settings/bo;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 61
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bl;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/bl;-><init>(Lam/sunrise/android/calendar/ui/settings/bj;Lam/sunrise/android/calendar/ui/settings/bk;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->h:Lam/sunrise/android/calendar/ui/settings/bl;

    .line 62
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bo;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/bo;-><init>(Lam/sunrise/android/calendar/ui/settings/bj;Lam/sunrise/android/calendar/ui/settings/bk;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->i:Lam/sunrise/android/calendar/ui/settings/bo;

    .line 64
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bk;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/bk;-><init>(Lam/sunrise/android/calendar/ui/settings/bj;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->j:Ljava/lang/Runnable;

    .line 73
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/bj;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->d()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/bj;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/bj;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/bj;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/bj;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bn;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/bj;->e:Lam/sunrise/android/calendar/ui/settings/a/q;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/settings/a/q;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lam/sunrise/android/calendar/ui/settings/bn;-><init>(Landroid/content/Context;Ljava/util/HashMap;Z)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/bn;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/bj;)Lam/sunrise/android/calendar/ui/settings/a/q;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->e:Lam/sunrise/android/calendar/ui/settings/a/q;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/bj;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->f:Z

    return p1
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/settings/bj;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->g:Z

    return v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/settings/bj;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->g:Z

    return p1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->d:Landroid/widget/TextView;

    const v1, 0x7f0f00dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/settings/bj;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->f:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/bj;->i:Lam/sunrise/android/calendar/ui/settings/bo;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 141
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/bj;->h:Lam/sunrise/android/calendar/ui/settings/bl;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 111
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0157

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f030069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onPause()V

    .line 117
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 122
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bj;->a(Z)V

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/ui/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 89
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->b:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->b:Landroid/view/View;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->c:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->b:Landroid/view/View;

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->d:Landroid/widget/TextView;

    .line 93
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 99
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 100
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 102
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/q;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lam/sunrise/android/calendar/ui/settings/a/q;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/settings/a/t;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->e:Lam/sunrise/android/calendar/ui/settings/a/q;

    .line 103
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bj;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bj;->e:Lam/sunrise/android/calendar/ui/settings/a/q;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 105
    return-void
.end method
