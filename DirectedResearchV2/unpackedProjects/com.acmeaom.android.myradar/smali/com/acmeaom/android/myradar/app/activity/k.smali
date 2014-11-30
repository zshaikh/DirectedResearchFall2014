.class Lcom/acmeaom/android/myradar/app/activity/k;
.super Lcom/acmeaom/android/a/a/b/w;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/a/b/u;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;


# direct methods
.method private constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/k;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Lcom/acmeaom/android/myradar/app/activity/a;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/acmeaom/android/myradar/app/activity/k;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 109
    if-nez p1, :cond_0

    const-string v0, ""

    .line 110
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error contacting internet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->g(Ljava/lang/String;)V

    .line 111
    return-void

    .line 109
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
