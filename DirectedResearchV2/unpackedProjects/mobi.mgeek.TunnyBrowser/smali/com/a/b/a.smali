.class public Lcom/a/b/a;
.super Ljava/lang/Object;
.source "DroidHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 313
    sget-object v0, Lcom/a/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    sget-object v1, Lcom/a/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 319
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 320
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 322
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 323
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    const-string v0, ":\\s+"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_1

    array-length v1, v0

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_1
    :goto_0
    sget-object v0, Lcom/a/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const-string v0, "unknown"

    sput-object v0, Lcom/a/b/a;->c:Ljava/lang/String;

    .line 338
    :cond_2
    sget-object v0, Lcom/a/b/a;->c:Ljava/lang/String;

    return-object v0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/a/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    if-eqz p0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const-string v0, "BelugaBoost_Droid"

    const-string v1, "generate_android_id"

    invoke-static {p0, v0, v1}, Lcom/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BelugaBoost_Droid"

    const-string v2, "generate_android_id"

    invoke-static {p0, v1, v2, v0}, Lcom/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    :cond_0
    :goto_0
    sput-object v0, Lcom/a/b/a;->b:Ljava/lang/String;

    .line 108
    :cond_1
    sget-object v0, Lcom/a/b/a;->b:Ljava/lang/String;

    return-object v0

    .line 99
    :cond_2
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {p0}, Lcom/a/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 288
    const/16 v2, 0x320

    .line 289
    const/16 v1, 0x1e0

    .line 290
    if-eqz p0, :cond_2

    .line 291
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 292
    if-eqz v0, :cond_2

    .line 293
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 294
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 295
    invoke-static {p0}, Lcom/a/b/a;->e(Landroid/content/Context;)I

    move-result v0

    .line 296
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 297
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 298
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 305
    :goto_0
    if-nez p1, :cond_0

    .line 306
    add-int/lit8 v1, v1, -0x26

    .line 307
    add-int/lit16 v0, v0, -0x1e0

    .line 309
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 301
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 113
    .line 114
    if-nez p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 119
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 130
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    sget-object v0, Lcom/a/b/a;->a:Ljava/lang/String;

    const-string v1, "[generateId] ... start ."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/a/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[generateId] guid : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method public static final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 139
    :cond_0
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 140
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    :cond_1
    const-string v0, "-"

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 152
    if-nez p0, :cond_0

    .line 153
    const-string v0, "-"

    .line 181
    :goto_0
    return-object v0

    .line 157
    :cond_0
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 158
    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 161
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 164
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 166
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 173
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :cond_3
    const-string v0, "-"

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 189
    :cond_0
    return v0
.end method

.method public static final f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    if-nez p0, :cond_1

    .line 273
    const-string v0, "-"

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    :goto_1
    const-string v0, "-"

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static final g(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 74
    const-string v1, ""

    .line 75
    if-nez p0, :cond_1

    move-object v0, v1

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const-string v0, "BelugaBoost_Droid"

    const-string v2, "generate_device_id"

    invoke-static {p0, v0, v2}, Lcom/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BelugaBoost_Droid"

    const-string v3, "generate_device_id"

    invoke-static {p0, v2, v3, v0}, Lcom/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
