.class public Lcom/acmeaom/android/a/g/o;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:[Lcom/acmeaom/android/a/g/m;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, v3, [Lcom/acmeaom/android/a/g/m;

    iput-object v0, p0, Lcom/acmeaom/android/a/g/o;->a:[Lcom/acmeaom/android/a/g/m;

    .line 6
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/acmeaom/android/a/g/o;->a:[Lcom/acmeaom/android/a/g/m;

    new-instance v2, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v2}, Lcom/acmeaom/android/a/g/m;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/acmeaom/android/a/g/o;->a:[Lcom/acmeaom/android/a/g/m;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(ILcom/acmeaom/android/a/g/m;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/acmeaom/android/a/g/o;->a:[Lcom/acmeaom/android/a/g/m;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 24
    return-void
.end method
