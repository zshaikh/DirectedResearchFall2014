.class public Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;
.super Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;
.source "DolphinConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/AutoCompleteTextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/app/ProgressDialog;

.field private f:Ljava/lang/Runnable;

.field private g:J

.field private h:Lcom/dolphin/browser/DolphinService/WebService/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;-><init>()V

    .line 278
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/ao;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/ao;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->h:Lcom/dolphin/browser/DolphinService/WebService/a;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e:Landroid/app/ProgressDialog;

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 361
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 366
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->g()V

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Ljava/lang/String;)I

    move-result v1

    .line 254
    if-eqz v1, :cond_0

    .line 255
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 257
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 274
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->c(Ljava/lang/String;)I

    move-result v2

    .line 263
    if-eqz v2, :cond_1

    .line 264
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 266
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->h:Lcom/dolphin/browser/DolphinService/WebService/a;

    invoke-virtual {v2, v0, v1, v3}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 271
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05a9

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a(I)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->g:J

    .line 273
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->i()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->h()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->f()V

    .line 331
    const-string v0, "DBS Login"

    const-string v1, "dolphin Account"

    const-string v2, "succeed"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->h()V

    .line 334
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e()V

    .line 335
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->j()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->setResult(ILandroid/content/Intent;)V

    .line 341
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->finish()V

    .line 342
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->d()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 347
    const-string v1, "DBS Login"

    const-string v2, "dolphin Account"

    const-string v3, "tosuccess"

    invoke-static {v0, v3}, Lcom/dolphin/browser/DolphinService/ui/aq;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 372
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/ap;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/ap;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->f:Ljava/lang/Runnable;

    .line 387
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 399
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 400
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 401
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->finish()V

    .line 216
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 217
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e()V

    .line 416
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 405
    const-string v0, "DBS Login"

    const-string v1, "dolphin Account"

    const-string v2, "back"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->onBackPressed()V

    .line 407
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->k()V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 224
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801b3

    if-ne v0, v1, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->c()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801b2

    if-ne v0, v1, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a()V

    goto :goto_0

    .line 228
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801b4

    if-ne v0, v1, :cond_3

    .line 229
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b()V

    goto :goto_0

    .line 230
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080075

    if-ne v0, v1, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->setResult(ILandroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v4, 0x7f0a0062

    const v8, 0x7f0a0005

    const/high16 v7, 0x7f0a0000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinConnectActivty.onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 63
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->setContentView(I)V

    .line 66
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0179

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02026a

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020117

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020116

    invoke-static {p0, v2, v3}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0177

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0089

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 96
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 100
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a(Landroid/widget/TextView;)V

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a(Landroid/widget/TextView;)V

    .line 108
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v5

    .line 109
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 110
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xff

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v5

    .line 111
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 113
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v2, 0x7f07000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-direct {v3, p0, v0}, Lcom/dolphin/browser/DolphinService/ui/az;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->c:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/ak;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/ak;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/al;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/al;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 153
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->d:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/am;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/am;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/an;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/an;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 189
    const-string v0, "DBS Login"

    const-string v1, "dolphin Account"

    const-string v2, "entry"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->onDestroy()V

    .line 209
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinConnectActivty.onDestory"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->onStart()V

    .line 196
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinConnectActivty.onStart"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->onStop()V

    .line 202
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinConnectActivty.onStop"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method
