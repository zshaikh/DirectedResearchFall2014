.class Lcom/acmeaom/android/myradar/app/activity/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/j;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 535
    const-string v0, "/no_external_media"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/j;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->finish()V

    .line 537
    return-void
.end method
