.class public abstract Lcom/gamesys/android/common/tools/fwk/AbstractExtension;
.super Ljava/lang/Object;
.source "AbstractExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;
.implements Lcom/gamesys/android/common/tools/fwk/INativeExtension;


# static fields
.field public static final PROGRESS_DIALOG_ACTION_HIDE:Ljava/lang/String; = "com.gamesys.android.ane.tools.PROGRESS_DIALOG_ACTION_HIDE"

.field public static final PROGRESS_DIALOG_ACTION_SHOW:Ljava/lang/String; = "com.gamesys.android.ane.tools.PROGRESS_DIALOG_ACTION_SHOW"

.field protected static asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

.field private static mDebugEnabled:Z


# instance fields
.field private extensionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->mDebugEnabled:Z

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->extensionId:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 80
    sput-boolean p0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->mDebugEnabled:Z

    .line 81
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->mDebugEnabled:Z

    return v0
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-boolean v0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-boolean v0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createContext"

    invoke-static {v0, v1}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->extensionId:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->asContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public getExtensionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->extensionId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTAG()Ljava/lang/String;
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
