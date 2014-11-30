.class Lcom/acmeaom/android/myradar/app/activity/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/o;->a:Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p1

    .line 59
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method
