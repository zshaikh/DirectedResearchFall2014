.class public Lcom/google/android/a/a/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/a/a/i;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Landroid/net/ConnectivityManager;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/google/android/a/a/o;

.field private n:Lcom/google/android/a/a/f;

.field private o:Z

.field private p:Z

.field private q:Lcom/google/android/a/a/a;

.field private r:Lcom/google/android/a/a/e;

.field private s:Ljava/util/Map;

.field private t:Ljava/util/Map;

.field private u:Landroid/os/Handler;

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/a/a/i;

    invoke-direct {v0}, Lcom/google/android/a/a/i;-><init>()V

    sput-object v0, Lcom/google/android/a/a/i;->a:Lcom/google/android/a/a/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/a/a/i;->b:Z

    iput-boolean v0, p0, Lcom/google/android/a/a/i;->c:Z

    iput-boolean v0, p0, Lcom/google/android/a/a/i;->d:Z

    iput-boolean v0, p0, Lcom/google/android/a/a/i;->e:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/a/a/i;->f:I

    const-string v0, "GoogleAnalytics"

    iput-object v0, p0, Lcom/google/android/a/a/i;->j:Ljava/lang/String;

    const-string v0, "1.4.2"

    iput-object v0, p0, Lcom/google/android/a/a/i;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/i;->s:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/i;->t:Ljava/util/Map;

    new-instance v0, Lcom/google/android/a/a/j;

    invoke-direct {v0, p0}, Lcom/google/android/a/a/j;-><init>(Lcom/google/android/a/a/i;)V

    iput-object v0, p0, Lcom/google/android/a/a/i;->v:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/i;->u:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/google/android/a/a/i;
    .locals 1

    sget-object v0, Lcom/google/android/a/a/i;->a:Lcom/google/android/a/a/i;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Lcom/google/android/a/a/h;

    iget-object v1, p0, Lcom/google/android/a/a/i;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/a/a/i;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v1, p0, Lcom/google/android/a/a/i;->r:Lcom/google/android/a/a/e;

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/h;->a(Lcom/google/android/a/a/e;)V

    iget-object v1, p0, Lcom/google/android/a/a/i;->q:Lcom/google/android/a/a/a;

    invoke-virtual {v1}, Lcom/google/android/a/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/h;->b(I)V

    iget-boolean v1, p0, Lcom/google/android/a/a/i;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/h;->b(Z)V

    new-instance v1, Lcom/google/android/a/a/e;

    invoke-direct {v1}, Lcom/google/android/a/a/e;-><init>()V

    iput-object v1, p0, Lcom/google/android/a/a/i;->r:Lcom/google/android/a/a/e;

    iget-object v1, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    invoke-interface {v1, v0}, Lcom/google/android/a/a/o;->a(Lcom/google/android/a/a/h;)V

    invoke-direct {p0}, Lcom/google/android/a/a/i;->i()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget v0, p0, Lcom/google/android/a/a/i;->l:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/a/i;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/a/a/i;->v:Ljava/lang/Runnable;

    iget v2, p0, Lcom/google/android/a/a/i;->l:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/a/a/i;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Scheduled next dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/a/i;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/i;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/a/a/i;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/a/i;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/a/i;->o:Z

    invoke-direct {p0}, Lcom/google/android/a/a/i;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/a/a/i;->l:I

    iput p1, p0, Lcom/google/android/a/a/i;->l:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/a/a/i;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/a/i;->h()V

    invoke-direct {p0}, Lcom/google/android/a/a/i;->g()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/a/a/i;->g:Ljava/lang/String;

    const-string v2, "__##GOOGLEPAGEVIEW##__"

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;ILandroid/content/Context;Z)V

    return-void
.end method

.method a(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/a/a/o;Lcom/google/android/a/a/f;Z)V
    .locals 8

    new-instance v7, Lcom/google/android/a/a/k;

    invoke-direct {v7, p0}, Lcom/google/android/a/a/k;-><init>(Lcom/google/android/a/a/i;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/a/a/o;Lcom/google/android/a/a/f;ZLcom/google/android/a/a/g;)V

    return-void
.end method

.method a(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/a/a/o;Lcom/google/android/a/a/f;ZLcom/google/android/a/a/g;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/a/a/i;->g:Ljava/lang/String;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/i;->h:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    new-instance v0, Lcom/google/android/a/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/i;->q:Lcom/google/android/a/a/a;

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    invoke-interface {v0}, Lcom/google/android/a/a/o;->c()V

    :cond_1
    iput-object p5, p0, Lcom/google/android/a/a/i;->n:Lcom/google/android/a/a/f;

    iget-object v0, p0, Lcom/google/android/a/a/i;->n:Lcom/google/android/a/a/f;

    invoke-interface {v0, p7}, Lcom/google/android/a/a/f;->a(Lcom/google/android/a/a/g;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/a/i;->p:Z

    iget-object v0, p0, Lcom/google/android/a/a/i;->i:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/a/i;->h:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/a/a/i;->i:Landroid/net/ConnectivityManager;

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/a/i;->u:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/a/a/i;->u:Landroid/os/Handler;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/a/a/i;->a(I)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/a/a/i;->h()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;ILandroid/content/Context;Z)V
    .locals 7

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    if-nez v0, :cond_1

    new-instance v4, Lcom/google/android/a/a/x;

    invoke-direct {v4, p3}, Lcom/google/android/a/a/x;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/google/android/a/a/i;->d:Z

    invoke-interface {v4, v0}, Lcom/google/android/a/a/o;->a(Z)V

    iget v0, p0, Lcom/google/android/a/a/i;->f:I

    invoke-interface {v4, v0}, Lcom/google/android/a/a/o;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/a/i;->n:Lcom/google/android/a/a/f;

    if-nez v0, :cond_2

    new-instance v5, Lcom/google/android/a/a/s;

    iget-object v0, p0, Lcom/google/android/a/a/i;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/a/i;->k:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lcom/google/android/a/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/a/a/i;->c:Z

    invoke-interface {v5, v0}, Lcom/google/android/a/a/f;->a(Z)V

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/a/a/o;Lcom/google/android/a/a/f;Z)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/a/a/i;->n:Lcom/google/android/a/a/f;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/a/i;->g:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/a/a/i;->d:Z

    iget-object v0, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    iget-boolean v1, p0, Lcom/google/android/a/a/i;->d:Z

    invoke-interface {v0, v1}, Lcom/google/android/a/a/o;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/a/a/i;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "GoogleAnalyticsTracker"

    const-string v3, "Called dispatch"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/a/a/i;->p:Z

    if-eqz v2, :cond_3

    iget-boolean v1, p0, Lcom/google/android/a/a/i;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but dispatcher was busy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/google/android/a/a/i;->g()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lcom/google/android/a/a/i;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/a/a/i;->b:Z

    if-eqz v1, :cond_5

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but there was no network available"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/google/android/a/a/i;->g()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    invoke-interface {v2}, Lcom/google/android/a/a/o;->b()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/google/android/a/a/i;->m:Lcom/google/android/a/a/o;

    invoke-interface {v0}, Lcom/google/android/a/a/o;->a()[Lcom/google/android/a/a/m;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/a/a/i;->n:Lcom/google/android/a/a/f;

    invoke-interface {v2, v0}, Lcom/google/android/a/a/f;->a([Lcom/google/android/a/a/m;)V

    iput-boolean v1, p0, Lcom/google/android/a/a/i;->p:Z

    invoke-direct {p0}, Lcom/google/android/a/a/i;->g()V

    iget-boolean v2, p0, Lcom/google/android/a/a/i;->b:Z

    if-eqz v2, :cond_7

    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hits to dispatcher"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iput-boolean v1, p0, Lcom/google/android/a/a/i;->o:Z

    iget-boolean v1, p0, Lcom/google/android/a/a/i;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but there was nothing to dispatch"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/a/i;->p:Z

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/a/a/i;->e()V

    return-void
.end method

.method public e()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/a/a/i;->n:Lcom/google/android/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/i;->n:Lcom/google/android/a/a/f;

    invoke-interface {v0}, Lcom/google/android/a/a/f;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/a/a/i;->h()V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/a/i;->b:Z

    return v0
.end method
