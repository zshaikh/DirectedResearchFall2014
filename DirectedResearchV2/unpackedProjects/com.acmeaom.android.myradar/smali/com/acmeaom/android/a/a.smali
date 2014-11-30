.class public Lcom/acmeaom/android/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 12
    :try_start_0
    invoke-static {p0, p1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 20
    :try_start_0
    invoke-static {p0, p1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
