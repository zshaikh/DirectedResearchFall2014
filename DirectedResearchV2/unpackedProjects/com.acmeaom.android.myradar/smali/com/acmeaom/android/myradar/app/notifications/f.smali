.class Lcom/acmeaom/android/myradar/app/notifications/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/notifications/e;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/notifications/e;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/notifications/f;->a:Lcom/acmeaom/android/myradar/app/notifications/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const-string v0, "notifications_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/notifications/f;->a:Lcom/acmeaom/android/myradar/app/notifications/e;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/notifications/e;->a(Lcom/acmeaom/android/myradar/app/notifications/e;)V

    .line 41
    :cond_0
    return-void
.end method
