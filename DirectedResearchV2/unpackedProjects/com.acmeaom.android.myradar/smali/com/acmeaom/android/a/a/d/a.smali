.class public Lcom/acmeaom/android/a/a/d/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lcom/acmeaom/android/a/a/d/b;

.field public final b:Lcom/acmeaom/android/a/a/d/c;


# direct methods
.method public constructor <init>(DD)V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/acmeaom/android/a/a/d/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/acmeaom/android/a/a/d/b;-><init>(DD)V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    .line 14
    new-instance v0, Lcom/acmeaom/android/a/a/d/c;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/d/c;-><init>(D)V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/d/a;->b:Lcom/acmeaom/android/a/a/d/c;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/acmeaom/android/a/a/d/b;-><init>(DD)V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    .line 20
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    .line 21
    new-instance v2, Lcom/acmeaom/android/a/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/acmeaom/android/a/a/d/c;-><init>(D)V

    iput-object v2, p0, Lcom/acmeaom/android/a/a/d/a;->b:Lcom/acmeaom/android/a/a/d/c;

    .line 22
    return-void

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/a/d/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    return-object v0
.end method
