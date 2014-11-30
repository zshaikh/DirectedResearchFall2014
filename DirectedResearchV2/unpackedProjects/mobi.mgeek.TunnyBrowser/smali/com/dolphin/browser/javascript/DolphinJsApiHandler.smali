.class public final Lcom/dolphin/browser/javascript/DolphinJsApiHandler;
.super Lcom/dolphin/browser/javascript/DolphinWebAppHandler;
.source "DolphinJsApiHandler.java"


# instance fields
.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dolphin/browser/javascript/DolphinWebAppHandler;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->b:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 380
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 381
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 382
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/aa;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/png;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private d()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_8

    .line 209
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 211
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lcom/dolphin/browser/core/AppContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 213
    invoke-virtual {v2}, Lcom/dolphin/browser/core/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 214
    if-eqz v3, :cond_0

    .line 215
    const-string v4, "package_name"

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v4, "shell_version"

    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    const-string v4, "shell_version_text"

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :cond_0
    invoke-virtual {v2}, Lcom/dolphin/browser/core/AppContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 220
    if-eqz v3, :cond_1

    .line 221
    const-string v4, "app_name"

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 224
    const-string v3, "app_icon"

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v3

    .line 231
    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->j()Z

    move-result v4

    .line 233
    const-string v5, "jetpack_state"

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 234
    const-string v5, "jetpack_builtin"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 236
    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 237
    const-string v5, "jetpack_installed"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 238
    const-string v5, "com.dolphin.browser.engine"

    invoke-static {v2, v5}, Lcom/dolphin/browser/util/bw;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 239
    if-eqz v5, :cond_2

    .line 240
    const-string v6, "jetpack_version"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    :cond_2
    const-string v5, "com.dolphin.browser.engine"

    invoke-static {v2, v5}, Lcom/dolphin/browser/util/bw;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 245
    const-string v6, "jetpack_version_text"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_5

    .line 250
    :cond_4
    const-string v3, "jetpack_library_version"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->o()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 252
    const-string v4, "ad_block"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->v()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 253
    const-string v4, "auto_align"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->s()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 254
    const-string v4, "capture_bitmap"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->h()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 255
    const-string v4, "custom_view_resume"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->w()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 256
    const-string v4, "safe_save_password"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->p()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 257
    const-string v4, "expend_settings"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->x()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 258
    const-string v4, "safe_jsi"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->q()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 259
    const-string v4, "POL"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->r()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 260
    const-string v4, "video_cache"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->t()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 261
    const-string v4, "video_player"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->u()Z

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 262
    const-string v0, "jetpack_features"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_5
    const-string v0, "android_version"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string v0, "android_version_text"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v0, "kernel_version"

    const-string v3, "os.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "source"

    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/core/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 273
    if-eqz v0, :cond_7

    .line 274
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/core/AppContext;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 276
    const-string v2, "sim_state"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string v2, "sim_serial"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v2, "sim_subscriber_id"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v2, "sim_operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v2, "sim_operator_text"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v2, "sim_operator_country"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :cond_6
    const-string v2, "network_type"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    const-string v2, "network_operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v2, "network_operator_text"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v2, "network_operator_contry"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v2, "operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v2, "phone_type"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    :cond_7
    const-string v0, "android_id"

    invoke-direct {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    sget-object v0, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iput-object v1, p0, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->b:Lorg/json/JSONObject;

    return-object v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getAndroidIdHash()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getClientGUID()Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const-string v0, "Unknown"

    .line 316
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "dolphin"

    return-object v0
.end method

.method public addToHome(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->addToHomeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public addToHomeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "addToHome"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "name"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "url"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "icon"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/ui/launcher/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    const/4 v0, -0x1

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "dolphin home"

    const-string v1, "addtohome"

    const-string v2, "store"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->createShortcutImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createShortcutImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "createShortcut"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "appName"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "appUrl"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "iconUrl"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "timeout"
                b = 0x2
            .end subannotation
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->getAndroidIdImpl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAndroidIdImpl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "getAndroidId"
        b = {}
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->getDeviceInfoImpl()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceInfoImpl()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "getDeviceInfo"
        b = {}
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getDolphinLogoBase64()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->getDolphinLogoBase64Impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDolphinLogoBase64Impl()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "getDolphinLogoBase64"
        b = {}
        e = 0x2
    .end annotation

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 358
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const/high16 v2, 0x7f020000

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 361
    invoke-direct {p0, v1}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 365
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    :try_start_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 375
    :cond_1
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 367
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 371
    :cond_2
    :goto_2
    throw v0

    .line 369
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public getNewsNotificationState()I
    .locals 1
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "getNewsNotificationState"
        b = {}
        e = 0x2
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/dolphin/browser/message/g;->a()Lcom/dolphin/browser/message/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/message/g;->g()Z

    move-result v0

    .line 126
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHomeAdded(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->isHomeAddedImpl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isHomeAddedImpl(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "isHomeAdded"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "url"
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    .line 135
    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/ui/launcher/g;->d(Ljava/lang/String;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNewsNotificationState(I)I
    .locals 2
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "setNewsNotificationState"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "enable"
                b = 0x2
                c = "1"
            .end subannotation
        }
        e = 0x2
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 116
    if-ne p1, v0, :cond_0

    .line 117
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/message/g;->a()Lcom/dolphin/browser/message/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/message/g;->a(Z)V

    .line 118
    return p1

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreviewInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->setPreviewInfoImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreviewInfoImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "setPreviewInfo"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "pageUrl"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "title"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "iconUrl"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "cat"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "desc"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v6

    .line 182
    if-eqz v6, :cond_0

    .line 183
    new-instance v0, Lcom/dolphin/browser/core/bh;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/core/bh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/dolphin/browser/core/ITab;->setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V

    .line 187
    :cond_0
    return-void
.end method

.method public showNativeAddPage()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;->showNativeAddPageImpl()V

    goto :goto_0
.end method

.method public showNativeAddPageImpl()V
    .locals 1
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "showNativeAddPage"
        b = {}
        e = 0x2
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/dolphin/browser/javascript/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/javascript/b;-><init>(Lcom/dolphin/browser/javascript/DolphinJsApiHandler;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method
