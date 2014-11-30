.class public Lam/sunrise/android/calendar/ui/settings/w;
.super Lam/sunrise/android/calendar/ui/c;
.source "SettingsAddAccountFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/settings/a;
.implements Lam/sunrise/android/calendar/ui/settings/e/b;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Z

.field private b:Z

.field private c:Lam/sunrise/android/calendar/ui/firstsync/g;

.field private d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

.field private e:Lam/sunrise/android/calendar/ui/settings/ab;

.field private f:Lam/sunrise/android/calendar/ui/settings/ah;

.field private g:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private h:Lam/sunrise/android/calendar/ui/settings/a/a;

.field private i:Z

.field private j:Lcom/actionbarsherlock/view/MenuItem;

.field private k:Lam/sunrise/android/calendar/ui/settings/e/a;

.field private l:Ljava/lang/Runnable;

.field private m:Lam/sunrise/android/calendar/ui/settings/ae;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 84
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ab;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/ab;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->e:Lam/sunrise/android/calendar/ui/settings/ab;

    .line 85
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ah;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/ah;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->f:Lam/sunrise/android/calendar/ui/settings/ah;

    .line 101
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ae;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/ae;-><init>(Lam/sunrise/android/calendar/ui/settings/w;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->m:Lam/sunrise/android/calendar/ui/settings/ae;

    .line 140
    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 345
    if-nez p2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string v0, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_TYPE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 352
    :pswitch_0
    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/ad;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    goto :goto_0

    .line 363
    :pswitch_1
    const-string v1, "am.sunrise.android.calendar.extra.CONNECT_ERROR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    new-instance v2, Lam/sunrise/android/calendar/ui/settings/z;

    invoke-direct {v2, p0, v0, v1}, Lam/sunrise/android/calendar/ui/settings/z;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lam/sunrise/android/calendar/ui/settings/a/b;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->m:Lam/sunrise/android/calendar/ui/settings/ae;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/settings/ae;->a(Lam/sunrise/android/calendar/ui/settings/a/b;)V

    .line 434
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->a(Landroid/support/v4/app/Fragment;)V

    .line 435
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/w;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/w;->d()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/a/b;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/w;->b(Lam/sunrise/android/calendar/ui/settings/a/b;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/w;->b(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/aa;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/z;

    invoke-direct {v0, p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/z;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private b(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 375
    packed-switch p1, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 377
    :pswitch_0
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/a/b;->c:Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ad;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/ad;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    goto :goto_0

    .line 383
    :pswitch_1
    if-eqz p2, :cond_0

    .line 384
    const-string v0, "am.sunrise.android.calendar.extra.LINK_ERROR_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    const-string v0, "am.sunrise.android.calendar.extra.LINK_ERROR_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/z;

    sget-object v2, Lam/sunrise/android/calendar/ui/settings/a/b;->c:Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/ui/settings/w;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lam/sunrise/android/calendar/ui/settings/z;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    goto :goto_0

    .line 393
    :cond_1
    const-string v0, "am.sunrise.android.calendar.extra.MAYBE_NO_GOOGLEPLUS_ACCOUNTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/af;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/af;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lam/sunrise/android/calendar/ui/settings/a/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 450
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_TYPE"

    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v1, "am.sunrise.android.calendar.extra.CONNECT_URL"

    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v1, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    const-string v1, "am.sunrise.android.calendar.extra.ALLOW_MAILTO"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    const/16 v1, 0x974

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/settings/w;->startActivityForResult(Landroid/content/Intent;I)V

    .line 459
    return-void
.end method

.method private b(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 498
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/w;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/e/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lam/sunrise/android/calendar/ui/settings/e/a;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->k:Lam/sunrise/android/calendar/ui/settings/e/a;

    .line 501
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->k:Lam/sunrise/android/calendar/ui/settings/e/a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/e/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 503
    :cond_0
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/w;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->b:Z

    return v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/settings/w;)Lam/sunrise/android/calendar/ui/settings/a/a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->h:Lam/sunrise/android/calendar/ui/settings/a/a;

    return-object v0
.end method

.method private c(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 406
    packed-switch p1, :pswitch_data_0

    .line 430
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 408
    :pswitch_1
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/a/b;->a:Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/ad;-><init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 3

    .prologue
    .line 335
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->b:Z

    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;)V

    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/w;->startActivity(Landroid/content/Intent;)V

    .line 340
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 342
    :cond_0
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/settings/w;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/w;->g()V

    return-void
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/settings/w;)Lam/sunrise/android/calendar/ui/settings/ah;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->f:Lam/sunrise/android/calendar/ui/settings/ah;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    const-string v1, "am.sunrise.android.calendar.ui.settings.action.LINK_GOOGLE_PLUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const/16 v1, 0x975

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/settings/w;->startActivityForResult(Landroid/content/Intent;I)V

    .line 441
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    const-string v1, "am.sunrise.android.calendar.ui.settings.action.LINK_ICLOUD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const/16 v1, 0x976

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/settings/w;->startActivityForResult(Landroid/content/Intent;I)V

    .line 447
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 462
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->b:Z

    if-nez v0, :cond_1

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->i:Z

    .line 464
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->j:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->j:Lcom/actionbarsherlock/view/MenuItem;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/settings/w;->i:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 467
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->g()V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->c:Lam/sunrise/android/calendar/ui/firstsync/g;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/firstsync/g;->g()V

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->k:Lam/sunrise/android/calendar/ui/settings/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->k:Lam/sunrise/android/calendar/ui/settings/e/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/e/a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/settings/e/c;)V
    .locals 5

    .prologue
    .line 475
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/e/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v0

    .line 476
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const v2, 0x7f0f008f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/w;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lam/sunrise/android/calendar/ui/settings/w;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/e/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 494
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/w;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lam/sunrise/android/calendar/ui/settings/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/w;->f:Lam/sunrise/android/calendar/ui/settings/ah;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 272
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 301
    sparse-switch p1, :sswitch_data_0

    .line 324
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onActivityResult(IILandroid/content/Intent;)V

    move v1, v2

    .line 326
    :goto_0
    return v1

    .line 303
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lam/sunrise/android/calendar/ui/settings/w;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 307
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lam/sunrise/android/calendar/ui/settings/w;->b(ILandroid/content/Intent;)V

    goto :goto_0

    .line 311
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lam/sunrise/android/calendar/ui/settings/w;->c(ILandroid/content/Intent;)V

    goto :goto_0

    .line 315
    :sswitch_3
    if-nez p2, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->a:Z

    .line 316
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/w;->e:Lam/sunrise/android/calendar/ui/settings/ab;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    goto :goto_0

    :cond_0
    move v0, v2

    .line 315
    goto :goto_1

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x4d2 -> :sswitch_3
        0x974 -> :sswitch_0
        0x975 -> :sswitch_1
        0x976 -> :sswitch_2
    .end sparse-switch
.end method

.method public b(Lam/sunrise/android/calendar/ui/settings/e/c;)V
    .locals 4

    .prologue
    .line 482
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/e/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v0

    .line 483
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 484
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/w;->g()V

    .line 486
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/w;->f:Lam/sunrise/android/calendar/ui/settings/ah;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 488
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 184
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/w;->e:Lam/sunrise/android/calendar/ui/settings/ab;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 186
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0146

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 187
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/settings/w;->a(IILandroid/content/Intent;)Z

    .line 332
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onAttach(Landroid/app/Activity;)V

    .line 258
    instance-of v0, p1, Lam/sunrise/android/calendar/ui/firstsync/g;

    if-eqz v0, :cond_0

    .line 259
    check-cast p1, Lam/sunrise/android/calendar/ui/firstsync/g;

    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/w;->c:Lam/sunrise/android/calendar/ui/firstsync/g;

    .line 261
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/w;->m:Lam/sunrise/android/calendar/ui/settings/ae;

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    .line 147
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onCreate(Landroid/os/Bundle;)V

    .line 149
    if-eqz p1, :cond_2

    .line 150
    const-string v0, "saved_is_first_run"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->b:Z

    .line 151
    const-string v0, "saved_disable_back"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->i:Z

    .line 152
    const-string v0, "saved_disable_google_play_services"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->a:Z

    .line 158
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->b:Z

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/w;->setHasOptionsMenu(Z)V

    .line 161
    :cond_1
    return-void

    .line 154
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.FIRST_RUN"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->b:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 200
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->b:Z

    if-nez v0, :cond_0

    .line 201
    const/high16 v0, 0x7f110000

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 202
    const v0, 0x7f0b0174

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->j:Lcom/actionbarsherlock/view/MenuItem;

    .line 203
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->j:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 204
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/x;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/x;-><init>(Lam/sunrise/android/calendar/ui/settings/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->j:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->j:Lcom/actionbarsherlock/view/MenuItem;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/settings/w;->i:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 216
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 171
    const v0, 0x7f030064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onDestroy()V

    .line 166
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onDestroy()V

    .line 167
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->c:Lam/sunrise/android/calendar/ui/firstsync/g;

    .line 266
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onDetach()V

    .line 267
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->h:Lam/sunrise/android/calendar/ui/settings/a/a;

    invoke-virtual {v0, p3}, Lam/sunrise/android/calendar/ui/settings/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/b;

    .line 277
    if-eqz v0, :cond_0

    .line 278
    sget-object v1, Lam/sunrise/android/calendar/ui/settings/y;->a:[I

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 292
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/settings/w;->b(Lam/sunrise/android/calendar/ui/settings/a/b;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/settings/w;->a(Lam/sunrise/android/calendar/ui/settings/a/b;)V

    goto :goto_0

    .line 284
    :pswitch_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/w;->e()V

    goto :goto_0

    .line 288
    :pswitch_2
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/w;->f()V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onPause()V

    .line 246
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onPause()V

    .line 247
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 220
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onResume()V

    .line 221
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onResume()V

    .line 222
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    .line 223
    iput-object v4, p0, Lam/sunrise/android/calendar/ui/settings/w;->l:Ljava/lang/Runnable;

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;)I

    move-result v0

    .line 229
    if-eqz v0, :cond_1

    .line 230
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/common/g;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    iput-boolean v3, p0, Lam/sunrise/android/calendar/ui/settings/w;->a:Z

    .line 233
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const/16 v2, 0x4d2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/g;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    .line 240
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/w;->e:Lam/sunrise/android/calendar/ui/settings/ab;

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 241
    return-void

    .line 236
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->a:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    const-string v0, "saved_is_first_run"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/settings/w;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v0, "saved_disable_back"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/settings/w;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    const-string v0, "saved_disable_google_play_services"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/settings/w;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->d:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onStop()V

    .line 252
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onStop()V

    .line 253
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 176
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->g:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 177
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/settings/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->h:Lam/sunrise/android/calendar/ui/settings/a/a;

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->g:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/w;->h:Lam/sunrise/android/calendar/ui/settings/a/a;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 179
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/w;->g:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    return-void
.end method
