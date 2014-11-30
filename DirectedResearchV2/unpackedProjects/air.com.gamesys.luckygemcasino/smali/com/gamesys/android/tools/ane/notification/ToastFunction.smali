.class public Lcom/gamesys/android/tools/ane/notification/ToastFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "ToastFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/gamesys/android/tools/ane/notification/ToastFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/ToastFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
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

    const/4 v6, 0x1

    .line 34
    const-string v2, "n/a"

    .local v2, "message":Ljava/lang/String;
    const-string v0, ""

    .line 36
    .local v0, "duration":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    .line 38
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 40
    :goto_0
    array-length v5, p2

    if-le v5, v6, :cond_0

    .line 41
    const/4 v5, 0x1

    aget-object v5, p2, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 54
    :cond_0
    :goto_1
    const/4 v3, 0x0

    .line 55
    .local v3, "toastDuration":I
    const-string v5, "com.gamesys.android.ane.tools.TOAST_DURATION_SHORT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 56
    const/4 v3, 0x0

    .line 61
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 63
    return-object v4

    .end local v3    # "toastDuration":I
    :cond_2
    move-object v2, v4

    .line 38
    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 41
    goto :goto_1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/gamesys/android/tools/ane/notification/ToastFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 45
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 46
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v5, Lcom/gamesys/android/tools/ane/notification/ToastFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 47
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 48
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v5, Lcom/gamesys/android/tools/ane/notification/ToastFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 49
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 50
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v5, Lcom/gamesys/android/tools/ane/notification/ToastFunction;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve action script parameter"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 57
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v3    # "toastDuration":I
    :cond_4
    const-string v5, "com.gamesys.android.ane.tools.TOAST_DURATION_LONG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
