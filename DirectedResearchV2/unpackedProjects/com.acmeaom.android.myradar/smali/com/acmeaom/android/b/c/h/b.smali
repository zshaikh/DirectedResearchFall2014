.class public Lcom/acmeaom/android/b/c/h/b;
.super Lcom/acmeaom/android/b/c/h/k;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)V
    .locals 1

    .prologue
    .line 12
    invoke-static {p2, p3}, Lcom/acmeaom/android/b/c/h/b;->a(Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/acmeaom/android/b/c/h/k;-><init>(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)V

    .line 13
    return-void
.end method

.method private static a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 40
    invoke-static {}, Lcom/acmeaom/android/a/a/b/ak;->a()Lcom/acmeaom/android/a/a/b/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/a/b/ak;->a(Lcom/acmeaom/android/a/a/b/j;)Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v2, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    invoke-static {v1, p0}, Lcom/acmeaom/android/a/a/b/j;->a(Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/a/a/b/j;)Lcom/acmeaom/android/a/a/b/j;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 59
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 60
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 61
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 62
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 64
    const-string v5, "::NAT-N0Q-%04d%02d%02d%02d%02d"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 16
    .line 18
    const-string v0, "^n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    invoke-static {p1}, Lcom/acmeaom/android/b/c/h/b;->a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "\\^n"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    const-string v1, "^x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    invoke-static {p1}, Lcom/acmeaom/android/b/c/h/b;->b(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v2, "\\^x"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    const-string v1, "http://"

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private static b(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/j;->f()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v0

    iget-wide v0, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide/high16 v2, 0x3fe0000000000000L

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 77
    const-string v2, "%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
