.class public Lcom/facebook/orca/threadview/ThreadViewActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "ThreadViewActivity.java"


# instance fields
.field private A:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

.field private B:Landroid/view/View;

.field private C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Lcom/facebook/orca/compose/LocationNuxView;

.field private H:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

.field private I:Ljava/lang/String;

.field private J:Landroid/content/BroadcastReceiver;

.field private K:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

.field private O:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

.field private P:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

.field private Q:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

.field private R:Lcom/facebook/orca/tabs/TabIndicatorView;

.field private S:Lcom/facebook/orca/tabs/TabIndicatorView;

.field private T:Lcom/facebook/orca/tabs/TabIndicatorView;

.field private U:Lcom/facebook/orca/tabs/TabIndicatorView;

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Ljava/lang/String;

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Lcom/facebook/orca/threads/ThreadSummary;

.field private ae:Lcom/facebook/orca/threads/MessagesCollection;

.field private af:J

.field private ag:Lcom/facebook/orca/compose/ComposeMode;

.field private k:Lcom/facebook/orca/cache/DataCache;

.field private m:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private n:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

.field private o:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private p:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private q:Landroid/support/v4/app/FragmentManager;

.field private r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

.field private s:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private t:Landroid/view/inputmethod/InputMethodManager;

.field private u:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private v:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private w:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private x:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private y:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    .line 130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:J

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 686
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(J)V

    .line 687
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 689
    if-eqz p2, :cond_0

    .line 690
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f()Lcom/facebook/orca/compose/ComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView;->o()Landroid/view/View;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    .line 696
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->s:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v2, p1, v3}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->NORMAL:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 700
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 694
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 629
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 634
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 635
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 636
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 637
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 645
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 647
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    .line 648
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    .line 649
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->i()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:J

    .line 650
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 651
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 652
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->d(Z)V

    .line 653
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->r()V

    .line 655
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    .line 656
    iget-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ab:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v1, :cond_0

    .line 658
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 665
    :goto_0
    return-void

    .line 659
    :cond_0
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v1, :cond_1

    .line 661
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 663
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->s()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->aa:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 671
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    if-nez v0, :cond_2

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 673
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 679
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    if-eqz v0, :cond_1

    .line 680
    invoke-direct {p0, p1, v3}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 681
    iput-boolean v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 683
    :cond_1
    return-void

    .line 676
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/orca/threadview/ThreadViewActivity;->d(Z)V

    .line 677
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->r()V

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 749
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    .line 751
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->r()V

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 754
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 760
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g()V

    .line 761
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    if-eqz v0, :cond_0

    .line 762
    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 763
    iput-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 765
    :cond_0
    return-void
.end method

.method private c(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    .line 810
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->r()V

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ab:Z

    .line 814
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h()V

    .line 815
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->d(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private d(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 821
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 824
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->q()V

    return-void
.end method

.method private d(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->W:Z

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 444
    if-eqz p1, :cond_2

    .line 445
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 446
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 447
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 448
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 449
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->o()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 451
    :cond_2
    iput-boolean v4, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->W:Z

    .line 452
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 453
    const-string v1, "for_sharing"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g_()V

    .line 455
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f()Lcom/facebook/orca/compose/ComposeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeView;->b(Landroid/content/Intent;)V

    .line 456
    const-string v1, "for_sharing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/facebook/orca/threadview/ThreadViewActivity;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    return v0
.end method

.method static synthetic f(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->t()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/threadview/ThreadViewActivity;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->u:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->o:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 264
    sget-object v2, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 265
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "orca:ThreadViewActivity"

    const-string v1, "Called registerNotificationReceiver twice."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    const-string v1, "com.facebook.orca.ACTION_THREAD_UPDATES_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v1, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$5;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Landroid/content/BroadcastReceiver;

    .line 347
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Landroid/content/BroadcastReceiver;

    .line 355
    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->o:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-string v2, "settings"

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Y:Ljava/lang/String;

    .line 400
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 461
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->X:Z

    if-eqz v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setup()V

    .line 469
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;->a(I)Lcom/facebook/orca/tabs/TabIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->R:Lcom/facebook/orca/tabs/TabIndicatorView;

    .line 471
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->R:Lcom/facebook/orca/tabs/TabIndicatorView;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/tabs/TabIndicatorView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->R:Lcom/facebook/orca/tabs/TabIndicatorView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(Landroid/view/View;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(I)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)V

    .line 479
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;->a(I)Lcom/facebook/orca/tabs/TabIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/tabs/TabIndicatorView;

    .line 481
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/tabs/TabIndicatorView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(Landroid/view/View;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0800f2

    const v2, 0x7f0800f1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(II)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)V

    .line 488
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/tabs/TabIndicatorView;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/tabs/TabIndicatorView;->setVisibility(I)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;->a(I)Lcom/facebook/orca/tabs/TabIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->T:Lcom/facebook/orca/tabs/TabIndicatorView;

    .line 495
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const-string v1, "people"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->T:Lcom/facebook/orca/tabs/TabIndicatorView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(Landroid/view/View;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0800f4

    const v2, 0x7f0800f3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(II)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)V

    .line 504
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabShim;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;->a(I)Lcom/facebook/orca/tabs/TabIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->U:Lcom/facebook/orca/tabs/TabIndicatorView;

    .line 507
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const-string v1, "map"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->U:Lcom/facebook/orca/tabs/TabIndicatorView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(Landroid/view/View;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0800f6

    const v2, 0x7f0800f5

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(II)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)V

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setCurrentTab(I)V

    .line 517
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->t()V

    .line 519
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$6;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setOnTabChangedListener(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$OnTabChangeListener;)V

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->X:Z

    .line 526
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->q()V

    goto/16 :goto_0
.end method

.method private q()V
    .locals 5

    .prologue
    .line 530
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a()Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b()Landroid/view/View;

    .line 532
    const-string v1, "messages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Y:Ljava/lang/String;

    .line 534
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/prefs/PrefKeys;->c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v1

    .line 535
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->o:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 536
    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_1

    .line 541
    const-string v1, "messages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    iget-wide v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;J)V

    .line 563
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 565
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->aa:Z

    if-nez v0, :cond_2

    .line 566
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->t()V

    .line 568
    :cond_2
    return-void

    .line 543
    :cond_3
    const-string v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 544
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    if-nez v0, :cond_4

    .line 545
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0800f2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 549
    :cond_5
    const-string v1, "people"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 550
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    if-nez v0, :cond_6

    .line 551
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    .line 554
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 555
    :cond_7
    const-string v1, "map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    if-nez v0, :cond_8

    .line 557
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0800f6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    .line 560
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method private r()V
    .locals 5

    .prologue
    .line 771
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 773
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/tabs/TabIndicatorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/tabs/TabIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/tabs/TabIndicatorView;->setVisibility(I)V

    .line 777
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    iget-wide v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;J)V

    .line 792
    :cond_1
    :goto_0
    return-void

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    if-eqz v0, :cond_3

    .line 783
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 785
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    if-eqz v0, :cond_4

    .line 786
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 788
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 862
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    .line 863
    iput-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->aa:Z

    .line 864
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->p()V

    .line 865
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->o()Landroid/view/View;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 867
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-eqz v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Landroid/view/View;

    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->w()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 870
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->x()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 883
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity$8;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 907
    return-void

    :cond_0
    move v0, v3

    .line 862
    goto :goto_0

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const-string v2, "settings"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 877
    :goto_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Landroid/view/View;

    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->v()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 878
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->y()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 879
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->t:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->o()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 875
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private t()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iget-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->L:Ljava/util/List;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 911
    return-void

    .line 910
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->M:Ljava/util/List;

    goto :goto_0
.end method

.method private u()V
    .locals 6

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->V:Z

    if-nez v0, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 920
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 922
    new-instance v0, Lcom/facebook/orca/server/MarkThreadParams;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/MarkThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/server/MarkThreadParams$Mark;ZJ)V

    .line 924
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 925
    const-string v2, "markThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 926
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "mark_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private v()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 931
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 934
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 935
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 936
    return-object v0
.end method

.method private w()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 940
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 943
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 944
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 945
    return-object v0
.end method

.method private x()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 949
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 952
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 953
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 954
    return-object v0
.end method

.method private y()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 958
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 961
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 962
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 963
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0xff

    const/4 v5, 0x1

    .line 141
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 144
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/cache/DataCache;

    .line 145
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->m:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 146
    const-class v0, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    .line 147
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->o:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 148
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->p:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 149
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Landroid/support/v4/app/FragmentManager;

    .line 150
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 151
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->s:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 152
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->t:Landroid/view/inputmethod/InputMethodManager;

    .line 153
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->u:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 155
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    .line 156
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 157
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/view/View;

    .line 158
    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 159
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Landroid/view/View;

    .line 160
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Landroid/view/View;

    .line 161
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->F:Landroid/view/View;

    .line 162
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationNuxView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->G:Lcom/facebook/orca/compose/LocationNuxView;

    .line 163
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    .line 165
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    move v0, v5

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 169
    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 172
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v2

    const v3, 0x7f02002d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->f()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v2

    .line 176
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->f()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v3

    .line 181
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->L:Ljava/util/List;

    .line 182
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->M:Ljava/util/List;

    .line 184
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->L:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 185
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    new-instance v3, Lcom/facebook/orca/threadview/ThreadViewActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v2, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V

    .line 194
    new-instance v2, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-direct {v2, p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    .line 195
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setTextColor(I)V

    .line 196
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    if-eqz v0, :cond_1

    move v0, v5

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMaxLines(I)V

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setCustomTitleView(Landroid/view/View;)V

    .line 199
    const-string v0, "fetchThreadOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 212
    const-string v0, "fetchMoreMessagesOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->w:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->w:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 226
    const-string v0, "markAsReadOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 228
    const-string v0, "saveDetailsOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 229
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$4;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a0042

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ag:Lcom/facebook/orca/compose/ComposeMode;

    .line 248
    iput-boolean v5, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    .line 249
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->o()V

    .line 252
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 254
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->l()V

    .line 255
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    move v0, v7

    .line 196
    goto/16 :goto_1
.end method

.method a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1

    .prologue
    .line 840
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ag:Lcom/facebook/orca/compose/ComposeMode;

    .line 841
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->G:Lcom/facebook/orca/compose/LocationNuxView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/compose/LocationNuxView;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 842
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 843
    return-void
.end method

.method a(Lcom/facebook/orca/server/ModifyThreadParams;)V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 802
    :goto_0
    return-void

    .line 799
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 800
    const-string v1, "modifyThreadParams"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 801
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "modify_thread"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 136
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->setContentView(I)V

    .line 137
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method c(Z)V
    .locals 7

    .prologue
    .line 706
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->w:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 731
    const-wide/16 v2, 0x0

    .line 732
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    .line 733
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    const/16 v6, 0x32

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Ljava/lang/String;JJI)V

    .line 735
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f_()V

    .line 737
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 738
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 739
    const-string v2, "fetchMoreMessagesParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 740
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->w:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_more_messages"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method e()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g_()V

    .line 410
    :cond_0
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    .line 413
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->p:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_0

    .line 420
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    .line 422
    new-instance v3, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v3, v0, v2}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 424
    const-string v0, "to"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadview/AddMembersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method g()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 571
    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ab:Z

    .line 572
    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 573
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h()V

    .line 574
    return-void
.end method

.method h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 579
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 580
    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Lcom/facebook/orca/threads/ThreadSummary;

    .line 581
    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/MessagesCollection;

    .line 582
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->g(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:J

    .line 584
    invoke-direct {p0, v3}, Lcom/facebook/orca/threadview/ThreadViewActivity;->d(Z)V

    .line 587
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ab:Z

    if-eqz v0, :cond_1

    .line 589
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 590
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ab:Z

    .line 596
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->r()V

    .line 604
    :goto_1
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Ljava/lang/String;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 598
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 602
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_1
.end method

.method i()V
    .locals 0

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->onBackPressed()V

    .line 828
    return-void
.end method

.method j()Lcom/facebook/orca/compose/ComposeMode;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ag:Lcom/facebook/orca/compose/ComposeMode;

    return-object v0
.end method

.method k()V
    .locals 4

    .prologue
    .line 851
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->o()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$7;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 859
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-nez v0, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->s()V

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 360
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 361
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onDestroy()V

    .line 309
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->n()V

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 311
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->e()V

    .line 384
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 368
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 374
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 370
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->g()V

    .line 371
    const/4 v0, 0x1

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x7f08012a
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onPause()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->V:Z

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 304
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 282
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 283
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->V:Z

    .line 284
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 285
    const-string v1, "from_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 286
    if-eqz v1, :cond_0

    .line 290
    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->m:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    .line 292
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ab:Z

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h()V

    .line 296
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->u()V

    .line 297
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onStart()V

    .line 271
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->m()V

    .line 272
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onStop()V

    .line 277
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->n()V

    .line 278
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onUserInteraction()V

    .line 393
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->m:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    .line 394
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->u()V

    .line 395
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onWindowFocusChanged(Z)V

    .line 316
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->u()V

    .line 317
    return-void
.end method
