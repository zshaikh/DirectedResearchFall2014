.class public Lcom/acmeaom/android/a/a/b/ak;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/util/TimeZone;


# direct methods
.method private constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/ak;->a:Ljava/util/TimeZone;

    .line 12
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/b/ak;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/acmeaom/android/a/a/b/ak;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/ak;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static a(I)Lcom/acmeaom/android/a/a/b/ak;
    .locals 2

    .prologue
    .line 24
    mul-int/lit16 v0, p0, 0x3e8

    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 25
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/acmeaom/android/a/a/b/ak;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/a/a/b/ak;-><init>(Ljava/util/TimeZone;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/b/j;)Lcom/acmeaom/android/a/a/b/aj;
    .locals 6

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/acmeaom/android/a/a/b/aj;

    iget-object v2, p0, Lcom/acmeaom/android/a/a/b/ak;->a:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    return-object v1
.end method

.method public b()Lcom/acmeaom/android/a/a/b/aj;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/acmeaom/android/a/a/b/j;->i()Lcom/acmeaom/android/a/a/b/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/a/b/ak;->a(Lcom/acmeaom/android/a/a/b/j;)Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v0

    return-object v0
.end method
