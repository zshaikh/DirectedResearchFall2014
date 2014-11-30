.class final Lcom/acmeaom/android/myradar/app/notifications/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;


# direct methods
.method constructor <init>(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/notifications/c;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/a;->a(Landroid/content/Context;)Lcom/google/android/gms/b/a;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/acmeaom/android/myradar/app/notifications/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "549265286451"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/notifications/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/notifications/c;->a:Landroid/location/Location;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/notifications/a;->a(Landroid/location/Location;)Z

    .line 41
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "GCM registration error."

    invoke-static {v1, v0}, Lcom/acmeaom/android/myradar/b/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
