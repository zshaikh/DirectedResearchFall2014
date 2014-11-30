.class public Lcom/acmeaom/android/myradar/app/notifications/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method static a()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/myradar/app/notifications/d;

    invoke-direct {v1}, Lcom/acmeaom/android/myradar/app/notifications/d;-><init>()V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method static a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/myradar/app/notifications/c;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/notifications/c;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0}, Lcom/acmeaom/android/myradar/app/notifications/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    const-string v0, "notification_gcm_registrationID"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const-string v0, "Registration not found."

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 75
    const-string v0, ""

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    const-string v2, "notifications_app_version_code"

    const/high16 v3, -0x80000000

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 89
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->n()I

    move-result v2

    .line 90
    if-eq v1, v2, :cond_0

    .line 91
    const-string v0, "App version changed."

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 92
    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->n()I

    move-result v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving regId on app version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    const-string v2, "notification_gcm_registrationID"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string v2, "notifications_app_version_code"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method
