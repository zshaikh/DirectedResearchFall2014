.class public final Lcom/google/ads/e/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:I

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/media/AudioManager;

.field private static g:Z

.field private static h:Z

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/e/a;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/e/a;->a:I

    .line 86
    sput-object v1, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 89
    sput-object v1, Lcom/google/ads/e/a;->c:Ljava/lang/String;

    .line 95
    sput-object v1, Lcom/google/ads/e/a;->e:Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/e/a;->g:Z

    .line 695
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/ads/e/a;->h:Z

    .line 735
    sput-object v1, Lcom/google/ads/e/a;->i:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 214
    sget v0, Lcom/google/ads/e/a;->a:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 215
    const/4 v0, 0x6

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3

    .prologue
    .line 912
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .locals 2

    .prologue
    .line 245
    sget v0, Lcom/google/ads/e/a;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 246
    invoke-static {p0, p1}, Lcom/google/ads/e/p;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 167
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Android SDK version couldn\'t be parsed to an int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/i;->e(Ljava/lang/String;)V

    .line 171
    const-string v0, "Defaulting to Android SDK version 3."

    invoke-static {v0}, Lcom/google/ads/e/i;->e(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    .line 628
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 629
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/google/ads/e/a;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    if-nez v0, :cond_2

    .line 197
    const/4 v0, 0x0

    .line 203
    :goto_1
    return-object v0

    .line 193
    :cond_1
    invoke-static {v0}, Lcom/google/ads/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/e/a;->c:Ljava/lang/String;

    .line 203
    :cond_3
    sget-object v0, Lcom/google/ads/e/a;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 154
    :goto_0
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 155
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 156
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 811
    .line 812
    const/4 v0, 0x0

    .line 814
    :try_start_0
    invoke-static {p0}, Lcom/google/ads/e/a;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 815
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 820
    :goto_0
    return-object v0

    .line 816
    :catch_0
    move-exception v1

    .line 817
    const-string v2, "JsonException in serialization: "

    invoke-static {v2, v1}, Lcom/google/ads/e/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)Ljava/util/HashMap;
    .locals 8

    .prologue
    const-wide v6, 0x416312d000000000L

    .line 634
    if-nez p0, :cond_0

    .line 635
    const/4 v0, 0x0

    .line 644
    :goto_0
    return-object v0

    .line 638
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 639
    const-string v1, "time"

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "lat"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "long"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v1, "radius"

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x447a0000

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/util/Set;)Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 863
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 865
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 895
    :goto_0
    return-object v0

    .line 869
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 870
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/lang/Double;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 875
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 876
    :cond_3
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 878
    :try_start_0
    check-cast v0, Ljava/util/Map;

    .line 879
    invoke-static {v0}, Lcom/google/ads/e/a;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 880
    :catch_0
    move-exception v0

    .line 881
    const-string v3, "Unknown map type in json serialization: "

    invoke-static {v3, v0}, Lcom/google/ads/e/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 883
    :cond_4
    instance-of v3, v0, Ljava/util/Set;

    if-eqz v3, :cond_5

    .line 885
    :try_start_1
    check-cast v0, Ljava/util/Set;

    .line 886
    invoke-static {v0}, Lcom/google/ads/e/a;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 887
    :catch_1
    move-exception v0

    .line 888
    const-string v3, "Unknown map type in json serialization: "

    invoke-static {v3, v0}, Lcom/google/ads/e/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 891
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown value in json serialization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/i;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 895
    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 807
    const-string v0, "User-Agent"

    invoke-static {p1}, Lcom/google/ads/e/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 692
    sput-boolean p0, Lcom/google/ads/e/a;->g:Z

    .line 693
    return-void
.end method

.method public static a(IILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 303
    and-int v0, p0, p1

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The android:configChanges value of the com.google.ads.AdActivity must include "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/i;->b(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 528
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 531
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    .line 534
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 423
    if-nez p0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 427
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Lcom/google/ads/e/o;)Z
    .locals 1

    .prologue
    .line 408
    if-nez p0, :cond_0

    .line 409
    sget-object p0, Lcom/google/ads/e/o;->d:Lcom/google/ads/e/o;

    .line 411
    :cond_0
    sget-object v0, Lcom/google/ads/e/o;->e:Lcom/google/ads/e/o;

    invoke-virtual {p0, v0}, Lcom/google/ads/e/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/ads/e/o;->f:Lcom/google/ads/e/o;

    invoke-virtual {p0, v0}, Lcom/google/ads/e/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 2

    .prologue
    .line 229
    sget v0, Lcom/google/ads/e/a;->a:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 230
    const/4 v0, 0x7

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .locals 2

    .prologue
    .line 261
    sget v0, Lcom/google/ads/e/a;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 262
    invoke-static {p0, p1}, Lcom/google/ads/e/p;->b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 264
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 439
    const/4 v0, 0x0

    .line 441
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 443
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 445
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v5, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 451
    :cond_0
    :goto_0
    return-object v0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    const/16 v0, 0x20

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/net/Uri;)Ljava/util/HashMap;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 659
    if-nez p0, :cond_0

    .line 678
    :goto_0
    return-object v0

    .line 663
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 664
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 666
    if-eqz v2, :cond_2

    .line 667
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 668
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 669
    if-gez v7, :cond_1

    .line 670
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 672
    :cond_1
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 673
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 678
    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 825
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 827
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 858
    :goto_0
    return-object v0

    .line 831
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 832
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 833
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_2

    instance-of v4, v1, Ljava/lang/Integer;

    if-nez v4, :cond_2

    instance-of v4, v1, Ljava/lang/Double;

    if-nez v4, :cond_2

    instance-of v4, v1, Ljava/lang/Long;

    if-nez v4, :cond_2

    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 838
    :cond_2
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 839
    :cond_3
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 841
    :try_start_0
    check-cast v1, Ljava/util/Map;

    .line 842
    invoke-static {v1}, Lcom/google/ads/e/a;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 843
    :catch_0
    move-exception v0

    .line 844
    const-string v1, "Unknown map type in json serialization: "

    invoke-static {v1, v0}, Lcom/google/ads/e/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 846
    :cond_4
    instance-of v4, v1, Ljava/util/Set;

    if-eqz v4, :cond_5

    .line 848
    :try_start_1
    check-cast v1, Ljava/util/Set;

    .line 849
    invoke-static {v1}, Lcom/google/ads/e/a;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 850
    :catch_1
    move-exception v0

    .line 851
    const-string v1, "Unknown map type in json serialization: "

    invoke-static {v1, v0}, Lcom/google/ads/e/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 854
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown value in json serialization: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/i;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v0, v2

    .line 858
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 279
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 281
    const-string v1, "INTERNET permissions must be enabled in AndroidManifest.xml."

    invoke-static {v1}, Lcom/google/ads/e/i;->b(Ljava/lang/String;)V

    .line 289
    :goto_0
    return v0

    .line 283
    :cond_0
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 285
    const-string v1, "ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml."

    invoke-static {v1}, Lcom/google/ads/e/i;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/ads/e/a;->a(Lcom/google/ads/e/o;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 323
    sget-object v0, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 390
    :goto_0
    return v0

    .line 328
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/ads/AdActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 334
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 335
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_3

    .line 336
    :cond_1
    const-string v0, "Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml."

    invoke-static {v0}, Lcom/google/ads/e/i;->b(Ljava/lang/String;)V

    .line 338
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 390
    :cond_2
    :goto_1
    sget-object v0, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 342
    :cond_3
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x10

    const-string v3, "keyboard"

    invoke-static {v1, v2, v3}, Lcom/google/ads/e/a;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 345
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 349
    :cond_4
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x20

    const-string v3, "keyboardHidden"

    invoke-static {v1, v2, v3}, Lcom/google/ads/e/a;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 352
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 356
    :cond_5
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x80

    const-string v3, "orientation"

    invoke-static {v1, v2, v3}, Lcom/google/ads/e/a;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 359
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 363
    :cond_6
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x100

    const-string v3, "screenLayout"

    invoke-static {v1, v2, v3}, Lcom/google/ads/e/a;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 366
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 370
    :cond_7
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x200

    const-string v3, "uiMode"

    invoke-static {v1, v2, v3}, Lcom/google/ads/e/a;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 373
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 377
    :cond_8
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x400

    const-string v3, "screenSize"

    invoke-static {v1, v2, v3}, Lcom/google/ads/e/a;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 380
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    .line 383
    :cond_9
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v1, 0x800

    const-string v2, "smallestScreenSize"

    invoke-static {v0, v1, v2}, Lcom/google/ads/e/a;->a(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/e/a;->b:Ljava/lang/Boolean;

    goto/16 :goto_1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 465
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 466
    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 483
    :goto_0
    return-object v0

    .line 471
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 479
    const-string v0, "unknown"

    goto :goto_0

    .line 473
    :pswitch_0
    const-string v0, "ed"

    goto :goto_0

    .line 476
    :pswitch_1
    const-string v0, "wi"

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 685
    sget-boolean v0, Lcom/google/ads/e/a;->g:Z

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/high16 v5, 0x10000

    .line 495
    sget-object v0, Lcom/google/ads/e/a;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 500
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "geo:0,0?q=donuts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    :cond_0
    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://search?q=pname:com.google"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 510
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 511
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 512
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_3
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/e/a;->d:Ljava/lang/String;

    .line 520
    :cond_5
    sget-object v0, Lcom/google/ads/e/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 547
    sget-object v1, Lcom/google/ads/e/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 548
    sget-object v0, Lcom/google/ads/e/a;->e:Ljava/lang/String;

    .line 577
    :cond_0
    :goto_0
    return-object v0

    .line 552
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 553
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.google.ads"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 556
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 558
    if-eqz v2, :cond_0

    .line 562
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 563
    if-eqz v2, :cond_0

    .line 567
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_0

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/ads/e/a;->e:Ljava/lang/String;

    .line 575
    sget-object v0, Lcom/google/ads/e/a;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Lcom/google/ads/e/c;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 589
    sget-object v0, Lcom/google/ads/e/a;->f:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 590
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/google/ads/e/a;->f:Landroid/media/AudioManager;

    .line 594
    :cond_0
    sget-object v0, Lcom/google/ads/e/c;->f:Lcom/google/ads/e/c;

    .line 596
    sget-object v0, Lcom/google/ads/e/a;->f:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 597
    invoke-static {}, Lcom/google/ads/e/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    sget-object v0, Lcom/google/ads/e/c;->e:Lcom/google/ads/e/c;

    .line 614
    :goto_0
    return-object v0

    .line 599
    :cond_1
    sget-object v1, Lcom/google/ads/e/a;->f:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/ads/e/a;->f:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_3

    .line 603
    :cond_2
    sget-object v0, Lcom/google/ads/e/c;->d:Lcom/google/ads/e/c;

    goto :goto_0

    .line 605
    :cond_3
    sget-object v0, Lcom/google/ads/e/a;->f:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 607
    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_5

    .line 609
    :cond_4
    sget-object v0, Lcom/google/ads/e/c;->d:Lcom/google/ads/e/c;

    goto :goto_0

    .line 611
    :cond_5
    sget-object v0, Lcom/google/ads/e/c;->b:Lcom/google/ads/e/c;

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 702
    sget-boolean v0, Lcom/google/ads/e/a;->h:Z

    if-eqz v0, :cond_0

    .line 714
    :goto_0
    return-void

    .line 707
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 708
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    new-instance v1, Lcom/google/ads/e/b;

    invoke-direct {v1}, Lcom/google/ads/e/b;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 713
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/e/a;->h:Z

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 751
    sget-object v0, Lcom/google/ads/e/a;->i:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 753
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 754
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Java0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 761
    :cond_0
    const-string v0, "os.name"

    const-string v1, "Linux"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 764
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 767
    const-string v0, "en"

    .line 769
    :cond_1
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Build/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mozilla/5.0 ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; U; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AppleWebKit/0.0 (KHTML, like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Gecko) Version/0.0 Mobile Safari/0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Mobile; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "afma-sdk-a-v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6.4.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/e/a;->i:Ljava/lang/String;

    .line 788
    :cond_4
    sget-object v0, Lcom/google/ads/e/a;->i:Ljava/lang/String;

    return-object v0
.end method
