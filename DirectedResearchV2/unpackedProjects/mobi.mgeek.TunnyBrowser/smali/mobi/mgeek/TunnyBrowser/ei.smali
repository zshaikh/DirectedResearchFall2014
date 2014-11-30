.class public Lmobi/mgeek/TunnyBrowser/ei;
.super Ljava/lang/Object;
.source "ExitManager.java"


# static fields
.field private static a:Lmobi/mgeek/TunnyBrowser/ei;

.field private static b:Ljava/lang/Thread;


# instance fields
.field private c:Landroid/app/AlertDialog;

.field private d:Z

.field private e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

.field private f:Lcom/dolphin/browser/extensions/ThemeManager;

.field private g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->d:Z

    .line 68
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 69
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->f:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 70
    return-void
.end method

.method static synthetic a(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lmobi/mgeek/TunnyBrowser/ei;->b:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    return-object v0
.end method

.method public static a()Lmobi/mgeek/TunnyBrowser/ei;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ei;->a:Lmobi/mgeek/TunnyBrowser/ei;

    return-object v0
.end method

.method public static a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lmobi/mgeek/TunnyBrowser/ei;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ei;->a:Lmobi/mgeek/TunnyBrowser/ei;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/mgeek/TunnyBrowser/ei;->a:Lmobi/mgeek/TunnyBrowser/ei;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eq v0, p0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ei;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ei;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ei;->a:Lmobi/mgeek/TunnyBrowser/ei;

    .line 62
    :cond_1
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ei;->a:Lmobi/mgeek/TunnyBrowser/ei;

    iput-object p0, v0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 63
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ei;->a:Lmobi/mgeek/TunnyBrowser/ei;

    return-object v0
.end method

.method private a(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 262
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Landroid/widget/Button;)V

    .line 266
    :cond_0
    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Landroid/widget/Button;)V

    .line 270
    :cond_1
    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_2

    .line 272
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Landroid/widget/Button;)V

    .line 274
    :cond_2
    return-void
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 304
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e019f

    new-instance v2, Lmobi/mgeek/TunnyBrowser/es;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/es;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0228

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 321
    return-void
.end method

.method private a(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/widget/Button;->setSingleLine()V

    .line 280
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 281
    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/ei;->c(Z)V

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_0
    if-eqz p1, :cond_2

    .line 83
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->d:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ei;->d()V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0229

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 87
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/ei;->d:Z

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ei;->d()V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 4

    .prologue
    .line 333
    const-string v0, "ExitManager"

    const-string v1, "doExitApp start"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lcom/dolphin/browser/update/i;->a(Landroid/content/Context;)V

    .line 335
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lcom/dolphin/browser/message/g;->c(Landroid/content/Context;)V

    .line 337
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->G()V

    .line 338
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/sync/f;->b(Z)V

    .line 341
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->k()V

    .line 342
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->k()V

    .line 343
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->k()V

    .line 345
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/o;->a()Lmobi/mgeek/util/CrashReporter/o;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/o;->c()V

    .line 346
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ei;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fs;->a()Lmobi/mgeek/TunnyBrowser/fs;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/fs;->b()V

    .line 358
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const-class v3, Lmobi/mgeek/TunnyBrowser/ForegroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->stopService(Landroid/content/Intent;)Z

    .line 359
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->finish()V

    .line 360
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ei;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 361
    const-string v0, "ExitManager"

    const-string v1, "sExitingThread exist"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :try_start_1
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ei;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ek;

    invoke-direct {v1, p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/ek;-><init>(Lmobi/mgeek/TunnyBrowser/ei;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ei;->b:Ljava/lang/Thread;

    .line 417
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ei;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 418
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Z)V

    .line 75
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/ei;->d:Z

    .line 98
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    .line 103
    return-void
.end method

.method public c(Z)V
    .locals 12

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const v11, 0x7f0a0042

    const/16 v10, 0xa

    const/4 v5, 0x0

    .line 107
    iget-object v7, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 108
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 110
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    if-nez v0, :cond_7

    .line 111
    invoke-virtual {v7}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801e1

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 114
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801e2

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 115
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0801e3

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 116
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f0801e4

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 118
    if-eqz p1, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 120
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->E()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->N()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v()Z

    move-result v4

    if-nez v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_2

    .line 127
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v10, v4, v5, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 130
    :cond_2
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_3

    .line 131
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v10, v4, v5, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 134
    :cond_3
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_4

    .line 135
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v10, v4, v5, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 138
    :cond_4
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_5

    .line 139
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v10, v4, v5, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 142
    :cond_5
    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->f:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 148
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->f:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 149
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->f:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 150
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->f:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 152
    new-instance v4, Lmobi/mgeek/TunnyBrowser/ej;

    invoke-direct {v4, p0}, Lmobi/mgeek/TunnyBrowser/ej;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    new-instance v0, Lmobi/mgeek/TunnyBrowser/el;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/el;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    new-instance v0, Lmobi/mgeek/TunnyBrowser/em;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/em;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    new-instance v0, Lmobi/mgeek/TunnyBrowser/en;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/en;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e022a

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0228

    new-instance v2, Lmobi/mgeek/TunnyBrowser/eq;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/eq;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0302

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ep;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/ep;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lmobi/mgeek/TunnyBrowser/eo;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/eo;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    .line 255
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Landroid/app/AlertDialog;)V

    .line 256
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 257
    const-string v0, "ExitManager"

    const-string v1, "show exit dialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_6
    return-void

    .line 239
    :cond_7
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 242
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 244
    if-eqz p1, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 248
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f0801e2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 249
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/ei;->c:Landroid/app/AlertDialog;

    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f0801e3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 250
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->E()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 251
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 252
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->N()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_9
    move v6, v5

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->g:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->d(Landroid/content/ContentResolver;)I

    move-result v0

    .line 286
    if-lez v0, :cond_0

    .line 287
    new-instance v0, Lmobi/mgeek/TunnyBrowser/er;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/er;-><init>(Lmobi/mgeek/TunnyBrowser/ei;)V

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D()Z

    move-result v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ei;->e:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->E()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/ei;->a(ZZ)V

    goto :goto_0
.end method
