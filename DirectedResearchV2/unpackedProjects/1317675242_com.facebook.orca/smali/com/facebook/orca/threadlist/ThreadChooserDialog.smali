.class public Lcom/facebook/orca/threadlist/ThreadChooserDialog;
.super Landroid/app/Dialog;
.source "ThreadChooserDialog.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

.field private final c:Lcom/facebook/orca/cache/DataCache;

.field private final d:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private h:Lcom/facebook/orca/threads/ThreadsCollection;

.field private i:Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/String;

    const-string v1, "NEW_THREAD"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/threadlist/ThreadListAdapter;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/facebook/orca/threads/ThreadsCollection;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 55
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    .line 56
    iput-object p3, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->c:Lcom/facebook/orca/cache/DataCache;

    .line 57
    iput-object p4, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadChooserDialog;)Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->e()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 120
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 163
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->j:Ljava/lang/String;

    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->dismiss()V

    .line 169
    return-void

    .line 164
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 166
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 151
    return-void
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->d()Lcom/facebook/orca/server/FetchThreadsParams;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-string v2, "fetchThreadsParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_threads"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadsResult;

    .line 144
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 145
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b()V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadChooserDialog;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadChooserDialog;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadChooserDialog;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->i:Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;

    .line 177
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->e:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->requestWindowFeature(I)Z

    .line 73
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->setContentView(I)V

    .line 75
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->f:Landroid/widget/ListView;

    .line 79
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->CHOOSE_DIALOG:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadChooserDialog$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog$1;-><init>(Lcom/facebook/orca/threadlist/ThreadChooserDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadChooserDialog$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog$2;-><init>(Lcom/facebook/orca/threadlist/ThreadChooserDialog;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a()V

    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->i:Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->i:Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;->a(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method
