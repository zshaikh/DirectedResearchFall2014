.class final Lcom/acmeaom/android/myradar/app/notifications/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/a;->a(Landroid/content/Context;)Lcom/google/android/gms/b/a;

    move-result-object v0

    .line 51
    :try_start_0
    const-string v1, ""

    invoke-static {v1}, Lcom/acmeaom/android/myradar/app/notifications/b;->a(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/f;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
