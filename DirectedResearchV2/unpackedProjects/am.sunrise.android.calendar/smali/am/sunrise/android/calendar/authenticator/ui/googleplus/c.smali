.class public abstract Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;
.super Lam/sunrise/android/calendar/authenticator/ui/j;
.source "GooglePlusFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/authenticator/ui/m;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/common/api/h;
.implements Lcom/google/android/gms/common/api/i;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lam/sunrise/android/calendar/authenticator/ui/k;

.field private c:Lcom/google/android/gms/common/api/e;

.field private d:Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;

.field private e:Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://www.googleapis.com/auth/plus.login"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "https://www.google.com/m8/feeds"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "https://www.googleapis.com/auth/calendar"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;-><init>()V

    .line 93
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/google/android/gms/plus/d;->g:Lcom/google/android/gms/plus/a;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/a;->a(Lcom/google/android/gms/common/api/e;)V

    .line 265
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->b()V

    .line 267
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 314
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d()V

    .line 316
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->c()V

    .line 318
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->e()V

    .line 325
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    const-string v1, "am.sunrise.android.calendar.extra.MAYBE_NO_GOOGLEPLUS_ACCOUNTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/i;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    goto :goto_0
.end method

.method private static final f()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "oauth2:server:client_id:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    const-string v0, "178916097949.apps.googleusercontent.com"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v0, ":api_scope:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const/4 v0, 0x1

    .line 359
    sget-object v4, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 360
    if-eqz v0, :cond_0

    move v0, v1

    .line 365
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_0
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 367
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d()V

    .line 305
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->c()V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setResult(I)V

    .line 309
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d()V

    .line 273
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0, p1, p2}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/authenticator/ui/n;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d()V

    .line 282
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 288
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->a:Lam/sunrise/android/calendar/authenticator/ui/n;

    if-ne p1, v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->f:I

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 297
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->d()V

    goto :goto_0
.end method

.method a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 335
    const/16 v0, 0x2329

    invoke-virtual {p0, p1, v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->startActivityForResult(Landroid/content/Intent;I)V

    .line 336
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 244
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a()V

    .line 246
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    move-result-object v3

    sget-object v1, Lcom/google/android/gms/plus/d;->g:Lcom/google/android/gms/plus/a;

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v1, v2}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/api/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->f()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;-><init>(Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;Lam/sunrise/android/calendar/authenticator/ui/m;Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d:Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;

    .line 248
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d:Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;

    sget-object v1, Lcom/google/android/gms/plus/d;->g:Lcom/google/android/gms/plus/a;

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v1, v2}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/api/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;-><init>(Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->e:Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;

    .line 251
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->e:Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v1, 0x2329

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/a;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "GooglePlusFragment"

    const-string v2, "onConnectionFailed: Internal Error -- %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->b()I

    move-result v0

    .line 233
    invoke-static {v0}, Lcom/google/android/gms/common/g;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const/16 v2, 0x232a

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/g;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "GooglePlusFragment"

    const-string v1, "onConnectionFailed: No idea how to recover..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 346
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d()V

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    const-string v1, "am.sunrise.android.calendar.extra.LINK_ERROR_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/i;->setResult(ILandroid/content/Intent;)V

    .line 351
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 352
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 172
    const/16 v2, 0x2329

    if-eq p1, v2, :cond_0

    const/16 v2, 0x232a

    if-ne p1, v2, :cond_5

    .line 174
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 175
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->a()V

    .line 195
    :cond_1
    :goto_0
    return v1

    .line 181
    :cond_2
    if-eqz p3, :cond_3

    const-string v2, "Error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const-string v2, "Error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UserCancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 186
    :cond_3
    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a()V

    goto :goto_0

    .line 189
    :cond_4
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->e()V

    goto :goto_0

    .line 195
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/j;->a(IILandroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method public abstract b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->b()V

    .line 260
    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 339
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d()V

    .line 341
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setResult(I)V

    .line 342
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 343
    return-void
.end method

.method c(I)V
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v1, 0x232b

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/g;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 332
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "GooglePlusFragment"

    const-string v1, "onActivityResult(requestCode=%d, resultCode=%d) -- NOT HANDLED"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/j;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/j;->onAttach(Landroid/app/Activity;)V

    .line 148
    instance-of v0, p1, Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lam/sunrise/android/calendar/authenticator/ui/k;

    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    .line 151
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->e:I

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a(I)V

    .line 214
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a()V

    .line 216
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->a()V

    .line 218
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->c:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d()V

    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d:Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d:Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->cancel(Z)Z

    .line 126
    iput-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d:Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;

    .line 128
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->e:Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->e:Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->cancel(Z)Z

    .line 130
    iput-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->e:Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;

    .line 132
    :cond_1
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onDestroy()V

    .line 133
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onDetach()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onResume()V

    .line 163
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->d:Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->e:Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a(Landroid/os/Bundle;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onStart()V

    .line 138
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->b:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->a()V

    .line 143
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/gms/common/api/g;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/g;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/plus/d;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/g;

    move-result-object v1

    .line 109
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 110
    new-instance v2, Lcom/google/android/gms/common/api/k;

    sget-object v3, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/k;)Lcom/google/android/gms/common/api/g;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/g;->b()Lcom/google/android/gms/common/api/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c:Lcom/google/android/gms/common/api/e;

    .line 115
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->d:I

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_1
    return-void
.end method
