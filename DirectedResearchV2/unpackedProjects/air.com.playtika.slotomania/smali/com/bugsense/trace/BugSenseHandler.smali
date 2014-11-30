.class public Lcom/bugsense/trace/BugSenseHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsense/trace/BugSenseHandler$Processor;
    }
.end annotation


# static fields
.field public static I_WANT_TO_DEBUG:Z

.field private static crashExtraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static exceptionCallback:Lcom/bugsense/trace/ExceptionCallback;

.field private static isSessionActive:Z

.field static locText:Ljava/lang/String;

.field static locTicker:Ljava/lang/String;

.field static locTitle:Ljava/lang/String;

.field private static preferences:Landroid/content/SharedPreferences;

.field protected static sMinDelay:I

.field private static sSetupCalled:Z

.field private static sTask:Lcom/bugsense/trace/ActivityAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bugsense/trace/ActivityAsyncTask",
            "<",
            "Lcom/bugsense/trace/BugSenseHandler$Processor;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const-string v2, ""

    sput-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    sput v1, Lcom/bugsense/trace/BugSenseHandler;->sMinDelay:I

    sput-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->sSetupCalled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->exceptionCallback:Lcom/bugsense/trace/ExceptionCallback;

    sput-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->isSessionActive:Z

    const-string v0, ""

    sput-object v2, Lcom/bugsense/trace/BugSenseHandler;->locTicker:Ljava/lang/String;

    const-string v0, ""

    sput-object v2, Lcom/bugsense/trace/BugSenseHandler;->locTitle:Ljava/lang/String;

    const-string v0, ""

    sput-object v2, Lcom/bugsense/trace/BugSenseHandler;->locText:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$102(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public static addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/bugsense/trace/Utils;->exceedLimitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addCrashExtraMap(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/bugsense/trace/Utils;->exceedLimitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static clearCrashExtraData()V
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public static closeSession(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->isSessionActive:Z

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bugsense/trace/models/PingsMechanism;->savePing(ILjava/lang/String;)V

    return-void
.end method

.method public static flush(Landroid/content/Context;)V
    .locals 3

    const-string v2, "Flushing..."

    sget-boolean v0, Lcom/bugsense/trace/G;->sendOnlyWiFi:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/bugsense/trace/G;->IS_WIFI_ON:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Flushing..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/bugsense/trace/models/PingsMechanism;->getInstance()Lcom/bugsense/trace/models/PingsMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsense/trace/models/PingsMechanism;->sendSavedPings()V

    invoke-static {}, Lcom/bugsense/trace/models/CrashMechanism;->getInstance()Lcom/bugsense/trace/models/CrashMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsense/trace/models/CrashMechanism;->sendSavedCrashes()V

    invoke-static {}, Lcom/bugsense/trace/models/EventsMechanism;->getInstance()Lcom/bugsense/trace/models/EventsMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsense/trace/models/EventsMechanism;->sendSavedEvents()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Flushing..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/bugsense/trace/models/PingsMechanism;->getInstance()Lcom/bugsense/trace/models/PingsMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsense/trace/models/PingsMechanism;->sendSavedPings()V

    invoke-static {}, Lcom/bugsense/trace/models/CrashMechanism;->getInstance()Lcom/bugsense/trace/models/CrashMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsense/trace/models/CrashMechanism;->sendSavedCrashes()V

    invoke-static {}, Lcom/bugsense/trace/models/EventsMechanism;->getInstance()Lcom/bugsense/trace/models/EventsMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsense/trace/models/EventsMechanism;->sendSavedEvents()V

    goto :goto_0
.end method

.method protected static getCallback()Lcom/bugsense/trace/ExceptionCallback;
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->exceptionCallback:Lcom/bugsense/trace/ExceptionCallback;

    return-object v0
.end method

.method public static getCrashExtraData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    return-object v0
.end method

.method private static initAndStartSession(Landroid/content/Context;Lcom/bugsense/trace/BugSenseHandler$Processor;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your BugSense API Key is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sput-object p2, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->installHandler()V

    invoke-interface {p1}, Lcom/bugsense/trace/BugSenseHandler$Processor;->handlerInstalled()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->PHONE_MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->ANDROID_VERSION:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/bugsense/trace/G;->APP_VERSION:Ljava/lang/String;

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bugsense/trace/G;->APP_VERSIONCODE:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/bugsense/trace/Utils;->setProperties(Landroid/content/Context;)V

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->sSetupCalled:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    invoke-virtual {v0}, Lcom/bugsense/trace/ActivityAsyncTask;->postProcessingDone()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bugsense/trace/ActivityAsyncTask;->connectTo(Ljava/lang/Object;)V

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    invoke-virtual {v0, p1}, Lcom/bugsense/trace/ActivityAsyncTask;->connectTo(Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->sSetupCalled:Z

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    sget-object v0, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "G.FILES_PATH GOT NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Error collecting information about the package!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Files Path set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/bugsense/trace/Utils;->checkForRoot()Z

    move-result v0

    sput-boolean v0, Lcom/bugsense/trace/G;->HAS_ROOT:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bugsense/trace/BugSenseHandler$1;

    invoke-direct {v1, p0}, Lcom/bugsense/trace/BugSenseHandler$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public static initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bugsense/trace/BugSenseHandler$2;

    invoke-direct {v0}, Lcom/bugsense/trace/BugSenseHandler$2;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Lcom/bugsense/trace/BugSenseHandler$Processor;Ljava/lang/String;)V

    return-void
.end method

.method private static installHandler()V
    .locals 4

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Registering default exceptions handler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current handler class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v1, v0, Lcom/bugsense/trace/DefaultExceptionHandler;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bugsense/trace/DefaultExceptionHandler;

    invoke-direct {v1, v0}, Lcom/bugsense/trace/DefaultExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    return-void
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x10

    sget-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BreadCrumb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " added."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static removeCrashExtraData(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->crashExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendDataOverWiFiOnly()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->sendOnlyWiFi:Z

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "BugSense will send data only over WiFi. Please make sure you have the ACCESS_NETWORK_STATE permission."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static sendEvent(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/bugsense/trace/models/EventsMechanism;->saveEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static sendException(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, p0}, Lcom/bugsense/trace/BugSenseHandler;->sendExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-void
.end method

.method public static sendExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sget-object v2, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    if-nez v2, :cond_1

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Could not send: API Key is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v3, "Saving handled exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/bugsense/trace/Utils;->exceedLimitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v2, Lcom/bugsense/trace/G;->TIMESTAMP:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sub-long v2, v4, v2

    move-wide v9, v2

    :goto_2
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v12, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bugsense/trace/G;->IS_WIFI_ON:I

    sget v2, Lcom/bugsense/trace/G;->IS_MOBILENET_ON:I

    sget v3, Lcom/bugsense/trace/G;->IS_GPS_ON:I

    sget-object v4, Lcom/bugsense/trace/G;->SCREEN_PROPS:[Ljava/lang/String;

    invoke-static {}, Lcom/bugsense/trace/Utils;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCrashExtraData()Ljava/util/HashMap;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/bugsense/trace/models/CrashMechanism;->createJSONFromCrash(Ljava/lang/String;III[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IJLjava/util/Map;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_3
    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0, v1}, Lcom/bugsense/trace/models/CrashMechanism;->saveCrash(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Failed to save handled exception "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    move-wide v9, v2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v12

    goto :goto_3
.end method

.method public static sendExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bugsense/trace/Utils;->exceedLimitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0, p2}, Lcom/bugsense/trace/BugSenseHandler;->sendExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-void
.end method

.method public static setExceptionCallback(Lcom/bugsense/trace/ExceptionCallback;)V
    .locals 0

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->exceptionCallback:Lcom/bugsense/trace/ExceptionCallback;

    return-void
.end method

.method public static setLocalizedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->locTicker:Ljava/lang/String;

    sput-object p1, Lcom/bugsense/trace/BugSenseHandler;->locTitle:Ljava/lang/String;

    sput-object p2, Lcom/bugsense/trace/BugSenseHandler;->locText:Ljava/lang/String;

    return-void
.end method

.method public static setLogging(I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput p0, Lcom/bugsense/trace/G;->LOG_LINES:I

    return-void
.end method

.method public static setLogging(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput p0, Lcom/bugsense/trace/G;->LOG_LINES:I

    sput-object p1, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    return-void
.end method

.method public static setLogging(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput-object p0, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    return-void
.end method

.method public static setLogging(Z)V
    .locals 0

    sput-boolean p0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    return-void
.end method

.method public static startSession(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v4, 0x0

    const-string v0, "lastping"

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->installHandler()V

    invoke-static {p0}, Lcom/bugsense/trace/Utils;->setProperties(Landroid/content/Context;)V

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->isSessionActive:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bugsense/trace/G;->TIMESTAMP:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->isSessionActive:Z

    :try_start_0
    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastping"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastping"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bugsense/trace/models/PingsMechanism;->savePing(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "StartSession Preferences are null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static useProxy(Z)V
    .locals 0

    sput-boolean p0, Lcom/bugsense/trace/G;->proxyEnabled:Z

    return-void
.end method
