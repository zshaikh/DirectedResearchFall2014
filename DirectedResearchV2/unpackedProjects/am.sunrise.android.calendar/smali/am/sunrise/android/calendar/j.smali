.class Lam/sunrise/android/calendar/j;
.super Ljava/lang/Object;
.source "SunriseApplication.java"


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 292
    invoke-static {p0}, Lam/sunrise/android/calendar/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 293
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    .line 294
    sget-object v1, Lam/sunrise/android/calendar/i;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 295
    invoke-static {v0}, Lam/sunrise/android/calendar/i;->a(Ljava/io/File;)J

    move-result-wide v1

    .line 296
    invoke-static {v0, v1, v2}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    sput-object v0, Lam/sunrise/android/calendar/i;->a:Ljava/lang/Object;

    .line 298
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/i;->a:Ljava/lang/Object;

    return-object v0
.end method
