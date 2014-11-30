.class public Lcom/acmeaom/android/a/f/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/acmeaom/android/a/f/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/acmeaom/android/a/f/f;

    invoke-direct {v0}, Lcom/acmeaom/android/a/f/f;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/f/f;->a:Lcom/acmeaom/android/a/f/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/f/f;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/acmeaom/android/a/f/f;->a:Lcom/acmeaom/android/a/f/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/d/a;)V
    .locals 4

    .prologue
    .line 25
    new-instance v1, Landroid/location/Location;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v0, p1, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 27
    iget-object v0, p1, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 28
    invoke-static {v1}, Lcom/acmeaom/android/myradar/app/notifications/a;->a(Landroid/location/Location;)Z

    .line 29
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
