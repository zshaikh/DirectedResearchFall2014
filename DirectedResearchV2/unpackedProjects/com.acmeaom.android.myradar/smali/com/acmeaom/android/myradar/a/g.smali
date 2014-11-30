.class public Lcom/acmeaom/android/myradar/a/g;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/app/Activity;)Lcom/acmeaom/android/myradar/a/l;
    .locals 4

    .prologue
    .line 18
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/myradar/a/i;->c:Lcom/acmeaom/android/myradar/a/i;

    .line 19
    :goto_0
    sget-object v1, Lcom/acmeaom/android/myradar/a/h;->a:[I

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/a/i;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Billing provider \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_0
    sget-object v0, Lcom/acmeaom/android/myradar/a/i;->a:Lcom/acmeaom/android/myradar/a/i;

    goto :goto_0

    .line 21
    :pswitch_0
    new-instance v0, Lcom/acmeaom/android/myradar/a/b/a;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/a/b/a;-><init>(Landroid/app/Activity;)V

    .line 24
    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/acmeaom/android/myradar/a/a/a;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/a/a/a;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
