.class public Lcom/acmeaom/android/a/a/d/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/acmeaom/android/a/a/d/b;->b(D)V

    .line 13
    invoke-virtual {p0, p3, p4}, Lcom/acmeaom/android/a/a/d/b;->a(D)V

    .line 14
    return-void
.end method

.method public static a(DD)Lcom/acmeaom/android/a/a/d/b;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/acmeaom/android/a/a/d/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/acmeaom/android/a/a/d/b;-><init>(DD)V

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/d/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v1

    const-wide v3, -0x3fa9800000000000L

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v1

    const-wide v3, 0x4056800000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v1

    const-wide v3, -0x3f99800000000000L

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 19
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/acmeaom/android/a/a/d/b;->a:D

    return-wide v0
.end method

.method public a(D)V
    .locals 0

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/acmeaom/android/a/a/d/b;->a:D

    .line 32
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/acmeaom/android/a/a/d/b;->b:D

    return-wide v0
.end method

.method public b(D)V
    .locals 0

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/acmeaom/android/a/a/d/b;->b:D

    .line 40
    return-void
.end method

.method public b(Lcom/acmeaom/android/a/a/d/b;)V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p1, Lcom/acmeaom/android/a/a/d/b;->b:D

    iput-wide v0, p0, Lcom/acmeaom/android/a/a/d/b;->b:D

    .line 44
    iget-wide v0, p1, Lcom/acmeaom/android/a/a/d/b;->a:D

    iput-wide v0, p0, Lcom/acmeaom/android/a/a/d/b;->a:D

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
