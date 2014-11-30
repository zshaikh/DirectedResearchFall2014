.class public Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadViewMessageFragmentTab.java"


# instance fields
.field private Q:Lcom/facebook/orca/prefs/UiCounters;

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/view/View;

.field private T:Landroid/widget/ListView;

.field private U:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private V:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

.field private W:Landroid/widget/FrameLayout;

.field private X:Lcom/facebook/orca/compose/ComposeView;

.field private Y:Landroid/view/View;

.field private Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

.field private a:Lcom/facebook/orca/app/OrcaApplication;

.field private aa:Ljava/lang/String;

.field private ab:Lcom/facebook/orca/compose/ComposeMode;

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/facebook/orca/cache/PendingSendMessage;

.field private af:Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

.field private ag:Z

.field private ah:Landroid/graphics/drawable/Drawable;

.field private ai:Landroid/graphics/drawable/Drawable;

.field private b:Lcom/facebook/orca/threadview/MessageListAdapter;

.field private c:Landroid/view/inputmethod/InputMethodManager;

.field private d:Lcom/facebook/orca/cache/SendMessageManager;

.field private e:Landroid/text/ClipboardManager;

.field private f:Landroid/os/Handler;

.field private g:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 71
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/compose/ComposeMode;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Z

    .line 464
    return-void
.end method

.method private a(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    if-nez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 398
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Z

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 232
    :goto_0
    if-eqz v1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Landroid/view/View;

    if-ne v1, v2, :cond_3

    .line 234
    const/4 v0, 0x1

    .line 240
    :cond_0
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g_()V

    .line 243
    :cond_1
    return-void

    .line 231
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 237
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 287
    return-void
.end method

.method private a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;)V
    .locals 5

    .prologue
    .line 503
    if-nez p1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-static {p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->z()V

    goto :goto_0

    .line 509
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 510
    invoke-static {p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->b(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItemId(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 511
    if-lez v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->c(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 509
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->s()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;III)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->t()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->v()V

    return-void
.end method

.method private d(I)V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->j()Lcom/facebook/orca/compose/ComposeMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d()V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 350
    instance-of v1, v0, Lcom/facebook/orca/threads/Message;

    if-eqz v1, :cond_2

    .line 351
    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 352
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    const-class v3, Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v2, "thread_id"

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 359
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->w()V

    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 222
    const-string v0, "composeMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/compose/ComposeMode;

    .line 223
    const-string v0, "canReplyTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Z

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-eq v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g_()V

    .line 227
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->x()V

    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    if-eqz v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView;->g()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/cache/PendingSendMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    .line 420
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/PendingSendMessage;->a(Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;)V

    .line 421
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Ljava/util/List;)V

    .line 422
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->z()V

    .line 423
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageListAdapter;->notifyDataSetChanged()V

    .line 424
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView;->t()V

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Z

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Z

    .line 430
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    return-void
.end method

.method private v()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/PendingSendMessage;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/threads/Message;)V

    .line 445
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Ljava/util/List;)V

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageListAdapter;->notifyDataSetChanged()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    .line 449
    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h()V

    .line 458
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Ljava/util/List;)V

    .line 459
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageListAdapter;->notifyDataSetChanged()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    .line 462
    :cond_0
    return-void
.end method

.method private y()Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageListAdapter;->a()Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->LOADING:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    if-ne v0, v1, :cond_3

    .line 472
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v0

    .line 474
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/MessageListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 476
    instance-of v2, v2, Lcom/facebook/orca/threads/Message;

    if-eqz v2, :cond_1

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/MessageListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    move-object v0, v3

    .line 498
    :goto_1
    return-object v0

    .line 479
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 480
    goto :goto_0

    .line 486
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 487
    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;

    invoke-direct {v2, v3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;)V

    .line 488
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;J)J

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v2, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;I)I

    move-object v0, v2

    .line 490
    goto :goto_1

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    .line 494
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;

    invoke-direct {v0, v3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;)V

    .line 495
    invoke-static {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;Z)Z

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 498
    goto :goto_1
.end method

.method private z()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 521
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 522
    if-lez v0, :cond_0

    .line 523
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 524
    sub-int v2, v0, v3

    if-ge v1, v2, :cond_0

    .line 525
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 528
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 91
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->a()V

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/PendingSendMessage;->b(Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;)V

    .line 208
    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

    .line 209
    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    .line 211
    :cond_0
    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 212
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->u()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 99
    const-class v0, Lcom/facebook/orca/app/OrcaApplication;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaApplication;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a:Lcom/facebook/orca/app/OrcaApplication;

    .line 100
    const-class v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    .line 101
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 102
    const-class v0, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/SendMessageManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d:Lcom/facebook/orca/cache/SendMessageManager;

    .line 103
    const-class v0, Landroid/text/ClipboardManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->e:Landroid/text/ClipboardManager;

    .line 104
    const-class v0, Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f:Landroid/os/Handler;

    .line 105
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g:Landroid/support/v4/app/FragmentManager;

    .line 106
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Q:Lcom/facebook/orca/prefs/UiCounters;

    .line 108
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->R:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->S:Landroid/view/View;

    .line 110
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    .line 111
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->U:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 112
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    .line 113
    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->W:Landroid/widget/FrameLayout;

    .line 115
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0800f8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/ComposeView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView;->o()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->U:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->U:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setThreadId(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->W:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setAnimationContainer(Landroid/widget/FrameLayout;)V

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$4;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$OnSendClickedListener;)V

    .line 170
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/SendMessageManager;->a(Ljava/lang/String;)Lcom/facebook/orca/cache/PendingSendMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/PendingSendMessage;->a(Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Ljava/util/List;)V

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Z

    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->e(Landroid/os/Bundle;)V

    .line 200
    :cond_1
    return-void
.end method

.method a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;J)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 299
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Z

    .line 300
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d()V

    .line 306
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->y()Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;

    move-result-object v0

    .line 307
    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Ljava/util/List;)V

    .line 309
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 310
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;)V

    .line 314
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->U:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 315
    iget-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Z

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Ljava/util/List;)V

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->notifyDataSetChanged()V

    .line 319
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;)V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Z

    .line 322
    return-void

    .line 302
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->e()V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;)V

    goto :goto_1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 384
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 385
    instance-of v1, v0, Lcom/facebook/orca/threads/Message;

    if-eqz v1, :cond_0

    .line 386
    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 387
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->e:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->b(Landroid/os/Bundle;)V

    .line 217
    const-string v0, "composeMode"

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 218
    const-string v0, "canReplyTo"

    iget-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    return-void
.end method

.method d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Z

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 268
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/compose/ComposeMode;

    .line 269
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 270
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->S:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    goto :goto_0
.end method

.method e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 278
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->S:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    .line 281
    return-void
.end method

.method f()Lcom/facebook/orca/compose/ComposeView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Lcom/facebook/orca/compose/ComposeView;

    return-object v0
.end method

.method f_()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->LOADING:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;)V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageListAdapter;->notifyDataSetChanged()V

    .line 248
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;)V

    .line 340
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageListAdapter;->notifyDataSetChanged()V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Z

    .line 342
    return-void
.end method

.method g_()V
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Z

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 256
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/compose/ComposeMode;

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    .line 259
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->z()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 369
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/widget/ListView;

    if-ne p2, v0, :cond_0

    .line 370
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 371
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/orca/threadview/MessageListAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 372
    instance-of v0, v0, Lcom/facebook/orca/threads/Message;

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "Message"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 374
    const-string v0, "Copy"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 377
    :cond_0
    return-void
.end method
