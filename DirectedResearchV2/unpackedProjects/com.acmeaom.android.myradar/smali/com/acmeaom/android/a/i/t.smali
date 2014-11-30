.class public abstract Lcom/acmeaom/android/a/i/t;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/i/j;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/acmeaom/android/a/i/j;->a()Lcom/acmeaom/android/a/i/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 67
    instance-of v0, p0, Lcom/acmeaom/android/b/c/k/g;

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    const-class v2, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string v1, "warning"

    check-cast p0, Lcom/acmeaom/android/b/c/k/g;

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/g;->c()Lcom/acmeaom/android/b/c/k/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 83
    :goto_0
    return-object v0

    .line 71
    :cond_0
    instance-of v0, p0, Lcom/acmeaom/android/b/c/g/g;

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    const-class v2, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "hurricane"

    check-cast p0, Lcom/acmeaom/android/b/c/g/g;

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/g/g;->c()Lcom/acmeaom/android/b/c/g/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 76
    :cond_1
    instance-of v0, p0, Lcom/acmeaom/android/b/c/a/f;

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    const-class v2, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v1, "airmet"

    check-cast p0, Lcom/acmeaom/android/b/c/a/f;

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/a/f;->c()Lcom/acmeaom/android/b/c/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method
