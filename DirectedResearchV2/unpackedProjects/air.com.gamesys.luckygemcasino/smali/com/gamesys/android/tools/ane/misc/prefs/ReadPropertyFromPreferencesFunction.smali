.class public Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "ReadPropertyFromPreferencesFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 40
    const/4 v5, 0x0

    .line 41
    .local v5, "result":Lcom/adobe/fre/FREObject;
    const/4 v3, 0x0

    .local v3, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "activityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 43
    .local v2, "keyName":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v6, p2

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 45
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 46
    :goto_0
    const/4 v6, 0x1

    aget-object v6, p2, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_1
    const/4 v6, 0x2

    aget-object v6, p2, v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 60
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v0}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 62
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v4, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 67
    :goto_3
    return-object v5

    .line 45
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "AppEntry"

    goto :goto_1

    .line 47
    :cond_3
    const-string v2, ""
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 51
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 53
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    .line 54
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 55
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    .line 56
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 63
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :catch_4
    move-exception v1

    .line 64
    .restart local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/prefs/ReadPropertyFromPreferencesFunction;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to convert the read value into a FRE object for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
