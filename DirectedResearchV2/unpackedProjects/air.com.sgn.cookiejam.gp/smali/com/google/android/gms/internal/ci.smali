.class public final Lcom/google/android/gms/internal/ci;
.super Ljava/lang/Object;


# instance fields
.field public final hZ:I

.field public final ia:Z

.field public final ib:Z

.field public final ic:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final ie:Z

.field public final if:Z

.field public final ig:Z

.field public final ih:Ljava/lang/String;

.field public final ii:Ljava/lang/String;

.field public final ij:I

.field public final ik:I

.field public final il:I

.field public final im:I

.field public final in:I

.field public final io:I

.field public final ip:F

.field public final iq:I

.field public final ir:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ci;->hZ:I

    const-string v6, "geo:0,0?q=donuts"

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    move v6, v8

    :goto_0
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ci;->ia:Z

    const-string v6, "http://www.google.com"

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ci;->ib:Z

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ci;->ic:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ci;->id:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/cs;->ax()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ci;->ie:Z

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ci;->if:Z

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ci;->ig:Z

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ci;->ih:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ci;->ii:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ci;->ij:I

    invoke-static {p1, v1, v5}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ci;->ik:I

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ci;->il:I

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ci;->im:I

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ci;->in:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ci;->io:I

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/ci;->ip:F

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/ci;->iq:I

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/ci;->ir:I

    return-void

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I
    .locals 3

    const/4 v0, -0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/co;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "market://details?id=com.google.android.gms.ads"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0
.end method
