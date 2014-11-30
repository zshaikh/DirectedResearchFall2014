.class public Lcom/dolphin/browser/account/ui/ServiceActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "ServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/app/ProgressDialog;

.field private f:Lcom/dolphin/browser/account/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/dolphin/browser/account/a;)V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/dolphin/browser/account/a;->a()Lcom/dolphin/browser/account/d;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/dolphin/browser/account/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 82
    sget-object v2, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    if-ne v0, v2, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->b()V

    .line 84
    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/r;)V

    .line 104
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->f()V

    .line 105
    return-void

    .line 87
    :cond_1
    sget-object v2, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    if-ne v0, v2, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->c()V

    .line 89
    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->g()V

    goto :goto_0

    .line 92
    :cond_2
    sget-object v2, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    if-ne v0, v2, :cond_3

    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->d()V

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->e()V

    goto :goto_0

    .line 97
    :cond_3
    sget-object v2, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    if-ne v0, v2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->e()V

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->g()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/account/ui/ServiceActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->f()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/account/ui/ServiceActivity;)Lcom/dolphin/browser/account/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/account/ui/g;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/g;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/t;)V

    .line 115
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/account/ui/ServiceActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/account/ui/i;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/i;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/d/aa;->a(Lcom/dolphin/browser/q/d/ap;)V

    .line 126
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/account/ui/j;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/j;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/a/j;->a(Lcom/dolphin/browser/q/a/z;)V

    .line 137
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/account/ui/ServiceActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->m()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/account/ui/k;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/k;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/bj;)V

    .line 150
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/account/ui/ServiceActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->i()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/account/ui/l;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/l;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/account/ui/ServiceActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->j()V

    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->c()I

    move-result v0

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/account/ui/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    const-string v3, "share_type"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v3, "extra_account_login_finished"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    const-string v2, "share_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/account/ui/ServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->finish()V

    .line 180
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 183
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0003

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00fb

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->b:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020115

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->e:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 218
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->e:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 222
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->finish()V

    .line 223
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->i()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->l()V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->m()V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e035b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0249

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/account/ui/m;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/account/ui/m;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 249
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->b()V

    .line 254
    new-instance v1, Lcom/dolphin/browser/account/ui/n;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/n;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/c/b;->a(Landroid/app/Activity;Lcom/dolphin/browser/q/c/p;)V

    .line 268
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->b()V

    .line 273
    new-instance v1, Lcom/dolphin/browser/account/ui/o;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/o;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/d/aa;->a(Landroid/app/Activity;Lcom/dolphin/browser/q/d/f;)V

    .line 287
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    .line 291
    new-instance v1, Lcom/dolphin/browser/account/ui/p;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/p;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/b/ag;->a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ay;)V

    .line 304
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->b()V

    .line 309
    new-instance v1, Lcom/dolphin/browser/account/ui/h;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/h;-><init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/a/j;->a(Landroid/content/Context;Lcom/dolphin/browser/q/a/q;)V

    .line 321
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->a()Lcom/dolphin/browser/account/d;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->k()V

    goto :goto_0

    .line 207
    :cond_2
    sget-object v1, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->n()V

    goto :goto_0

    .line 209
    :cond_3
    sget-object v1, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_4

    .line 210
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->o()V

    goto :goto_0

    .line 211
    :cond_4
    sget-object v1, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->p()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->a()V

    .line 196
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 50
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    const-string v1, "share_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 52
    new-instance v1, Lcom/dolphin/browser/account/a;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/account/a;-><init>(I)V

    iput-object v1, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->a()Lcom/dolphin/browser/account/d;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/account/d;->f:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->g()V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->e:Landroid/app/ProgressDialog;

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->e:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e035d

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/account/ui/ServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->setContentView(I)V

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->a:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    invoke-virtual {v2}, Lcom/dolphin/browser/account/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0352

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/account/ui/ServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->b:Landroid/view/View;

    .line 72
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->c:Landroid/widget/TextView;

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->d:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->h()V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/ServiceActivity;->f:Lcom/dolphin/browser/account/a;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->a(Lcom/dolphin/browser/account/a;)V

    goto/16 :goto_0
.end method
