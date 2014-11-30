.class public Lcom/gamesys/android/tools/ane/ToolsContext;
.super Lcom/gamesys/android/common/tools/fwk/AbstractContext;
.source "ToolsContext.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appVersion:Ljava/lang/String;

.field public cmEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/gamesys/android/tools/ane/ToolsContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/ToolsContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "extensionIdentifier"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v0, "0.0.1"

    iput-object v0, p0, Lcom/gamesys/android/tools/ane/ToolsContext;->appVersion:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesys/android/tools/ane/ToolsContext;->cmEnabled:Z

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/gamesys/android/tools/ane/ToolsContext;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->launchRatingIntent()V

    return-void
.end method

.method private checkActivityForIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 274
    .local v1, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 275
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Original intent : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "res":Ljava/lang/String;
    sget-object v4, Lcom/gamesys/android/tools/ane/ToolsContext;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 286
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static getMetadataAmazonSenderId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    const-string v0, "com.gamesys.android.ane.tools.METADATA_CM_AMAZON_SENDER_ID"

    invoke-static {p0, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMetadataGoogleSenderId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    const-string v0, "com.gamesys.android.ane.tools.METADATA_CM_GOOGLE_PLAY_SENDER_ID"

    invoke-static {p0, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launchRatingIntent()V
    .locals 7

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "appPkg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 198
    .local v2, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "installer":Ljava/lang/String;
    const/4 v3, 0x0

    .line 201
    .local v3, "rateAppIntent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://market.android.com/details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 202
    .local v4, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "rateAppIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    .restart local v3    # "rateAppIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v5, "com.android.vending"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 211
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "rateAppIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    .restart local v3    # "rateAppIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method private showRatingDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "rateBtnText"    # Ljava/lang/String;
    .param p4, "remindMeBtnText"    # Ljava/lang/String;
    .param p5, "cancelBtnText"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/gamesys/android/tools/ane/ToolsContext$1;

    invoke-direct {v2, p0}, Lcom/gamesys/android/tools/ane/ToolsContext$1;-><init>(Lcom/gamesys/android/tools/ane/ToolsContext;)V

    invoke-virtual {v0, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    new-instance v2, Lcom/gamesys/android/tools/ane/ToolsContext$2;

    invoke-direct {v2, p0}, Lcom/gamesys/android/tools/ane/ToolsContext$2;-><init>(Lcom/gamesys/android/tools/ane/ToolsContext;)V

    invoke-virtual {v0, p5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    new-instance v2, Lcom/gamesys/android/tools/ane/ToolsContext$3;

    invoke-direct {v2, p0}, Lcom/gamesys/android/tools/ane/ToolsContext$3;-><init>(Lcom/gamesys/android/tools/ane/ToolsContext;)V

    invoke-virtual {v0, p4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 189
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 190
    return-void
.end method


# virtual methods
.method public dispatchErrorCodeEvent(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 337
    if-nez p2, :cond_1

    .line 338
    const-string v0, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR"

    const-string v1, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    if-eqz p1, :cond_0

    .line 347
    sget-object v0, Lcom/gamesys/android/tools/ane/ToolsContext;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    :cond_0
    return-void

    .line 339
    :cond_1
    const-string v0, "CODE_CLOUD_MESSAGING_ERROR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p0, p2, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    const-string v0, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_ERROR"

    invoke-virtual {p0, p2, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/gamesys/android/tools/ane/ToolsContext;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/ToolsContext;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v1, Lcom/gamesys/android/tools/ane/ToolsContext;->TAG:Ljava/lang/String;

    const-string v2, "getFunctions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->getFunctions()Ljava/util/Map;

    move-result-object v0

    .line 91
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "notify.repeat"

    new-instance v2, Lcom/gamesys/android/tools/ane/notification/NotificationFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/notification/NotificationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "notify.test"

    new-instance v2, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "toast"

    new-instance v2, Lcom/gamesys/android/tools/ane/notification/ToastFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/notification/ToastFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "id.built_in.uuid"

    new-instance v2, Lcom/gamesys/android/tools/ane/uuid/IdAndroidFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/uuid/IdAndroidFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "id.self_generated"

    new-instance v2, Lcom/gamesys/android/tools/ane/uuid/IdSelfGeneratedFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/uuid/IdSelfGeneratedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "id.package"

    new-instance v2, Lcom/gamesys/android/tools/ane/uuid/ApplicationPackageFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/uuid/ApplicationPackageFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "id.package.base64"

    new-instance v2, Lcom/gamesys/android/tools/ane/uuid/PackageBase64Function;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/uuid/PackageBase64Function;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "id.platform"

    new-instance v2, Lcom/gamesys/android/common/tools/ane/StoreInstallerFunction;

    invoke-direct {v2}, Lcom/gamesys/android/common/tools/ane/StoreInstallerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "id.store.url"

    new-instance v2, Lcom/gamesys/android/tools/ane/uuid/AppStoreUrlFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/uuid/AppStoreUrlFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "id.account.google.all"

    new-instance v2, Lcom/gamesys/android/tools/ane/uuid/GetGoogleAccountsFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/uuid/GetGoogleAccountsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "file.unzip"

    new-instance v2, Lcom/gamesys/android/tools/ane/file/UnzipFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/file/UnzipFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "misc.locale.country"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/locale/LocaleCountryCodeFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/locale/LocaleCountryCodeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "misc.locale.language"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/locale/LocaleLanguageCodeFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/locale/LocaleLanguageCodeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "misc.build.constants"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "misc.graphic.dpi"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/graphic/ScreenDensityFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "misc.graphic.is_tablet"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/graphic/IsTabletFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "misc.self.restart"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/self/RestartMainActivityFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/self/RestartMainActivityFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "misc.self.stop"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/self/StopMainActivityFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/self/StopMainActivityFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "misc.self.is_device_locked"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/self/DeviceIsLockedFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/self/DeviceIsLockedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "misc.send.sms"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/send/SendSmsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "misc.send.email"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/send/SendEmailFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/send/SendEmailFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "misc.network.signal.strength"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "misc.rate.try"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "misc.rate.reset"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/rate/RatingResetFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "misc.info.launch.read"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "misc.info.launch.clean"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/prefs/CleanStoredURIInfoFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/prefs/CleanStoredURIInfoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "misc.prefs.read"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "misc.prefs.write"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "misc.clipboard.copy"

    new-instance v2, Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "cm.register"

    new-instance v2, Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/notification/cm/CloudMessagingRegisterFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "log"

    new-instance v2, Lcom/gamesys/android/tools/ane/logs/LogFunction;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/logs/LogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object v0
.end method

.method public getRatingCount()I
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/tools/ane/ToolsContext;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getRatingCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcom/gamesys/android/tools/ane/ToolsContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionAppPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyActionDone()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public performAmazonAuthentication()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public performAmazonLogout()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public performAmazonQueryState()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public performCloudMessagingRegistration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "googleSenderId"    # Ljava/lang/String;
    .param p2, "amazonSenderId"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string v3, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_IN_PROGRESS"

    const-string v4, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p0, v3, v4}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    move-object v2, p3

    .line 299
    .local v2, "installer":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "PLATFORM_UNKOWN"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/gamesys/android/common/tools/ToolsBox;->getInstallerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 303
    :cond_1
    const-string v3, "AMAZON_APP_STORE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 304
    move-object v0, p2

    .line 305
    .local v0, "actualAmazonSenderId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/gamesys/android/tools/ane/ToolsContext;->getMetadataAmazonSenderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_2
    if-eqz v0, :cond_4

    .line 311
    invoke-static {v0, p0}, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->register(Ljava/lang/String;Lcom/gamesys/android/tools/ane/ToolsContext;)Z

    .line 328
    .end local v0    # "actualAmazonSenderId":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 313
    .restart local v0    # "actualAmazonSenderId":Ljava/lang/String;
    :cond_4
    const-string v3, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR_SENDER_ID_NOT_FOUND_AMAZON"

    const-string v4, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p0, v3, v4}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v0    # "actualAmazonSenderId":Ljava/lang/String;
    :cond_5
    const-string v3, "GOOGLE_PLAY_STORE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    move-object v1, p1

    .line 317
    .local v1, "actualGoogleSenderId":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 318
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/gamesys/android/tools/ane/ToolsContext;->getMetadataGoogleSenderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_6
    if-eqz v1, :cond_7

    .line 323
    invoke-static {v1, p0}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->register(Ljava/lang/String;Lcom/gamesys/android/tools/ane/ToolsContext;)Z

    goto :goto_0

    .line 325
    :cond_7
    const-string v3, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR_SENDER_ID_NOT_FOUND_GOOGLE"

    const-string v4, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p0, v3, v4}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public performEmailAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "emailBody"    # Ljava/lang/String;
    .param p2, "emailSubject"    # Ljava/lang/String;
    .param p3, "chooserTitle"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v0, "emailIntent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 229
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_0
    if-eqz p1, :cond_1

    .line 232
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :cond_1
    invoke-direct {p0, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->checkActivityForIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    const-string v1, "com.gamesys.android.ane.tools.CODE_SEND_EMAIL_NO_APPLICATION"

    const-string v2, "com.gamesys.android.ane.tools.LEVEL_SEND_EMAIL"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public performLaunchActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rootPackage"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 360
    move-object v1, p1

    .line 361
    .local v1, "actualPackageName":Ljava/lang/String;
    const-string v3, "air."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "air."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    :cond_0
    move-object v0, p2

    .line 366
    .local v0, "actualActivityName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 367
    const-string v0, "AppEntry"

    .line 370
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "INTENT_KEY_ACTION_TO_DO"

    const-string v4, "com.gamesys.android.ane.tools.TOOLS_INTERFACE_ACTION_LAUNCH_MAIN_ACTIVITY"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v3, "INTENT_KEY_PACKAGE_NAME"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v3, "INTENT_KEY_ACTIVITY_NAME"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 375
    return-void
.end method

.method public performRatingAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "rateBtnText"    # Ljava/lang/String;
    .param p4, "remindMeBtnText"    # Ljava/lang/String;
    .param p5, "cancelBtnText"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct/range {p0 .. p5}, Lcom/gamesys/android/tools/ane/ToolsContext;->showRatingDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public performSmsAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "smsText"    # Ljava/lang/String;
    .param p2, "chooserTitle"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "smsIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 254
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_0
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-direct {p0, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->checkActivityForIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    const-string v1, "com.gamesys.android.ane.tools.CODE_SEND_SMS_NO_APPLICATION"

    const-string v2, "com.gamesys.android.ane.tools.LEVEL_SEND_SMS"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public resetRatingCount(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/tools/ane/ToolsContext;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->resetRatingCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public saveRatingCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/tools/ane/ToolsContext;->appVersion:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->saveRatingCount(Landroid/content/Context;ILjava/lang/String;)V

    .line 411
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/ToolsContext;->appVersion:Ljava/lang/String;

    .line 384
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 385
    .local v0, "appPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 386
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appVersion"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    return-void
.end method
