.class public Lcom/dolphin/browser/DolphinService/ui/LoginActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/app/ProgressDialog;

.field private i:J

.field private j:Lcom/dolphin/browser/q/c/b;

.field private k:Lcom/dolphin/browser/q/c/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 60
    const-string v0, "LoginActivity"

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c:Z

    .line 476
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/bo;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/bo;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->k:Lcom/dolphin/browser/q/c/r;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;J)J
    .locals 0

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Lcom/dolphin/browser/q/c/b;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->b()V

    .line 144
    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    .line 145
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 201
    const-string v0, "DBS Login"

    const-string v1, "facebook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 617
    const-string v0, "LoginActivity"

    const-string v1, "sendSonarLoginCommand"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v0, Lcom/dolphin/browser/r/b;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/r/b;-><init>(Landroid/content/Context;)V

    .line 620
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/r/b;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 621
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 209
    const-string v0, "DBS Login"

    const-string v1, "facebook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(I)V

    .line 377
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/bl;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/DolphinService/ui/bl;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 149
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/bg;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/bg;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bi;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/bi;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 216
    const-string v0, "DBS Login"

    const-string v1, "facebook"

    const-string v2, "succeed"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 424
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bm;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/bm;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->e()V

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 236
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->p()V

    .line 237
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->r()V

    .line 238
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->q()V

    .line 239
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c()V

    .line 240
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->i()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->i:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 245
    const-string v1, "DBS Login"

    const-string v2, "facebook"

    const-string v3, "tosuccess"

    invoke-static {v0, v3}, Lcom/dolphin/browser/DolphinService/ui/aq;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/dolphin/browser/DolphinService/c;->a()Lcom/dolphin/browser/DolphinService/c;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Lcom/dolphin/browser/DolphinService/Account/l;)V

    .line 255
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/l;)V

    .line 256
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(I)V

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->e()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 307
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 309
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->i()V

    .line 363
    :goto_0
    return-void

    .line 316
    :cond_1
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 318
    aget-object v3, v1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_2
    array-length v0, v1

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0357

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 321
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/a;

    invoke-direct {v0, p0, v2}, Lcom/dolphin/browser/DolphinService/ui/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 323
    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/bj;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/bj;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    .line 339
    new-instance v3, Lcom/dolphin/browser/DolphinService/ui/bk;

    invoke-direct {v3, p0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/bk;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;[Landroid/accounts/Account;Lcom/dolphin/browser/DolphinService/b;)V

    .line 361
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/DolphinService/ui/a;->a(Lcom/dolphin/browser/DolphinService/ui/e;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 367
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(I)V

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    const-string v1, "extra_login_type"

    const/16 v2, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->l()V

    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 438
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->p()V

    .line 439
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->r()V

    .line 440
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->q()V

    .line 441
    return-void
.end method

.method static synthetic j(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->n()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(I)V

    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->m()V

    .line 454
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->o()V

    goto :goto_0

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->l()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->m()V

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 457
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(I)V

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->i:J

    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    const/16 v1, 0x1e

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/bn;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/bn;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->k:Lcom/dolphin/browser/q/c/r;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/dolphin/browser/q/c/b;->a(Landroid/app/Activity;ILcom/dolphin/browser/q/c/o;Lcom/dolphin/browser/q/c/r;)V

    .line 474
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->k:Lcom/dolphin/browser/q/c/r;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/r;)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bd;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/bd;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/c/b;->a(Landroid/app/Activity;Lcom/dolphin/browser/q/c/p;)V

    .line 522
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 525
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 526
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0247

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0245

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0244

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/bf;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/bf;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0246

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/be;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/be;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 551
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 554
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->j()V

    .line 555
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->j()V

    .line 556
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->k()V

    .line 558
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->d()V

    .line 560
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->d()V

    .line 562
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->d()V

    .line 566
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c:Z

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "LoginActivity"

    const-string v1, "start sonar login"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Landroid/content/Context;)V

    .line 573
    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 625
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_login_finished"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 626
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 628
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->p()V

    .line 634
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/f;->a()V

    .line 636
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->finish()V

    .line 637
    return-void

    .line 631
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 632
    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    .prologue
    const v3, 0x7f02010b

    .line 647
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 649
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 650
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 652
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 653
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 655
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 656
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020109

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 661
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02010f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 665
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 669
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02010a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 671
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 672
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ba

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 675
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 641
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 642
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 643
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 577
    sparse-switch p1, :sswitch_data_0

    .line 609
    :goto_0
    return-void

    .line 579
    :sswitch_0
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 584
    :sswitch_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 585
    const-string v0, "DBS Login"

    const-string v1, "google"

    const-string v2, "succeed"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->p()V

    .line 588
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->r()V

    .line 589
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->q()V

    goto :goto_0

    .line 594
    :sswitch_2
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e06e9

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 603
    :sswitch_3
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->j:Lcom/dolphin/browser/q/c/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/q/c/b;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 577
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1e -> :sswitch_3
    .end sparse-switch

    .line 579
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 286
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801bf

    if-ne v0, v1, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->g()V

    .line 288
    const-string v0, "DBS Login"

    const-string v1, "dolphin Account"

    const-string v2, "trigger"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801bb

    if-ne v0, v1, :cond_2

    .line 290
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h()V

    .line 291
    const-string v0, "DBS Login"

    const-string v1, "google"

    const-string v2, "trigger"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801bd

    if-ne v0, v1, :cond_3

    .line 293
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->k()V

    .line 294
    const-string v0, "DBS Login"

    const-string v1, "facebook"

    const-string v2, "trigger"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801c1

    if-ne v0, v1, :cond_0

    .line 296
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e017f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/content/Context;Ljava/lang/String;Z[B)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "LoginActivty.onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 95
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h:Landroid/app/ProgressDialog;

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0129

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_voice_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c:Z

    .line 102
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 104
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/k/j;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/k/j;

    .line 105
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->r()V

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a()V

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801bb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->d:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801bd

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->e:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->f:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->g:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.dolphin.browser.DolphinService.FINISH_LOGIN_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bc;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/bc;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    iput-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b:Landroid/content/BroadcastReceiver;

    .line 134
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->s()V

    .line 136
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const-string v0, "DBS Login"

    const-string v1, "entry"

    const-string v2, "sum"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 275
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "LoginActivty.onDestory"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStart()V

    .line 261
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->f()V

    .line 262
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "LoginActivty.onStart"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStop()V

    .line 269
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "LoginActivty.onStop"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method
