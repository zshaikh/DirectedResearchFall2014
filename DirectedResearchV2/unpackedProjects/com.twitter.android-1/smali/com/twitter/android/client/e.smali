.class public final Lcom/twitter/android/client/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/util/e;
.implements Lcom/twitter/android/widget/c;


# static fields
.field private static final c:Z

.field private static d:Lcom/twitter/android/client/e;


# instance fields
.field a:Z

.field public b:F

.field private e:Lcom/twitter/android/util/m;

.field private final f:Landroid/util/SparseArray;

.field private final g:Landroid/util/SparseArray;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/HashMap;

.field private final j:Ljava/util/HashMap;

.field private final k:Lcom/twitter/android/service/e;

.field private final l:F

.field private m:Lcom/twitter/android/api/z;

.field private final n:Ljava/util/HashMap;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/HashMap;

.field private q:Z

.field private r:Landroid/content/Context;

.field private s:Landroid/app/NotificationManager;

.field private final t:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AC"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/client/e;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/e;->p:Ljava/util/HashMap;

    new-instance v0, Lcom/twitter/android/client/c;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/c;-><init>(Lcom/twitter/android/client/e;)V

    iput-object v0, p0, Lcom/twitter/android/client/e;->t:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/twitter/android/client/e;->s:Landroid/app/NotificationManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/e;->i:Ljava/util/HashMap;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    new-instance v2, Lcom/twitter/android/util/w;

    invoke-direct {v2, p1, v4, v0}, Lcom/twitter/android/util/w;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/twitter/android/util/w;

    invoke-direct {v2, p1, v3, v0}, Lcom/twitter/android/util/w;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/twitter/android/util/m;

    invoke-direct {v1, p1, p0, v0}, Lcom/twitter/android/util/m;-><init>(Landroid/content/Context;Lcom/twitter/android/util/e;I)V

    iput-object v1, p0, Lcom/twitter/android/client/e;->e:Lcom/twitter/android/util/m;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/client/e;->g:Landroid/util/SparseArray;

    new-instance v1, Lcom/twitter/android/util/b;

    invoke-direct {v1, v4}, Lcom/twitter/android/util/b;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/twitter/android/util/b;

    invoke-direct {v1, v3}, Lcom/twitter/android/util/b;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    new-instance v0, Lcom/twitter/android/client/b;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/b;-><init>(Lcom/twitter/android/client/e;)V

    new-instance v1, Lcom/twitter/android/service/e;

    invoke-direct {v1, v0}, Lcom/twitter/android/service/e;-><init>(Lcom/twitter/android/service/a;)V

    iput-object v1, p0, Lcom/twitter/android/client/e;->k:Lcom/twitter/android/service/e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/twitter/android/client/e;->l:F

    const-string v0, "14"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/client/e;->b:F

    return-void
.end method

.method public static a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4

    const v1, 0x7f0b0044

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p1, :cond_0

    const v0, 0x7f0b00ca

    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p1, :cond_1

    const v0, 0x7f0b0046

    :goto_1
    invoke-virtual {v3, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00b3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0b00c9

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(ILandroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200fa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const v3, 0x7f0b0010

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v2
.end method

.method private a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->k:Lcom/twitter/android/service/e;

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/e;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/e;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "soid"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ibinder"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auth"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->h()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/accounts/Account;)Lcom/twitter/android/client/Session;
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v1, "account_user_info"

    invoke-virtual {v4, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/twitter/android/client/e;->v()Lcom/twitter/android/client/Session;

    move-result-object v1

    if-eqz v6, :cond_0

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v4, p1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/Session;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/Session;->a(Z)V

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v4, p1}, Lcom/twitter/android/platform/d;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/c;

    move-result-object v3

    const-string v0, "account_settings"

    invoke-virtual {v4, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-static {v6}, Lcom/twitter/android/api/y;->c(Ljava/lang/String;)Lcom/twitter/android/api/c;

    move-result-object v4

    invoke-static {v0}, Lcom/twitter/android/api/o;->a(Ljava/lang/String;)Lcom/twitter/android/api/o;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;Lcom/twitter/android/api/o;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/client/e;->c:Z

    if-eqz v2, :cond_0

    const-string v2, "AC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_0

    move v1, v0

    :cond_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_7

    :cond_1
    iget-object v3, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    cmp-long v5, p3, v5

    if-nez v5, :cond_2

    :cond_4
    monitor-exit v3

    :goto_1
    return-object v0

    :cond_5
    move v2, v1

    goto :goto_0

    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_7

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p2

    :cond_7
    if-nez p2, :cond_8

    invoke-direct {p0}, Lcom/twitter/android/client/e;->v()Lcom/twitter/android/client/Session;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    invoke-direct {p0, p2}, Lcom/twitter/android/client/e;->a(Landroid/accounts/Account;)Lcom/twitter/android/client/Session;

    move-result-object v0

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/client/e;
    .locals 3

    const-class v1, Lcom/twitter/android/client/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/client/e;->d:Lcom/twitter/android/client/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/client/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/client/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/client/e;->d:Lcom/twitter/android/client/e;

    :cond_0
    sget-object v0, Lcom/twitter/android/client/e;->d:Lcom/twitter/android/client/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/twitter/android/client/Session;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1

    const-string v0, "auth"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/network/c;

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/c;

    iget-object v2, v4, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;Lcom/twitter/android/api/o;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/client/e;->d(Lcom/twitter/android/client/Session;)Ljava/lang/String;

    invoke-static {v4}, Lcom/twitter/android/api/y;->a(Lcom/twitter/android/api/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->h()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/network/c;Ljava/lang/String;)Landroid/accounts/Account;

    invoke-virtual {p1, v6}, Lcom/twitter/android/client/Session;->a(Z)V

    :goto_0
    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    move v4, v6

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/network/c;Ljava/lang/String;ZZ)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/d;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "screen_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v5, v1, v2}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;)Ljava/lang/String;

    :goto_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/client/Session$LoginStatus;)V

    goto :goto_1
.end method

.method private a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->b:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/client/Session$LoginStatus;)V

    const-string v0, "LOGIN"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pass"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;Lcom/twitter/android/api/o;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->c:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/client/Session$LoginStatus;)V

    invoke-virtual {p1, p4}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/c;)V

    invoke-virtual {p1, p2}, Lcom/twitter/android/client/Session;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/network/c;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/o;)V

    :cond_0
    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    iget-object v7, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/twitter/android/client/WidgetControl;

    iget-object v2, p0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/util/w;

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;-><init>(Landroid/content/Context;Lcom/twitter/android/util/w;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->b()V

    :cond_2
    const-string v0, "sound_effects"

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/client/e;->a:Z

    const-string v0, "font_size"

    const-string v1, "14"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/client/e;->b:F

    iget-object v0, p0, Lcom/twitter/android/client/e;->t:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MARK_TWEETS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "sid"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "soid"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account_name"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "i_type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lcom/twitter/android/client/Session;)Ljava/lang/String;
    .locals 1

    const-string v0, "GET_SETTINGS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/twitter/android/util/q;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/twitter/android/client/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "AC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "rid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/e;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-object v0
.end method

.method private j(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/e;->k:Lcom/twitter/android/service/e;

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/e;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private k(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private v()Lcom/twitter/android/client/Session;
    .locals 7

    iget-object v1, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/twitter/android/client/Session;

    invoke-direct {v0}, Lcom/twitter/android/client/Session;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private w()I
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_service"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Z)I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->m:Lcom/twitter/android/api/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/e;->m:Lcom/twitter/android/api/z;

    iget v0, v0, Lcom/twitter/android/api/z;->a:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/e;->m:Lcom/twitter/android/api/z;

    iget v0, v0, Lcom/twitter/android/api/z;->a:I

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public final a()J
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(IJ)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/w;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/w;->a(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p4, :cond_0

    iget v0, p0, Lcom/twitter/android/client/e;->l:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "_normal."

    const-string v1, "_bigger."

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    move-object v5, p4

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/w;

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/util/w;->a(JJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/provider/ax;)Landroid/graphics/Bitmap;
    .locals 4

    iget v0, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v1, p1, Lcom/twitter/android/provider/ax;->n:J

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJ[B)Lcom/twitter/android/api/TweetEntities;
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/twitter/android/util/b;->a(Ljava/lang/Long;[B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/twitter/android/client/Session;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public final a(DDLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "REVERSE_GEO"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "long"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "accuracy"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 4

    const-string v0, "GET_BLOCKING"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJ)Ljava/lang/String;
    .locals 4

    const-string v0, "ADD_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJI)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_LIST_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJJ)Ljava/lang/String;
    .locals 3

    const-string v0, "IS_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJJI)Ljava/lang/String;
    .locals 2

    const-string v0, "USER_TIMELINE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JI)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_FAVS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JII)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJI)Ljava/lang/String;
    .locals 3

    const-string v0, "HOME"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJJJI)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_LIST_TWEETS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "NEW_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "EDIT_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_mode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "FOLLOW"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_follow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;J)Ljava/lang/String;
    .locals 4

    const-string v0, "USER_TIMELINE"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;JJ)Ljava/lang/String;
    .locals 4

    const-string v0, "RELATED_RESULTS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;JJIDDLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "FETCH_STORIES"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "long"

    invoke-virtual {v0, v1, p9, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lang"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "RETWEET"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;JDDLjava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0b012f

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/e;->a(ILandroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x22

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/twitter/android/client/e;->s:Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "TWEET"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "long"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-direct {p0}, Lcom/twitter/android/client/e;->w()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    const-string v0, "SEARCH_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "count"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "CREATE_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GET_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/twitter/android/client/e;->v()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-string v1, "SEARCH_TWEETS"

    invoke-direct {p0, v1}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "q_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "since_id"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "count"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "max_id"

    invoke-virtual {v1, v2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "show_user"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "geo"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "place"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "page"

    move/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "lang"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "locale"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "q_type"

    move/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "USERNAME_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    const-string v2, "lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "UPDATE_PROFILE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "place"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SIGNUP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "screen_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "email"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pass"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q_name"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZI)Ljava/lang/String;
    .locals 3

    const-string v0, "GET_USER_RECOMMENDATIONS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "connections"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZIIJ)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GET_USER_RECOMMENDATIONS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "connections"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "limit"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([J)Ljava/lang/String;
    .locals 2

    const-string v0, "DELETE_DMS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/String;[Ljava/lang/String;[JIJ)Ljava/lang/String;
    .locals 4

    const-string v0, "LOOKUP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/twitter/android/util/j;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/w;

    invoke-virtual {v0, p2}, Lcom/twitter/android/util/w;->a(Lcom/twitter/android/util/j;)V

    return-void
.end method

.method public final a(ILjava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v1

    const-string v2, "LOG"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/e;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "log_ev"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "impression_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "trend_id"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(JLcom/twitter/android/service/ScribeEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method public final a(JLcom/twitter/android/service/ScribeEvent;I)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    new-instance v2, Lcom/twitter/android/service/ScribeLog;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method final a(Landroid/content/Intent;)V
    .locals 16

    const-string v1, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v14, v1, [Lcom/twitter/android/client/f;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v1, "com.twitter.android._data.home"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v3, v4}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;JZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "unread"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v2, "new"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    array-length v15, v14

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v15, :cond_0

    aget-object v1, v14, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    :cond_0
    const-string v1, "com.twitter.android._data.activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-string v2, "new"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    array-length v15, v14

    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v15, :cond_1

    aget-object v1, v14, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_1

    :cond_1
    const-string v1, "com.twitter.android._data.mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v3, v4}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;JZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const-string v2, "unread"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v2, "new"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    array-length v15, v14

    const/4 v1, 0x0

    move v12, v1

    :goto_2
    if-ge v12, v15, :cond_2

    aget-object v1, v14, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_2

    :cond_2
    const-string v1, "com.twitter.android._data.dms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-string v2, "unread"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "new"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    array-length v9, v14

    const/4 v1, 0x0

    move v8, v1

    :goto_3
    if-ge v8, v9, :cond_3

    aget-object v1, v14, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;II)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_3

    :cond_3
    const-string v1, "com.twitter.android._data.discover"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "unread"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    array-length v9, v14

    const/4 v1, 0x0

    move v8, v1

    :goto_4
    if-ge v8, v9, :cond_4

    aget-object v1, v14, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IZ)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_5

    const-string v1, "show_notif"

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.twitter.android.auth.login"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    array-length v9, v1

    const-string v1, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "unread_count_types"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v2, :cond_7

    :cond_5
    :goto_6
    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/twitter/android/client/e;->k(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_12

    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    move v8, v1

    :goto_7
    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_13

    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    move v7, v1

    :goto_8
    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_14

    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    move v6, v1

    :goto_9
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v8, :cond_8

    const/4 v1, 0x2

    :cond_8
    if-eqz v7, :cond_21

    const-string v4, "com.twitter.android._data.mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_15

    const-string v5, "unread"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    move-object v5, v4

    :goto_a
    if-eqz v6, :cond_20

    const-string v2, "com.twitter.android._data.dms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v4, "unread"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    move-object v4, v2

    move v2, v1

    :goto_b
    if-eqz v2, :cond_5

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v1, 0x1

    if-le v9, v1, :cond_17

    move-object v9, v3

    :goto_c
    const/4 v1, 0x1

    if-le v2, v1, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_18

    const v1, 0x7f0b0133

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/MessagesActivity;

    invoke-direct {v1, v10, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "owner_id"

    const-string v5, "owner_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "account_name"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "ref_event"

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->T:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    :goto_d
    if-eqz v7, :cond_9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_19

    const v4, 0x7f0b013a

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    const v4, 0x7f0b0132

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1a

    const v4, 0x7f0b013a

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    const v4, 0x7f0b0131

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.twitter.android.home."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x7f0b0130

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v11, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v1

    move-object v8, v2

    :goto_10
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/av;->a:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vibrate"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "ringtone"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "light"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1e

    const/4 v1, 0x1

    :cond_b
    :goto_11
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1f

    const/4 v3, 0x1

    :cond_d
    :goto_12
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f0200fa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v4, v5, v8, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v5, 0x0

    iput v5, v4, Landroid/app/Notification;->number:I

    if-eqz v1, :cond_f

    iget v1, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/app/Notification;->defaults:I

    :cond_f
    if-eqz v3, :cond_10

    const v1, 0x7f0a000e

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v4, Landroid/app/Notification;->ledARGB:I

    const/16 v1, 0x1f4

    iput v1, v4, Landroid/app/Notification;->ledOnMS:I

    const/16 v1, 0x7d0

    iput v1, v4, Landroid/app/Notification;->ledOffMS:I

    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v4, Landroid/app/Notification;->flags:I

    :cond_10
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    const/4 v1, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v10, v1, v7, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v10, v9, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v1, "phone"

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x5

    iput v1, v4, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_11
    const-string v1, "notification"

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v2, "notif_id"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_6

    :cond_12
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_7

    :cond_13
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_8

    :cond_14
    const/4 v1, 0x0

    move v6, v1

    goto/16 :goto_9

    :cond_15
    add-int/lit8 v1, v1, 0x1

    move-object v5, v4

    goto/16 :goto_a

    :cond_16
    add-int/lit8 v1, v1, 0x1

    move-object v4, v2

    move v2, v1

    goto/16 :goto_b

    :cond_17
    const v1, 0x7f0b0010

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto/16 :goto_c

    :cond_18
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, v10, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "account_name"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "ref_event"

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->T:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_d

    :cond_19
    const-string v4, "tab"

    const-string v5, "connect"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "home_item"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_e

    :cond_1a
    const-string v4, "tab"

    const-string v5, "home"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "home_item"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_f

    :cond_1b
    if-eqz v5, :cond_1c

    const-string v1, "sender"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b011b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v1, 0x1

    const-string v6, "sample"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-virtual {v11, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v10, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "status_id"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v4, "owner_id"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lcom/twitter/android/provider/aa;->a(JJ)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.twitter.android.home.mentions."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "account_name"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "ref_event"

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->T:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    move-object v7, v1

    move-object v8, v2

    goto/16 :goto_10

    :cond_1c
    if-eqz v4, :cond_5

    const-string v1, "owner_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v1, "sender_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v1, "sender"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b011c

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    const-string v14, "sample"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v13

    invoke-virtual {v11, v2, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v12, 0x0

    cmp-long v4, v5, v12

    if-lez v4, :cond_1d

    const-wide/16 v12, 0x0

    cmp-long v4, v7, v12

    if-lez v4, :cond_1d

    new-instance v4, Landroid/content/Intent;

    const-class v12, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v4, v10, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v12, "owner_id"

    invoke-virtual {v4, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "user_id"

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "user_name"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.twitter.android.home.messages."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x14000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ref_event"

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->T:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v7, v1

    move-object v8, v2

    goto/16 :goto_10

    :cond_1d
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/MessagesActivity;

    invoke-direct {v1, v10, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "owner_id"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "account_name"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_12

    :cond_20
    move-object v4, v2

    move v2, v1

    goto/16 :goto_b

    :cond_21
    move-object v5, v4

    goto/16 :goto_a
.end method

.method public final a(Lcom/twitter/android/api/c;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/c;)V

    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;)V
    .locals 4

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/e;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/provider/g;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/twitter/android/client/f;

    iget-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;JJLcom/twitter/android/api/TweetEntities;)V
    .locals 2

    const-string v0, "SAVE_DRAFT"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;[J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const-string v1, "MARK_TWEETS"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/e;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "status_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Lcom/twitter/android/client/f;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/network/c;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/network/c;)V

    return-void
.end method

.method public final a(Lcom/twitter/android/service/ScribeLog;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method public final a(Lcom/twitter/android/util/k;Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/f;

    invoke-virtual {v0, p2}, Lcom/twitter/android/client/f;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/e;->p:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/e;->k(Ljava/lang/String;)I

    move-result v1

    or-int/lit8 v1, v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;JZ)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iget-object v6, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/twitter/android/client/WidgetControl;

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/util/w;

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;-><init>(Landroid/content/Context;Lcom/twitter/android/util/w;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->b()V

    monitor-exit v6

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p4}, Lcom/twitter/android/client/WidgetControl;->b(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    const v4, 0x7f0b0051

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v7

    aput-object p2, v5, v8

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    const v4, 0x7f0b0052

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twitter/android/api/c;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v0, v0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    aput-object v0, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/twitter/android/provider/ax;)Lcom/twitter/android/api/TweetEntities;
    .locals 4

    iget v0, p1, Lcom/twitter/android/provider/ax;->B:I

    iget-wide v1, p1, Lcom/twitter/android/provider/ax;->s:J

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->x:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(IJ[B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/twitter/android/client/Session;
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public final b(IJJ)Ljava/lang/String;
    .locals 4

    const-string v0, "REMOVE_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(IJJI)Ljava/lang/String;
    .locals 4

    const-string v0, "ACTIVITY"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 4

    const-string v0, "GET_FRIENDSHIP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JII)Ljava/lang/String;
    .locals 4

    const-string v0, "GET_LISTS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJI)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "GET_MESSAGES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "UNFOLLOW"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/twitter/android/client/Session;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->c:Lcom/twitter/android/client/Session$LoginStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->b:Lcom/twitter/android/client/Session$LoginStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->d:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/client/Session$LoginStatus;)V

    const-string v0, "LOGOUT"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;
    .locals 2

    const-string v0, "DESTROY_STATUS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "CREATE_FAV"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "NEW_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)Ljava/lang/String;
    .locals 3

    const-string v0, "UPDATE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "geo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b([J)Ljava/lang/String;
    .locals 4

    const-string v0, "FOLLOW_ALL"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILcom/twitter/android/util/j;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/w;

    invoke-virtual {v0, p2}, Lcom/twitter/android/util/w;->b(Lcom/twitter/android/util/j;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x1

    iget-boolean v0, p0, Lcom/twitter/android/client/e;->q:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v7, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v9, :cond_2

    aget-object v0, v8, v6

    const-string v1, "account_user_info"

    invoke-virtual {v7, v0, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/twitter/android/api/y;->c(Ljava/lang/String;)Lcom/twitter/android/api/c;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v11, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    iget-wide v1, v10, Lcom/twitter/android/api/c;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/client/WidgetControl;

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/util/w;

    iget-object v3, v10, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iget-wide v4, v10, Lcom/twitter/android/api/c;->a:J

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;-><init>(Landroid/content/Context;Lcom/twitter/android/util/w;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    iget-wide v2, v10, Lcom/twitter/android/api/c;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->b()V

    :cond_0
    monitor-exit v11

    :cond_1
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iput-boolean v12, p0, Lcom/twitter/android/client/e;->q:Z

    :cond_3
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method final b(Landroid/content/Intent;)V
    .locals 19

    const-string v3, "sid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/client/Session;

    if-nez v4, :cond_1

    const-string v3, "AC"

    const-string v4, "Expired session. Ignoring response"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    const-string v3, "rid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "action_code"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v3, "resp_code"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v3, "reason_phrase"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lcom/twitter/android/client/f;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    sget-boolean v3, Lcom/twitter/android/client/e;->c:Z

    if-eqz v3, :cond_2

    const-string v3, "AC"

    const-string v5, "Handling unknown action."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string v3, "rate_limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/f;

    invoke-virtual {v4, v3}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/f;)V

    const/16 v3, 0x191

    if-ne v6, v3, :cond_0

    sparse-switch v15, :sswitch_data_0

    const-string v3, "VERIFY"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v11

    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v8, "com.twitter.android.auth.login"

    invoke-virtual {v3, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_5

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->o:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    invoke-static {v3, v14, v0, v1}, Lcom/twitter/android/provider/g;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/client/e;->o:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/twitter/android/client/e;->i(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/client/WidgetControl;

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    invoke-virtual {v3, v8}, Lcom/twitter/android/client/WidgetControl;->a(Z)V

    :cond_4
    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->a()V

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->i:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v14

    move v9, v3

    :goto_3
    if-ge v9, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/util/w;

    invoke-virtual {v3}, Lcom/twitter/android/util/w;->a()V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->e:Lcom/twitter/android/util/m;

    invoke-virtual {v3}, Lcom/twitter/android/util/m;->a()V

    const-string v3, "alarm"

    invoke-virtual {v13, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    new-instance v9, Landroid/content/Intent;

    const-class v14, Lcom/twitter/android/client/AppService;

    invoke-direct {v9, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "com.twitter.android.cleanup"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v14, v9, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance v9, Landroid/content/Intent;

    const-class v14, Lcom/twitter/android/client/AppService;

    invoke-direct {v9, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "com.twitter.android.poll.alarm"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v14, v9, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/client/e;->t:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_4
    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_5
    if-ge v9, v13, :cond_8

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Z)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v13

    goto :goto_4

    :catchall_1
    move-exception v3

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_8
    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/twitter/android/client/a;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/twitter/android/client/a;-><init>(Lcom/twitter/android/client/e;Landroid/content/Context;Ljava/lang/String;J)V

    const-wide/32 v8, 0x493e0

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :pswitch_2
    const-string v3, "status_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_1

    :pswitch_4
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "new_tweet"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_6
    if-ge v11, v12, :cond_2

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_6

    :pswitch_5
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->k(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :pswitch_6
    const-string v3, "new_tweet"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v3, "unread_mention"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v3, "since_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "max_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_8
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    aget-object v3, v16, v14

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_8

    :pswitch_7
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->l(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :pswitch_8
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->m(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :pswitch_9
    const-string v3, "new_tweet"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_b
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_b

    :pswitch_a
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_c
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_c

    :pswitch_b
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_d
    if-ge v11, v12, :cond_2

    aget-object v3, v16, v11

    const-string v8, "count"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJ)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_d

    :pswitch_c
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_e
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_e

    :pswitch_d
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_f
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->h(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_f

    :pswitch_e
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "list_type"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_10
    if-ge v11, v12, :cond_2

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_10

    :pswitch_f
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "user_type"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "count"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v12, v3

    :goto_11
    if-ge v12, v13, :cond_2

    aget-object v3, v16, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_11

    :pswitch_10
    const-string v3, "count"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_12
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_12

    :pswitch_11
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, -0x2

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/twitter/android/client/e;->a(JJI)Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :pswitch_12
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :pswitch_13
    const-string v3, "new_dm"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "unread_dm"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_15
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;II)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_15

    :pswitch_14
    const-string v3, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/api/c;

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_16
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/c;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_16

    :pswitch_15
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->g(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :pswitch_16
    const-string v3, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "short_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_17
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_18
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_18

    :pswitch_18
    const-string v3, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/api/c;

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_19
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/c;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_19

    :pswitch_19
    const/16 v3, 0xc8

    if-ne v6, v3, :cond_a

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9, v10}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;JZ)V

    :goto_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->s:Landroid/app/NotificationManager;

    const/16 v8, 0x3e9

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->j(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/twitter/android/DraftsActivity;

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "account_name"

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "return_to_drafts"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    const v9, 0x7f0b00d8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v8, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/twitter/android/client/e;->a(ILandroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    iget v8, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v3, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/client/e;->s:Landroid/app/NotificationManager;

    const/16 v9, 0x3ea

    invoke-virtual {v8, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1a

    :pswitch_1a
    const/16 v3, 0xc8

    if-ne v6, v3, :cond_b

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v8

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9, v10}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;JZ)V

    :cond_b
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :pswitch_1b
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const/16 v3, 0xc8

    if-ne v6, v3, :cond_c

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/twitter/android/client/e;->g(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3, v8, v9}, Lcom/twitter/android/client/WidgetControl;->a(J)V

    :cond_c
    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_1d
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_1d

    :pswitch_1c
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const/16 v3, 0xc8

    if-eq v6, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const v10, 0x7f0b005a

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_d
    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_1e
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->f(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_1e

    :pswitch_1d
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_1f
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->g(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_1f

    :pswitch_1e
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const/16 v3, 0xc8

    if-eq v6, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const v10, 0x7f0b005c

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_e
    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_20
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_20

    :pswitch_1f
    const/16 v3, 0xc8

    if-eq v6, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const v5, 0x7f0b007f

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_20
    const/16 v3, 0xc8

    if-eq v6, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const v5, 0x7f0b0080

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_21
    const/16 v3, 0xc8

    if-eq v6, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const v5, 0x7f0b006e

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_22
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_21
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->i(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_21

    :pswitch_23
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "user_type"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "count"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v12, v3

    :goto_22
    if-ge v12, v13, :cond_2

    aget-object v3, v16, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/client/f;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_22

    :pswitch_24
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "user_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "user_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_23
    if-ge v13, v14, :cond_2

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_23

    :pswitch_25
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "user_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "user_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_24
    if-ge v13, v14, :cond_2

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_24

    :pswitch_26
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "user_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "user_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_25
    if-ge v13, v14, :cond_2

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/f;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_25

    :pswitch_27
    const-string v3, "q_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_26
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_26

    :pswitch_28
    const-string v3, "search_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "page"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_27
    if-ge v11, v12, :cond_2

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/f;->e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_27

    :pswitch_29
    const-string v3, "search_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "count"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_28
    if-ge v11, v12, :cond_2

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/f;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_28

    :pswitch_2a
    const-string v3, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/api/c;

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_29
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/c;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_29

    :pswitch_2b
    const-string v3, "lat"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v3, "long"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v3, "place"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_2a
    if-ge v13, v14, :cond_2

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_2a

    :pswitch_2c
    const/16 v3, 0x191

    if-ne v6, v3, :cond_2

    const-string v3, "AC"

    const-string v5, "Invalid credentials. The auth token has expired."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v7, v8, v3}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    const-string v3, "com.twitter.android.auth.login"

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "com.twitter.android.oauth.token"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_1

    :pswitch_2d
    const/4 v8, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Landroid/content/Intent;I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    :goto_2b
    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_2c
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_2c

    :catch_0
    move-exception v3

    const/16 v6, 0x190

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_2b

    :pswitch_2e
    const-string v3, "new_tweet"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v3, "unread_tweet"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v3, "since_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "max_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const/16 v3, 0xc8

    if-ne v6, v3, :cond_f

    const-wide/16 v17, 0x0

    cmp-long v3, v10, v17

    if-nez v3, :cond_f

    if-lez v12, :cond_f

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v17

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2, v14}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;JZ)V

    :cond_f
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_2d
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    aget-object v3, v16, v14

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_2d

    :pswitch_2f
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->i(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :pswitch_30
    const-string v3, "count"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_2f
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_2f

    :pswitch_31
    const-string v3, "count"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto/16 :goto_1

    :pswitch_32
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "user_type"

    const/16 v10, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "count"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v12, v3

    :goto_30
    if-ge v12, v13, :cond_2

    aget-object v3, v16, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_30

    :pswitch_33
    const-string v3, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "list_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v12, v3

    :goto_31
    if-ge v12, v13, :cond_2

    aget-object v3, v16, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJ)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_31

    :pswitch_34
    const-string v3, "count"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_32
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_32

    :pswitch_35
    const-string v3, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "pass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "q_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Landroid/content/Intent;I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_33
    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_34
    if-ge v13, v14, :cond_2

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_34

    :catch_1
    move-exception v3

    const/16 v6, 0x190

    goto :goto_33

    :pswitch_36
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, -0x2

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/twitter/android/client/e;->a(JJI)Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :pswitch_37
    const-string v3, "settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/z;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/client/e;->m:Lcom/twitter/android/api/z;

    goto/16 :goto_1

    :pswitch_38
    const/16 v3, 0xc8

    if-ne v6, v3, :cond_2

    const-string v3, "settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/o;

    invoke-virtual {v4, v3}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/o;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v7, v8, v3}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/api/c;Lcom/twitter/android/api/o;)V

    goto/16 :goto_1

    :pswitch_39
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->f(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :pswitch_3a
    const-string v3, "settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/g;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    iget-boolean v7, v3, Lcom/twitter/android/api/g;->a:Z

    iget-wide v8, v3, Lcom/twitter/android/api/g;->b:J

    invoke-static {v5, v7, v8, v9}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;ZJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v3}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_3b
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :pswitch_3c
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :pswitch_3d
    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_39
    if-ge v10, v11, :cond_2

    aget-object v3, v16, v10

    const-string v8, "unread_stories"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IZ)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_39

    :pswitch_3e
    const-string v3, "i_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "since_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "max_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v3, "count"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_3a
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    aget-object v3, v16, v14

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_3a

    :pswitch_3f
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "new_tweet"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_3b
    if-ge v11, v12, :cond_2

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/f;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_3b

    :pswitch_40
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_3c
    if-ge v3, v8, :cond_2

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/f;->h(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :pswitch_41
    const-string v3, "stories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_3d
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_3d

    :pswitch_42
    const-string v3, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/api/v;

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_3e
    if-ge v9, v10, :cond_2

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/f;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/v;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_3e

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3e
        :pswitch_3d
        :pswitch_3f
        :pswitch_32
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x15 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public final b(Lcom/twitter/android/client/f;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/e;->p:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/e;->k(Ljava/lang/String;)I

    move-result v1

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/client/e;->a:Z

    return v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/e;->a(Z)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c()Lcom/twitter/android/api/c;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/c;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Ljava/lang/String;
    .locals 2

    const-string v0, "DESTROY_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(JJI)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "GET_SENT_MESSAGES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "since_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "max_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "CREATE_BLOCK"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DESTROY_FAV"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "q"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/client/e;->g(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "status_type"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(I)V

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;)V
    .locals 3

    const-string v0, "SEND_ALL_DRAFTS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-direct {p0}, Lcom/twitter/android/client/e;->w()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;J)V
    .locals 2

    const-string v0, "DEL_DRAFT"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final d()Lcom/twitter/android/network/c;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->h()Lcom/twitter/android/network/c;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Ljava/lang/String;
    .locals 4

    const-string v0, "DELETE_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "DESTROY_BLOCK"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SAVE_SEARCH"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/client/e;->g(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "status_type"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/WidgetControl;->b(I)V

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, "GET_SLUG"

    invoke-direct {p0, v1}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "lang"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const-string v0, "owner_id"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    invoke-direct {p0, v1}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "REPORT_SPAM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DELETE_SEARCH"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/twitter/android/client/Session;
    .locals 7

    iget-object v1, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/twitter/android/client/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.twitter.android.auth.login"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/provider/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    if-eqz v3, :cond_0

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v5, v2, v3}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;)V

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/client/e;->v()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;)V

    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f(J)Ljava/lang/String;
    .locals 2

    const-string v0, "ACTIVITY_SUMMARY"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "EMAIL_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    const-string v2, "lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(JLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v1

    const-string v2, "DISMISS"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/e;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "status_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "impression_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final g(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/e;->e:Lcom/twitter/android/util/m;

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/android/util/m;->a(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized g(J)Lcom/twitter/android/client/WidgetControl;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 3

    iget-object v1, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/android/client/e;->n:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->d()Z

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/e;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Lcom/twitter/android/client/Session$LoginStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v1}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twitter/android/provider/q;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final j()J
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "ACTION_MARK_STORIES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->j()Lcom/twitter/android/api/o;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-wide v0, v3, Lcom/twitter/android/api/o;->b:J

    :cond_0
    const-string v3, "GET_TRENDS"

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "GET_SAVED_SEARCHES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    const-string v1, "CONFIG"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->d(Lcom/twitter/android/client/Session;)Ljava/lang/String;

    return-void
.end method

.method public final o()V
    .locals 1

    const-string v0, "DECIDER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->e(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->b(I)V

    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/client/e;->b(I)V

    return-void
.end method

.method public final r()V
    .locals 5

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_MARK_STORIES"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "soid"

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final s()V
    .locals 5

    invoke-virtual {p0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MARK_MESSAGES"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "sid"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account_name"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "soid"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twitter/android/client/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/f;->b(Lcom/twitter/android/client/Session;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/e;->r:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/DialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ff"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0b00ff

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f0200fa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    const v4, 0x7f0b0100

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/twitter/android/client/e;->s:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final declared-synchronized u()Ljava/util/Collection;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/e;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
