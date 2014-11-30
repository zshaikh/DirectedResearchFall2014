.class public Lcom/acmeaom/android/a/f/z;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/text/SimpleDateFormat;


# direct methods
.method public static a(Lcom/acmeaom/android/a/a/b/ak;Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/acmeaom/android/a/f/z;->b:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yy, h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/acmeaom/android/a/f/z;->b:Ljava/text/SimpleDateFormat;

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/j;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/ak;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 42
    sget-object v1, Lcom/acmeaom/android/a/f/z;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/acmeaom/android/a/f/z;->a:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d h:mma"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/acmeaom/android/a/f/z;->a:Ljava/text/SimpleDateFormat;

    .line 18
    :cond_0
    sget-object v0, Lcom/acmeaom/android/a/f/z;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/j;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
