.class public Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "RatingFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;Lcom/gamesys/android/tools/ane/ToolsContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;->launchRatingIntent(Lcom/gamesys/android/tools/ane/ToolsContext;Ljava/lang/String;)V

    return-void
.end method

.method private launchRatingIntent(Lcom/gamesys/android/tools/ane/ToolsContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lcom/gamesys/android/tools/ane/ToolsContext;
    .param p2, "storeName"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/gamesys/android/common/tools/ToolsBox;->getAppStoreUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v0, "rateAppIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method private showRatingDialog(Lcom/gamesys/android/tools/ane/ToolsContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lcom/gamesys/android/tools/ane/ToolsContext;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "rateBtnText"    # Ljava/lang/String;
    .param p5, "remindMeBtnText"    # Ljava/lang/String;
    .param p6, "cancelBtnText"    # Ljava/lang/String;
    .param p7, "storeName"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction$1;

    invoke-direct {v2, p0, p1, p7}, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction$1;-><init>(Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;Lcom/gamesys/android/tools/ane/ToolsContext;Ljava/lang/String;)V

    invoke-virtual {v0, p4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    new-instance v2, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction$2;

    invoke-direct {v2, p0, p1}, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction$2;-><init>(Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;Lcom/gamesys/android/tools/ane/ToolsContext;)V

    invoke-virtual {v0, p6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v2, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction$3;

    invoke-direct {v2, p0, p1}, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction$3;-><init>(Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;Lcom/gamesys/android/tools/ane/ToolsContext;)V

    invoke-virtual {v0, p5, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 154
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 155
    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 51
    move-object v1, p1

    check-cast v1, Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 53
    .local v1, "tCtx":Lcom/gamesys/android/tools/ane/ToolsContext;
    const/4 v11, 0x0

    .line 54
    .local v11, "maxCall":I
    const/4 v3, 0x0

    .local v3, "dialogText":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "dialogTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "rateBtnText":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "remindMeBtnText":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cancelBtnText":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "appVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 55
    .local v7, "storeName":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v12, 0x8

    if-lt v0, v12, :cond_0

    .line 57
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v11

    .line 58
    :goto_0
    const/4 v0, 0x1

    aget-object v0, p2, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 59
    :goto_1
    const/4 v0, 0x2

    aget-object v0, p2, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 60
    :goto_2
    const/4 v0, 0x3

    aget-object v0, p2, v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 61
    :goto_3
    const/4 v0, 0x4

    aget-object v0, p2, v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 62
    :goto_4
    const/4 v0, 0x5

    aget-object v0, p2, v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 63
    :goto_5
    const/4 v0, 0x6

    aget-object v0, p2, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 64
    :goto_6
    const/4 v0, 0x7

    aget-object v0, p2, v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 77
    :cond_0
    :goto_7
    invoke-virtual {v1, v8}, Lcom/gamesys/android/tools/ane/ToolsContext;->setAppVersion(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lcom/gamesys/android/tools/ane/ToolsContext;->getRatingCount()I

    move-result v9

    .line 83
    .local v9, "currentCount":I
    if-lt v9, v11, :cond_a

    move-object v0, p0

    .line 85
    invoke-direct/range {v0 .. v7}, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;->showRatingDialog(Lcom/gamesys/android/tools/ane/ToolsContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v9, 0x0

    .line 96
    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    :goto_8
    if-lez v9, :cond_1

    .line 99
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v1, v0}, Lcom/gamesys/android/tools/ane/ToolsContext;->saveRatingCount(I)V

    .line 102
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 57
    .end local v9    # "currentCount":I
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 58
    :cond_3
    :try_start_1
    const-string v3, "Do you want to rate this application ?"

    goto :goto_1

    .line 59
    :cond_4
    const-string v2, "Rate this application"

    goto :goto_2

    .line 60
    :cond_5
    const-string v4, "Rate"

    goto :goto_3

    .line 61
    :cond_6
    const-string v5, "Remind Me Later"

    goto :goto_4

    .line 62
    :cond_7
    const-string v6, "No Thanks"

    goto :goto_5

    .line 63
    :cond_8
    const-string v8, "0.0.1"
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_6

    .line 64
    :cond_9
    const/4 v7, 0x0

    goto :goto_7

    .line 65
    :catch_0
    move-exception v10

    .line 66
    .local v10, "e":Ljava/lang/IllegalStateException;
    sget-object v0, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v0, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 67
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v10

    .line 68
    .local v10, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v0, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v0, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 69
    .end local v10    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v10

    .line 70
    .local v10, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v0, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v0, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 71
    .end local v10    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v10

    .line 72
    .local v10, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v0, Lcom/gamesys/android/tools/ane/misc/rate/RatingFunction;->TAG:Ljava/lang/String;

    const-string v12, "Unable to retrieve action script parameter"

    invoke-static {v0, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 91
    .end local v10    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v9    # "currentCount":I
    :cond_a
    check-cast p1, Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    add-int/lit8 v0, v9, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v12, "com.gamesys.android.ane.tools.LEVEL_RATING_CURRENT_COUNT"

    invoke-virtual {p1, v0, v12}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method
