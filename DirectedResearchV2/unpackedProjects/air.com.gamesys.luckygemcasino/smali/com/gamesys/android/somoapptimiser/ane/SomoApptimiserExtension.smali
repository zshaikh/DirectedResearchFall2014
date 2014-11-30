.class public Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;
.super Lcom/gamesys/android/common/tools/fwk/AbstractExtension;
.source "SomoApptimiserExtension.java"


# static fields
.field public static final RESULT_ERROR_APPLICATION_ID_NOT_CORRECT:Ljava/lang/String; = "com.gamesys.android.somoapptimiser.ane.RESULT_ERROR_APPLICATION_ID_NOT_CORRECT"

.field public static final RESULT_ERROR_TRACKER_NOT_INITIALIZED:Ljava/lang/String; = "com.gamesys.android.somoapptimiser.ane.ERROR_TRACKER_NOT_INITIALIZED"

.field public static final RESULT_ERROR_UNABLE_TO_INSTANTIATE_TRACKER:Ljava/lang/String; = "com.gamesys.android.somoapptimiser.ane.RESULT_ERROR_UNABLE_TO_INSTANTIATE_TRACKER"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "com.gamesys.android.somoapptimiser.ane.RESULT_SUCCESS"

.field public static final RESULT_SUCCESS_ALREADY_INSTANTIATED:Ljava/lang/String; = "com.gamesys.android.somoapptimiser.ane.RESULT_SUCCESS_ALREADY_INSTANTIATED"

.field private static final TAG:Ljava/lang/String;

.field private static asContext:Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

.field private static mDebugEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->mDebugEnabled:Z

    .line 42
    const-class v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;-><init>()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 89
    sput-boolean p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->mDebugEnabled:Z

    .line 90
    return-void
.end method

.method public static getContext()Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->asContext:Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->mDebugEnabled:Z

    return v0
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-boolean v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-boolean v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->TAG:Ljava/lang/String;

    const-string v1, "createContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

    invoke-direct {v0, p1}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->asContext:Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

    .line 48
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->asContext:Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
