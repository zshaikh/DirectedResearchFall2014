.class public Lam/sunrise/android/calendar/ui/settings/bb;
.super Lam/sunrise/android/calendar/ui/c;
.source "SettingsNotificationsFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/settings/a/n;


# instance fields
.field private a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Lam/sunrise/android/calendar/ui/settings/a/k;

.field private f:Z

.field private g:Z

.field private h:Lam/sunrise/android/calendar/ui/settings/bd;

.field private i:Lam/sunrise/android/calendar/ui/settings/bf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 51
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bd;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/bd;-><init>(Lam/sunrise/android/calendar/ui/settings/bb;Lam/sunrise/android/calendar/ui/settings/bc;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->h:Lam/sunrise/android/calendar/ui/settings/bd;

    .line 52
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bf;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/bf;-><init>(Lam/sunrise/android/calendar/ui/settings/bb;Lam/sunrise/android/calendar/ui/settings/bc;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->i:Lam/sunrise/android/calendar/ui/settings/bf;

    .line 56
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/bb;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->d()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/bb;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/bb;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/bb;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/settings/bb;->f:Z

    return p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/bb;)Lam/sunrise/android/calendar/ui/settings/a/k;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->e:Lam/sunrise/android/calendar/ui/settings/a/k;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/bb;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/settings/bb;->g:Z

    return p1
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/settings/bb;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->g:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->d:Landroid/widget/TextView;

    const v1, 0x7f0f00dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/settings/bb;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->f:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/bb;->i:Lam/sunrise/android/calendar/ui/settings/bf;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 119
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    const-string v1, "calendar_reminders"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Lam/sunrise/android/calendar/provider/g;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 92
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/bb;->h:Lam/sunrise/android/calendar/ui/settings/bd;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 94
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0150

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f030068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onStop()V

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/reminders/RemindersService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v1, "am.sunrise.android.calendar.action.PERFORM_REMINDERS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/ui/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 72
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->b:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->b:Landroid/view/View;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->c:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->b:Landroid/view/View;

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->d:Landroid/widget/TextView;

    .line 76
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bb;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 82
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bb;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 85
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/k;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lam/sunrise/android/calendar/ui/settings/a/k;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/settings/a/n;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->e:Lam/sunrise/android/calendar/ui/settings/a/k;

    .line 86
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bb;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bb;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bb;->e:Lam/sunrise/android/calendar/ui/settings/a/k;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 88
    return-void
.end method
