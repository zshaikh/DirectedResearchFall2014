.class public Lcom/gamesys/android/tools/ane/file/UnzipFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "UnzipFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/gamesys/android/tools/ane/file/UnzipFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/file/UnzipFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x0

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 32
    .local v0, "ctx":Lcom/gamesys/android/tools/ane/ToolsContext;
    const/4 v3, 0x0

    .local v3, "source":Ljava/lang/String;
    const/4 v1, 0x0

    .line 33
    .local v1, "dest":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    .line 35
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 37
    :goto_0
    array-length v5, p2

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 38
    const/4 v5, 0x1

    aget-object v5, p2, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 51
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/gamesys/android/tools/ane/file/UnzipFunction$1;

    invoke-direct {v6, p0, v0}, Lcom/gamesys/android/tools/ane/file/UnzipFunction$1;-><init>(Lcom/gamesys/android/tools/ane/file/UnzipFunction;Lcom/gamesys/android/tools/ane/ToolsContext;)V

    invoke-static {v5, v3, v1, v6}, Lcom/gamesys/android/tools/ane/file/ZipUtility;->unZipFileAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/tools/ane/file/IAsyncListener;)V

    .line 66
    const-string v5, "com.gamesys.android.ane.tools.CODE_UNZIP_IN_PROGRESS"

    const-string v6, "com.gamesys.android.ane.tools.LEVEL_UNZIP_SUCCESS"

    invoke-virtual {v0, v5, v6}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-object v4

    :cond_1
    move-object v3, v4

    .line 35
    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 38
    goto :goto_1

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/gamesys/android/tools/ane/file/UnzipFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 42
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 43
    .local v2, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v5, Lcom/gamesys/android/tools/ane/file/UnzipFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 44
    .end local v2    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v2

    .line 45
    .local v2, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v5, Lcom/gamesys/android/tools/ane/file/UnzipFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 46
    .end local v2    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v2

    .line 47
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v5, Lcom/gamesys/android/tools/ane/file/UnzipFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method
