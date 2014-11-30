.class public Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "ReadStoredURIInfoFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 39
    const/4 v7, 0x0

    .line 40
    .local v7, "result":Lcom/adobe/fre/FREObject;
    const/4 v0, 0x0

    .line 42
    .local v0, "asClassName":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v8, p2

    if-lez v8, :cond_0

    .line 44
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p2, v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 57
    const-string v10, "AppEntry"

    .line 56
    invoke-static {v8, v9, v10}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 60
    .local v6, "prefs":Landroid/content/SharedPreferences;
    :try_start_1
    const-string v8, "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.APP"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 61
    .local v4, "freApp":Lcom/adobe/fre/FREObject;
    const-string v8, "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.ACTION"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 62
    .local v3, "freAction":Lcom/adobe/fre/FREObject;
    const-string v8, "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.EMAIL"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    .line 63
    .local v5, "freEmail":Lcom/adobe/fre/FREObject;
    const-string v8, "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.ACCESS_TOKEN"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    .line 65
    .local v2, "freAccessToken":Lcom/adobe/fre/FREObject;
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/adobe/fre/FREObject;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    invoke-static {v0, v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v7

    .line 79
    .end local v2    # "freAccessToken":Lcom/adobe/fre/FREObject;
    .end local v3    # "freAction":Lcom/adobe/fre/FREObject;
    .end local v4    # "freApp":Lcom/adobe/fre/FREObject;
    .end local v5    # "freEmail":Lcom/adobe/fre/FREObject;
    :goto_1
    return-object v7

    .line 44
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to retrieve action script parameter"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to retrieve action script parameter"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 50
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to retrieve action script parameter"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 52
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to retrieve action script parameter"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :catch_4
    move-exception v1

    .line 67
    .restart local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to convert the read URI info into a FRE object"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 68
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_5
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to convert the read URI info into a FRE object"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 70
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v1

    .line 71
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to convert the read URI info into a FRE object"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 72
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_7
    move-exception v1

    .line 73
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to convert the read URI info into a FRE object"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 74
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_8
    move-exception v1

    .line 75
    .local v1, "e":Lcom/adobe/fre/FREASErrorException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to convert the read URI info into a FRE object"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 76
    .end local v1    # "e":Lcom/adobe/fre/FREASErrorException;
    :catch_9
    move-exception v1

    .line 77
    .local v1, "e":Lcom/adobe/fre/FRENoSuchNameException;
    sget-object v8, Lcom/gamesys/android/tools/ane/misc/prefs/ReadStoredURIInfoFunction;->TAG:Ljava/lang/String;

    const-string v9, "Unable to convert the read URI info into a FRE object"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
