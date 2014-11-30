.class public Lcom/facebook/orca/threadlist/ThreadListActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "ThreadListActivity.java"


# instance fields
.field private A:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private B:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

.field private C:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

.field private D:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

.field private E:Landroid/widget/ListView;

.field private F:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private G:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

.field private H:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

.field private I:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

.field private J:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

.field private K:Landroid/widget/FrameLayout;

.field private L:Lcom/facebook/orca/threadlist/NewMessageNuxView;

.field private M:Landroid/content/BroadcastReceiver;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private O:Z

.field private P:Z

.field private Q:Lcom/facebook/orca/threads/ThreadsCollection;

.field private R:Z

.field private S:J

.field private T:J

.field private k:Lcom/facebook/orca/app/OrcaApplication;

.field private m:Lcom/facebook/orca/cache/DataCache;

.field private n:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private o:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

.field private q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

.field private r:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

.field private s:Lcom/facebook/orca/server/BackgroundRefreshRunner;

.field private t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

.field private u:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private v:Landroid/view/inputmethod/InputMethodManager;

.field private w:Lcom/facebook/orca/prefs/UiCounters;

.field private x:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private y:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private z:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 67
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    .line 105
    invoke-static {}, Lcom/facebook/orca/threads/ThreadsCollection;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 107
    iput-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->S:J

    .line 108
    iput-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->T:J

    .line 704
    return-void
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 349
    :cond_0
    const-string v0, "orca:ThreadListActivity"

    const-string v1, "Starting FETCH_THREADS"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 351
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->d()Lcom/facebook/orca/server/FetchThreadsParams;

    move-result-object v0

    .line 354
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 355
    const-string v2, "fetchThreadsParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 356
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_threads"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 357
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->D:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3

    .prologue
    .line 478
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadsResult;

    .line 480
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->D:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 481
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 482
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->i()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->S:J

    .line 483
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->R:Z

    .line 485
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    .line 486
    iget-boolean v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->O:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v1, :cond_0

    .line 488
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 495
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->p()V

    .line 496
    return-void

    .line 489
    :cond_0
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v1, :cond_1

    .line 491
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 493
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->P:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->o()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListActivity;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListActivity;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 658
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->o:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-object v7, v0

    .line 659
    new-instance v1, Lcom/facebook/orca/server/MarkThreadParams;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/server/MarkThreadParams$Mark;->ARCHIVED:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lcom/facebook/orca/server/MarkThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/server/MarkThreadParams$Mark;ZJ)V

    .line 663
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 664
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 665
    const-string v3, "markThreadParams"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 666
    invoke-virtual {v7, v4}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 667
    const-string v1, "mark_thread"

    invoke-virtual {v7, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 670
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 671
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadSummary;

    .line 672
    if-eq v1, p1, :cond_0

    .line 673
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 676
    :cond_1
    new-instance v1, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 679
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->q()V

    .line 680
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->n()V

    .line 475
    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->D:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 500
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 502
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 503
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->P:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(Lcom/facebook/orca/ops/ServiceException;)V

    .line 505
    iput-boolean v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->P:Z

    .line 507
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 595
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/threads/ThreadsCollection;->a(Lcom/facebook/orca/threads/ThreadsCollection;Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 598
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->q()V

    .line 600
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->i()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->d(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadlist/ThreadListActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->M:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 611
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->e()V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 614
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 615
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    const-string v2, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private c(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 510
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    .line 511
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(J)V

    .line 512
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 513
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->C:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v2, p1, v3}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 517
    return-void
.end method

.method private d(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->j()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->r()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/server/BackgroundRefreshRunner;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/threadlist/ThreadListAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->P:Z

    .line 281
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 282
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->e()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->S:J

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->R:Z

    .line 298
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->O:Z

    if-eqz v0, :cond_1

    .line 300
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->O:Z

    .line 307
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->p()V

    .line 313
    :goto_1
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 311
    :cond_2
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_1
.end method

.method private k()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->M:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "orca:ThreadListActivity"

    const-string v1, "Called registerNotificationReceiver twice."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    const-string v1, "com.facebook.orca.ACTION_THREAD_UPDATES_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$7;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->M:Landroid/content/BroadcastReceiver;

    .line 334
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->M:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->M:Landroid/content/BroadcastReceiver;

    .line 342
    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 373
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v1, "logout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->r:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->c()Landroid/content/Intent;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->finish()V

    .line 380
    return-void
.end method

.method private o()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->n()V

    .line 471
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->L:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->b()V

    .line 523
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->q()V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->L:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->b()V

    .line 535
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->q()V

    goto :goto_0
.end method

.method private q()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 539
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V

    .line 545
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 546
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 547
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->D:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iget-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->S:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setLastLoadedTime(J)V

    .line 548
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$8;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 554
    return-void

    :cond_0
    move v1, v2

    .line 540
    goto :goto_0

    .line 541
    :cond_1
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    goto :goto_1
.end method

.method private r()V
    .locals 5

    .prologue
    .line 643
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 644
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 645
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    move v3, v0

    .line 646
    :goto_0
    if-gt v3, v2, :cond_1

    .line 647
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 648
    instance-of v4, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v4, :cond_0

    .line 649
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 650
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Ljava/util/List;)V

    .line 654
    return-void
.end method

.method private s()V
    .locals 6

    .prologue
    .line 683
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/FolderCounts;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 693
    iget-wide v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->T:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 699
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 700
    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v4, "mark_folder_seen"

    invoke-virtual {v3, v4, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 701
    iput-wide v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->T:J

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 126
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 129
    const-class v0, Lcom/facebook/orca/app/OrcaApplication;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaApplication;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->k:Lcom/facebook/orca/app/OrcaApplication;

    .line 130
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/cache/DataCache;

    .line 131
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 132
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->o:Lcom/google/inject/Provider;

    .line 133
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->p:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    .line 134
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    .line 135
    const-class v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->r:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    .line 136
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    .line 137
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 138
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 139
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->v:Landroid/view/inputmethod/InputMethodManager;

    .line 140
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->w:Lcom/facebook/orca/prefs/UiCounters;

    .line 142
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->B:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    .line 143
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->C:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 144
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->D:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    .line 145
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    .line 146
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 147
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    .line 148
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->H:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    .line 149
    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->I:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    .line 150
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->J:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    .line 151
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->K:Landroid/widget/FrameLayout;

    .line 152
    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/NewMessageNuxView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->L:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    .line 154
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->f()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->N:Ljava/util/List;

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->C:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->N:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->C:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$1;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V

    .line 169
    const-string v0, "fetchThreadsOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$2;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 182
    const-string v0, "fetchMoreThreadsOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$3;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 195
    const-string v0, "logoutOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$4;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a001e

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 210
    const-string v0, "markFolderSeenOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$5;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->D:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$6;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setOnRefreshListener(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;)V

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;Lcom/facebook/orca/threadlist/ThreadListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 227
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->I:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setAnimationContainer(Landroid/widget/FrameLayout;)V

    .line 229
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->setContentView(I)V

    .line 122
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 560
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 577
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->Q:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->e()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadsCollection;->a(I)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    .line 580
    new-instance v2, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/server/FetchMoreThreadsParams;-><init>(JI)V

    .line 581
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOADING:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V

    .line 582
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 584
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 585
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 586
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_more_threads"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->w:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "compose_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 623
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 625
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 628
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 629
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 630
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 633
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/about/OrcaAboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 635
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 638
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://fb.me/9ar8BD3z5VaPp\u200b2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 639
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 640
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onAttachedToWindow()V

    .line 113
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 116
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 445
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 447
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 448
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_1

    .line 449
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 450
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/member/DeleteThreadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    const-string v2, "threadid"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 465
    :goto_0
    return v0

    .line 455
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_1

    .line 456
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 458
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 459
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_1

    .line 460
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 461
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 465
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 429
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Landroid/widget/ListView;

    if-ne p2, v0, :cond_0

    .line 430
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 431
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 432
    instance-of v0, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 433
    const v0, 0x7f0a0025

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 434
    const v0, 0x7f0a0027

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 436
    const v0, 0x7f0a0026

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 440
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 385
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 386
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onDestroy()V

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 235
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->l()V

    .line 236
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 392
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 394
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->i()V

    move v0, v1

    .line 395
    goto :goto_0

    .line 398
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->e()V

    move v0, v1

    .line 399
    goto :goto_0

    .line 402
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()V

    move v0, v1

    .line 403
    goto :goto_0

    .line 406
    :pswitch_3
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->g()V

    move v0, v1

    .line 407
    goto :goto_0

    .line 410
    :pswitch_4
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->h()V

    move v0, v1

    .line 411
    goto :goto_0

    .line 414
    :pswitch_5
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->f()V

    move v0, v1

    .line 415
    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x7f080129
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onPause()V

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 276
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->l()V

    .line 277
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 242
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 243
    const-string v1, "from_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 244
    if-eqz v1, :cond_0

    .line 248
    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    .line 250
    iput-boolean v3, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->O:Z

    .line 251
    iput-boolean v3, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->P:Z

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->p:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b()V

    .line 259
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->j()V

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->H:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->i()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->setAppConfig(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->J:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->b()V

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->J:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->I:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    .line 269
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->k()V

    .line 270
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->I:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onUserInteraction()V

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    .line 288
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->s()V

    .line 289
    return-void
.end method
