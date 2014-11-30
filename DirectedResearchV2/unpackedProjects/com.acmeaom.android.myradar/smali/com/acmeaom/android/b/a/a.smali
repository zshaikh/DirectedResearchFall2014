.class public final Lcom/acmeaom/android/b/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Lcom/acmeaom/android/a/a/b/aa;)Lcom/acmeaom/android/a/a/b/aa;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/aa;->c()F

    move-result v0

    invoke-static {v0}, Lcom/acmeaom/android/b/a/a;->d(F)F

    move-result v0

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/aa;->a(F)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    return-object v0
.end method

.method public static a(F)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/acmeaom/android/b/a/a;->d(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 43
    const-string v0, "kTemperatureUnitKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {p0}, Lcom/acmeaom/android/b/a/a;->c(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/acmeaom/android/b/a/a;->d(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(F)F
    .locals 1

    .prologue
    .line 63
    const v0, 0x43889333

    sub-float v0, p0, v0

    return v0
.end method

.method public static b(Ljava/lang/Number;)F
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/acmeaom/android/b/a/a;->a(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static c(F)F
    .locals 2

    .prologue
    .line 79
    const/high16 v0, 0x41100000

    mul-float/2addr v0, p0

    const/high16 v1, 0x40a00000

    div-float/2addr v0, v1

    const v1, 0x43e5d5c3

    sub-float/2addr v0, v1

    return v0
.end method

.method public static c(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/acmeaom/android/b/a/a;->b(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static d(F)F
    .locals 1

    .prologue
    .line 95
    const v0, 0x43889333

    add-float/2addr v0, p0

    return v0
.end method

.method public static d(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/acmeaom/android/b/a/a;->c(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
