.class public Lam/sunrise/android/calendar/ui/settings/i;
.super Lam/sunrise/android/calendar/ui/c;
.source "SettingsAccountInfoFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/settings/e/b;
.implements Lam/sunrise/android/calendar/ui/settings/e/e;


# instance fields
.field private a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

.field private e:Lam/sunrise/android/calendar/ui/settings/e/a;

.field private f:Lam/sunrise/android/calendar/ui/settings/e/d;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 62
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/j;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/j;-><init>(Lam/sunrise/android/calendar/ui/settings/i;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->h:Lcom/facebook/Session$StatusCallback;

    .line 85
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/i;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/i;->f()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/i;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/i;->b(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/r;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/n;

    invoke-direct {v0, p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/n;-><init>(Lam/sunrise/android/calendar/ui/settings/i;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->g:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private b(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 277
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/i;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/e/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lam/sunrise/android/calendar/ui/settings/e/a;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->e:Lam/sunrise/android/calendar/ui/settings/e/a;

    .line 280
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->e:Lam/sunrise/android/calendar/ui/settings/e/a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/e/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    :cond_0
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/i;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/i;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/p;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/m;

    invoke-direct {v0, p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/m;-><init>(Lam/sunrise/android/calendar/ui/settings/i;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->g:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/settings/i;)Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 318
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/i;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/e/d;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/e/d;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->f:Lam/sunrise/android/calendar/ui/settings/e/d;

    .line 321
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->f:Lam/sunrise/android/calendar/ui/settings/e/d;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/e/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "facebook"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/i;->h()V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/i;->i()V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/i;->c:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/q;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->a(Landroid/support/v4/app/Fragment;)V

    .line 242
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const-string v2, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v2, "am.sunrise.android.calendar.extra.ACCOUNT_TYPE"

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v2, "am.sunrise.android.calendar.extra.CONNECT_URL"

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v0, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const/16 v0, 0x974

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/settings/i;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->e:Lam/sunrise/android/calendar/ui/settings/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->e:Lam/sunrise/android/calendar/ui/settings/e/a;

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

.method private k()Z
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->f:Lam/sunrise/android/calendar/ui/settings/e/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->f:Lam/sunrise/android/calendar/ui/settings/e/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/e/d;->getStatus()Landroid/os/AsyncTask$Status;

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
    .line 258
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/e/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const v2, 0x7f0f011d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/settings/e/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 273
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lam/sunrise/android/calendar/ui/settings/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public b(Lam/sunrise/android/calendar/ui/settings/e/c;)V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 266
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 267
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 314
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lam/sunrise/android/calendar/ui/settings/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 297
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    const v1, 0x7f0f00b1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/i;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->b()V

    .line 306
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 307
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 308
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    const/16 v0, 0x974

    if-ne v0, p1, :cond_1

    .line 197
    if-nez p3, :cond_0

    .line 226
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_TYPE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/a/b;

    .line 206
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/o;-><init>(Lam/sunrise/android/calendar/ui/settings/i;Lam/sunrise/android/calendar/ui/settings/j;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->g:Ljava/lang/Runnable;

    goto :goto_0

    .line 214
    :pswitch_1
    const-string v1, "am.sunrise.android.calendar.extra.CONNECT_ERROR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v2, Lam/sunrise/android/calendar/ui/settings/n;

    invoke-direct {v2, p0, v0, v1}, Lam/sunrise/android/calendar/ui/settings/n;-><init>(Lam/sunrise/android/calendar/ui/settings/i;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/settings/i;->g:Ljava/lang/Runnable;

    goto :goto_0

    .line 225
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/c;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/i;->h:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    .line 92
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onCreate(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_1

    .line 95
    const-string v0, "saved_pretty_account_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->c:Ljava/lang/String;

    .line 96
    const-string v0, "saved_connection_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->c:Ljava/lang/String;

    .line 103
    :goto_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.ui.settings.extra.CONNECTION_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 123
    const v0, 0x7f030063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onDestroy()V

    .line 110
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onDestroy()V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onPause()V

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onPause()V

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onResume()V

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onResume()V

    .line 173
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->g:Ljava/lang/Runnable;

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/settings/i;->g:Ljava/lang/Runnable;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 178
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    const-string v0, "saved_pretty_account_type"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "saved_connection_info"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/i;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onStop()V

    .line 189
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onStop()V

    .line 190
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 128
    const v0, 0x7f0b00f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 129
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/k;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/k;-><init>(Lam/sunrise/android/calendar/ui/settings/i;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0b00f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    const v1, 0x7f0f000f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/i;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v1, 0x7f0b00f7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/settings/i;->b:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/i;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v1, 0x7f0b00f8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 143
    new-instance v3, Lam/sunrise/android/calendar/ui/settings/l;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/ui/settings/l;-><init>(Lam/sunrise/android/calendar/ui/settings/i;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iget-boolean v3, v3, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->c:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/i;->d:Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    iget-boolean v3, v3, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->e:Z

    if-eqz v3, :cond_1

    .line 151
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    const v0, 0x7f0f0044

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 154
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    const v0, 0x7f0f0047

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 159
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
