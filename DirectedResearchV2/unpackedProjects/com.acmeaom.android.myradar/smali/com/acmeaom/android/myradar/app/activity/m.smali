.class Lcom/acmeaom/android/myradar/app/activity/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/m;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/m;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    const v1, 0x20002

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->showDialog(I)V

    .line 369
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/m;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/m;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->d(Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 370
    return-void
.end method
