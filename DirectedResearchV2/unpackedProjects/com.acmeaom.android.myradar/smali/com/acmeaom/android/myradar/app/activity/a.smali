.class Lcom/acmeaom/android/myradar/app/activity/a;
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
    .line 170
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/a;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/a;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->a(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/a;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    const v1, 0x10020

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->showDialog(I)V

    .line 175
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/a;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->b(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
