.class public Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "ShowIndeterminateProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v6, 0x1

    .line 33
    move-object v4, p1

    check-cast v4, Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .line 35
    .local v4, "tCtx":Lcom/gamesys/android/common/tools/fwk/AbstractContext;
    const/4 v0, 0x0

    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "dialogText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 36
    .local v2, "dialogTitle":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lt v5, v6, :cond_0

    .line 38
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    array-length v5, p2

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 41
    const/4 v5, 0x1

    aget-object v5, p2, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 42
    :goto_1
    const/4 v5, 0x2

    aget-object v5, p2, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 55
    :cond_0
    :goto_2
    invoke-virtual {v4, v0, v2, v1}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->performProgressDialogAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v5, 0x0

    return-object v5

    .line 38
    :cond_1
    :try_start_1
    const-string v0, "com.gamesys.android.ane.tools.PROGRESS_DIALOG_ACTION_HIDE"

    goto :goto_0

    .line 41
    :cond_2
    const-string v2, "Please Wait"

    goto :goto_1

    .line 42
    :cond_3
    const-string v1, "Your game is being restored..."
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 44
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 46
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 47
    .local v3, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v5, Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 48
    .end local v3    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v3

    .line 49
    .local v3, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v5, Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 50
    .end local v3    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v3

    .line 51
    .local v3, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v5, Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
