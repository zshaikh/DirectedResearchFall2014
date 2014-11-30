.class public Lcom/acmeaom/android/myradar/app/e;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Lcom/acmeaom/android/myradar/app/c;

.field public final b:Lcom/acmeaom/android/a/d/f;

.field private final c:Lcom/acmeaom/android/a/d/c;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/d/b;)V
    .locals 6

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/acmeaom/android/a/d/f;

    invoke-direct {v1, p1}, Lcom/acmeaom/android/a/d/f;-><init>(Lcom/acmeaom/android/a/d/b;)V

    iput-object v1, p0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    .line 32
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/d/f;->setClickable(Z)V

    .line 34
    const v1, 0x7f0b004f

    invoke-direct {p0, v1}, Lcom/acmeaom/android/myradar/app/e;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    const v2, 0x7f0b004e

    invoke-direct {p0, v2}, Lcom/acmeaom/android/myradar/app/e;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Lcom/acmeaom/android/myradar/app/b/b;

    const-wide v4, 0x4046c3ea57766622L

    invoke-static {v4, v5}, Lcom/acmeaom/android/myradar/app/b/a;->a(D)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-wide v4, -0x3fa1583916e00000L

    invoke-static {v4, v5}, Lcom/acmeaom/android/myradar/app/b/a;->a(D)I

    move-result v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v3, v2, v0}, Lcom/acmeaom/android/myradar/app/b/b;-><init>(II)V

    .line 40
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/f;->getController()Lcom/acmeaom/android/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/e;->c:Lcom/acmeaom/android/a/d/c;

    .line 41
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/e;->c:Lcom/acmeaom/android/a/d/c;

    invoke-virtual {v0, v3}, Lcom/acmeaom/android/a/d/c;->a(Lcom/acmeaom/android/a/d/a;)V

    .line 42
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/e;->c:Lcom/acmeaom/android/a/d/c;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/d/c;->a(F)V

    .line 44
    new-instance v0, Lcom/acmeaom/android/myradar/app/c;

    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/myradar/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/e;->a:Lcom/acmeaom/android/myradar/app/c;

    .line 45
    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x15

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x7

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/e;->c:Lcom/acmeaom/android/a/d/c;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/d/c;->a(F)V

    .line 50
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/f;->invalidate()V

    .line 51
    return-void
.end method
