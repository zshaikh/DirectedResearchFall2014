.class public Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "DolphinSignUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/AutoCompleteTextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/dolphin/browser/DolphinService/WebService/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 282
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/av;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/av;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->i:Lcom/dolphin/browser/DolphinService/WebService/a;

    .line 438
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 205
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 207
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f:Landroid/app/ProgressDialog;

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 356
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->e()V

    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Ljava/lang/String;)I

    move-result v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 265
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 280
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/Account/b;->c(Ljava/lang/String;)I

    move-result v0

    .line 271
    if-eqz v0, :cond_1

    .line 272
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 274
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    const-string v3, "US"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->i:Lcom/dolphin/browser/DolphinService/WebService/a;

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 279
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05aa

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/aw;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/aw;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f()V

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->setResult(ILandroid/content/Intent;)V

    .line 338
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->finish()V

    .line 339
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->c()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->d()V

    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 362
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 365
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 366
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 367
    return-void
.end method

.method static synthetic h(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic i(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic j(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 239
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 240
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->g()V

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 247
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801b4

    if-ne v0, v1, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080075

    if-ne v0, v1, :cond_0

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->setResult(ILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0a0005

    const/high16 v7, 0x7f0a0000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinSignUpActivity.onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->setContentView(I)V

    .line 67
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05a6

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02026a

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020117

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020116

    invoke-static {p0, v2, v3}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0177

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 88
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0089

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 90
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 94
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 99
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020107

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->g:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020118

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->h:Landroid/graphics/drawable/Drawable;

    .line 102
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/ax;

    invoke-direct {v0, p0, v9}, Lcom/dolphin/browser/DolphinService/ui/ax;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;Lcom/dolphin/browser/DolphinService/ui/ar;)V

    .line 103
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/ay;

    invoke-direct {v0, p0, v9}, Lcom/dolphin/browser/DolphinService/ui/ay;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;Lcom/dolphin/browser/DolphinService/ui/ar;)V

    .line 108
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v5

    .line 113
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 114
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xff

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v5

    .line 115
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 117
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v2, 0x7f07000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-direct {v3, p0, v0}, Lcom/dolphin/browser/DolphinService/ui/az;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->c:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/ar;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/ar;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/as;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/as;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->d:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/at;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/at;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/au;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/au;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->e:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a()V

    .line 201
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 232
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinSignUpActivity.onDestory"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStart()V

    .line 219
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinSignUpActivity.onStart"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStop()V

    .line 225
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinSignUpActivity.onStop"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method
