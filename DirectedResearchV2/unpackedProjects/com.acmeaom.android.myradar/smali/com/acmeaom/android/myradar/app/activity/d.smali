.class Lcom/acmeaom/android/myradar/app/activity/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/d;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/d;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->a(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/d;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/activity/d;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    const-class v3, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/d;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->b(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    .line 197
    :cond_0
    return-void
.end method
