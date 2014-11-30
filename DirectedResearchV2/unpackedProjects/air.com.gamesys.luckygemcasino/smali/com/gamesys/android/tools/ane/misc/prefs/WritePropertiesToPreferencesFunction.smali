.class public Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "WritePropertiesToPreferencesFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 15
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 43
    const/4 v10, 0x0

    .line 44
    .local v10, "result":Lcom/adobe/fre/FREObject;
    const/4 v9, 0x0

    .local v9, "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 45
    .local v3, "activityName":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v13, v0

    const/4 v14, 0x3

    if-lt v13, v14, :cond_0

    .line 49
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, p2, v13

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 50
    :goto_0
    const/4 v13, 0x1

    aget-object v13, p2, v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 51
    :goto_1
    const/4 v13, 0x2

    aget-object v1, p2, v13

    check-cast v1, Lcom/adobe/fre/FREArray;

    .line 53
    .local v1, "a":Lcom/adobe/fre/FREArray;
    invoke-virtual {v1}, Lcom/adobe/fre/FREArray;->getLength()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v13

    long-to-int v2, v13

    .line 55
    .local v2, "aSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    add-int/lit8 v13, v5, 0x1

    if-lt v13, v2, :cond_3

    .line 77
    .end local v1    # "a":Lcom/adobe/fre/FREArray;
    .end local v2    # "aSize":I
    .end local v5    # "i":I
    :cond_0
    :goto_3
    check-cast p1, Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v9, v3, v8, v13}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->storeProperties(Lcom/gamesys/android/common/tools/fwk/AbstractContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 79
    return-object v10

    .line 49
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 50
    :cond_2
    const-string v3, "AppEntry"

    goto :goto_1

    .line 56
    .restart local v1    # "a":Lcom/adobe/fre/FREArray;
    .restart local v2    # "aSize":I
    .restart local v5    # "i":I
    :cond_3
    int-to-long v13, v5

    invoke-virtual {v1, v13, v14}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v6

    .line 57
    .local v6, "k":Lcom/adobe/fre/FREObject;
    add-int/lit8 v13, v5, 0x1

    int-to-long v13, v13

    invoke-virtual {v1, v13, v14}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v11

    .line 58
    .local v11, "v":Lcom/adobe/fre/FREObject;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "key":Ljava/lang/String;
    :goto_4
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "value":Ljava/lang/String;
    :goto_5
    if-eqz v7, :cond_4

    .line 62
    invoke-interface {v8, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_3

    .line 55
    :cond_4
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 58
    .end local v7    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 59
    .restart local v7    # "key":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 66
    .end local v1    # "a":Lcom/adobe/fre/FREArray;
    .end local v2    # "aSize":I
    .end local v5    # "i":I
    .end local v6    # "k":Lcom/adobe/fre/FREObject;
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "v":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v4

    .line 67
    .local v4, "e":Ljava/lang/IllegalStateException;
    sget-object v13, Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;->TAG:Ljava/lang/String;

    const-string v14, "Unable to retrieve action script parameter"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 68
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    .line 69
    .local v4, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v13, Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;->TAG:Ljava/lang/String;

    const-string v14, "Unable to retrieve action script parameter"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 70
    .end local v4    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v4

    .line 71
    .local v4, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v13, Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;->TAG:Ljava/lang/String;

    const-string v14, "Unable to retrieve action script parameter"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 72
    .end local v4    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v4

    .line 73
    .local v4, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v13, Lcom/gamesys/android/tools/ane/misc/prefs/WritePropertiesToPreferencesFunction;->TAG:Ljava/lang/String;

    const-string v14, "Unable to retrieve action script parameter"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
