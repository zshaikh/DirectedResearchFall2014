.class public Lcom/acmeaom/android/a/a/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/acmeaom/android/a/a/b/c;->a:I

    .line 8
    iput p2, p0, Lcom/acmeaom/android/a/a/b/c;->b:I

    .line 9
    return-void
.end method

.method public static a(II)Lcom/acmeaom/android/a/a/b/c;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/acmeaom/android/a/a/b/c;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/a/a/b/c;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 16
    instance-of v1, p1, Lcom/acmeaom/android/a/a/b/c;

    if-nez v1, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 20
    :cond_1
    check-cast p1, Lcom/acmeaom/android/a/a/b/c;

    .line 22
    iget v1, p0, Lcom/acmeaom/android/a/a/b/c;->a:I

    iget v2, p1, Lcom/acmeaom/android/a/a/b/c;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/b/c;->b:I

    iget v2, p1, Lcom/acmeaom/android/a/a/b/c;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
