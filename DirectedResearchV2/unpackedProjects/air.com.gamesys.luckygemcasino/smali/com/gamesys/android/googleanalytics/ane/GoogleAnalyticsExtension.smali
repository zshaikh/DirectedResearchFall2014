.class public Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;
.super Lcom/gamesys/android/common/tools/fwk/AbstractExtension;
.source "GoogleAnalyticsExtension.java"


# static fields
.field public static final METADATA_TRACKER_ID:Ljava/lang/String; = "com.gamesys.android.googleanalytics.ane.METADATA_TRACKER_ID"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;-><init>()V

    return-void
.end method

.method public static getContext(Ljava/lang/String;Landroid/app/Activity;)Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;
    .locals 1
    .param p0, "extensionId"    # Ljava/lang/String;
    .param p1, "androidActivity"    # Landroid/app/Activity;

    .prologue
    .line 35
    sget-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->newContext(Ljava/lang/String;)Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .line 37
    sget-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    invoke-virtual {v0, p1}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->setAndroidContext(Landroid/content/Context;)V

    .line 39
    :cond_0
    sget-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    check-cast v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;

    return-object v0
.end method

.method private static newContext(Ljava/lang/String;)Lcom/gamesys/android/common/tools/fwk/AbstractContext;
    .locals 1
    .param p0, "extensionId"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;

    invoke-direct {v0, p0}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->TAG:Ljava/lang/String;

    const-string v1, "createContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p1}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->newContext(Ljava/lang/String;)Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .line 22
    sget-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->TAG:Ljava/lang/String;

    return-object v0
.end method
