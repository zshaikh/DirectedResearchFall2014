.class public Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;
.super Lam/sunrise/android/calendar/authenticator/ui/a/a;
.source "AuthenticatorActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/authenticator/ui/k;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:I

.field b:Z

.field private d:Landroid/accounts/AccountManager;

.field private e:Landroid/content/Intent;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/a/a;-><init>()V

    .line 416
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/authenticator/ui/g;-><init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->n:Ljava/lang/Runnable;

    .line 440
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 361
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 368
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 370
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 371
    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 372
    int-to-long v0, v1

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 374
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->j:Landroid/widget/TextView;

    const-string v1, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 375
    new-instance v1, Lam/sunrise/android/calendar/authenticator/ui/e;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/authenticator/ui/e;-><init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 390
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 374
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method static synthetic b(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->e:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->e:Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->e:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->e:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->finish()V

    .line 215
    return-void
.end method

.method static synthetic f(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->h()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 400
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 401
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 403
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->j:Landroid/widget/TextView;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 404
    new-instance v2, Lam/sunrise/android/calendar/authenticator/ui/f;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/authenticator/ui/f;-><init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 413
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 403
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private h()V
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_0

    .line 436
    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a()V

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 269
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 275
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 276
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 278
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->k:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 279
    new-instance v2, Lam/sunrise/android/calendar/authenticator/ui/a;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/authenticator/ui/a;-><init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->l:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 288
    new-instance v3, Lam/sunrise/android/calendar/authenticator/ui/b;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/authenticator/ui/b;-><init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 297
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 278
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 287
    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Profile;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Profile;->name:Ljava/lang/String;

    .line 341
    :goto_0
    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Profile;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 339
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Profile;->email:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 356
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b()V

    .line 357
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 218
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->c:Ljava/lang/String;

    const-string v1, "onAuthenticationSucceeded(%s, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-boolean v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->h:Z

    if-eqz v0, :cond_2

    .line 226
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->f:Ljava/lang/String;

    const-string v2, "am.sunrise.android.calendar"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, v4}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    const-string v2, "am.sunrise.android.calendar.calendar"

    invoke-virtual {v1, v0, v2, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    const-string v2, "fullUserName"

    invoke-virtual {v1, v0, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    const-string v2, "userId"

    invoke-virtual {v1, v0, v2, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v1

    invoke-virtual {v1, p3}, Lam/sunrise/android/calendar/SunriseApplication;->a(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p0, v5, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    .line 263
    :goto_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->f()V

    goto :goto_0

    .line 240
    :cond_2
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "am.sunrise.android.calendar"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-boolean v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->i:Z

    if-eqz v1, :cond_4

    .line 242
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, v4, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 247
    :goto_2
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    const-string v2, "am.sunrise.android.calendar.calendar"

    invoke-virtual {v1, v0, v2, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    const-string v2, "fullUserName"

    invoke-virtual {v1, v0, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    const-string v2, "userId"

    invoke-virtual {v1, v0, v2, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    const-string v1, "authAccount"

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "accountType"

    const-string v2, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "am.sunrise.android.calendar.calendar"

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    const-string v1, "authtoken"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    :cond_3
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v1

    invoke-virtual {v1, p3}, Lam/sunrise/android/calendar/SunriseApplication;->a(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0, v5, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 244
    :cond_4
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, v4}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 302
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 308
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 309
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 311
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->k:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 312
    new-instance v2, Lam/sunrise/android/calendar/authenticator/ui/c;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/authenticator/ui/c;-><init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->l:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 321
    new-instance v3, Lam/sunrise/android/calendar/authenticator/ui/d;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/authenticator/ui/d;-><init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 330
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 311
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 320
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public c()V
    .locals 0

    .prologue
    .line 346
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b()V

    .line 347
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 351
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b()V

    .line 352
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/h;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/authenticator/ui/h;-><init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->m:Ljava/lang/Runnable;

    .line 431
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a:I

    if-lez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/authenticator/ui/j;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/j;

    invoke-virtual {v0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/j;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 194
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/a/a;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 196
    :pswitch_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x4d2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x0

    .line 87
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "You already have a sunrise account"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->finish()V

    .line 136
    :goto_0
    return-void

    .line 96
    :cond_0
    if-eqz p1, :cond_1

    .line 97
    const-string v0, "saved_disable_google_play_services"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b:Z

    .line 98
    const-string v0, "saved_authenticator_fragment_id"

    invoke-virtual {p1, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a:I

    .line 101
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_2

    const-string v0, "am.sunrise.android.calendar.extra.FINISH_INTENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "am.sunrise.android.calendar.extra.FINISH_INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->e:Landroid/content/Intent;

    .line 107
    :cond_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d:Landroid/accounts/AccountManager;

    .line 109
    const-string v0, "authAccount"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->f:Ljava/lang/String;

    .line 110
    const-string v0, "authenticationTokenType"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->g:Ljava/lang/String;

    .line 111
    const-string v0, "confirmCredentials"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->h:Z

    .line 113
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->i:Z

    .line 115
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->setContentView(I)V

    .line 116
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->j:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->k:Landroid/view/View;

    .line 118
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->l:Landroid/view/View;

    .line 120
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0f00ad

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 122
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 123
    array-length v5, v2

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v2, v3

    .line 124
    invoke-interface {v1, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 125
    invoke-interface {v1, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 126
    invoke-interface {v1, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 128
    new-instance v9, Lam/sunrise/android/calendar/ui/widgets/URLSpanNoUnderline;

    invoke-direct {v9, v6}, Lam/sunrise/android/calendar/ui/widgets/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-interface {v1, v9, v7, v8, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 134
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 135
    const-string v1, "#44efefef"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 151
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/a/a;->onResume()V

    .line 153
    invoke-static {p0}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;)I

    move-result v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/g;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    iput-boolean v2, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b:Z

    .line 158
    const/16 v3, 0x4d2

    invoke-static {v0, p0, v3}, Lcom/google/android/gms/common/g;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    .line 165
    :cond_0
    :goto_0
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 165
    goto :goto_1

    :cond_3
    move v2, v1

    .line 167
    goto :goto_2
.end method

.method public onResumeFragments()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/a/a;->onResumeFragments()V

    .line 175
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->m:Ljava/lang/Runnable;

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->m:Ljava/lang/Runnable;

    .line 178
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 180
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/a/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string v0, "saved_disable_google_play_services"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string v0, "saved_username"

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "saved_finish_intent"

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->e:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    const-string v0, "saved_authenticator_fragment_id"

    iget v1, p0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    :cond_0
    return-void
.end method
