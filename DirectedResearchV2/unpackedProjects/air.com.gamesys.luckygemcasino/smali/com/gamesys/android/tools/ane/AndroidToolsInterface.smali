.class public Lcom/gamesys/android/tools/ane/AndroidToolsInterface;
.super Landroid/app/Activity;
.source "AndroidToolsInterface.java"


# static fields
.field public static final INTENT_KEY_ACTION_TO_DO:Ljava/lang/String; = "INTENT_KEY_ACTION_TO_DO"

.field public static final INTENT_KEY_ACTIVITY_NAME:Ljava/lang/String; = "INTENT_KEY_ACTIVITY_NAME"

.field public static final INTENT_KEY_PACKAGE_NAME:Ljava/lang/String; = "INTENT_KEY_PACKAGE_NAME"

.field public static final PREFERENCES_KEY_ACCESS_TOKEN:Ljava/lang/String; = "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.ACCESS_TOKEN"

.field public static final PREFERENCES_KEY_ACTION:Ljava/lang/String; = "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.ACTION"

.field public static final PREFERENCES_KEY_APP:Ljava/lang/String; = "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.APP"

.field public static final PREFERENCES_KEY_EMAIL:Ljava/lang/String; = "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.EMAIL"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private decideActionToDo(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    sget-object v2, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->TAG:Ljava/lang/String;

    const-string v3, "No intent found!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "scheme":Ljava/lang/String;
    sget-object v2, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheme detected : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->launchActivity(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private launchActivity(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 15
    .param p1, "rootPackage"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    sget-object v12, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to read the package name and/or the activity name to launch : {"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 101
    :cond_0
    move-object/from16 v3, p1

    .line 102
    .local v3, "actualPackageName":Ljava/lang/String;
    move-object/from16 v2, p2

    .line 105
    .local v2, "actualActivityName":Ljava/lang/String;
    :try_start_0
    const-string v12, "air."

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 106
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "air."

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    :cond_1
    if-nez v2, :cond_2

    .line 110
    const-string v2, "AppEntry"

    .line 113
    :cond_2
    const-string v12, "email_address"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "email":Ljava/lang/String;
    const-string v12, "access_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "accessToken":Ljava/lang/String;
    const-string v12, "flow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "flow":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    .line 117
    .local v11, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 118
    .local v10, "operation":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    .local v4, "app":Ljava/lang/String;
    sget-object v12, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "URI is : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v12, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "app="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", operation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", flow="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", email="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", acessToken="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v8, Ljava/util/HashMap;

    const/4 v12, 0x3

    const/high16 v13, 0x3f800000

    invoke-direct {v8, v12, v13}, Ljava/util/HashMap;-><init>(IF)V

    .line 124
    .local v8, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.APP"

    invoke-interface {v8, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v12, "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.ACTION"

    invoke-interface {v8, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v12, "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.EMAIL"

    invoke-interface {v8, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v12, "com.gamesys.android.ane.tools.AndroidToolsInterface.uri.ACCESS_TOKEN"

    invoke-interface {v8, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v3, v2, v8, v13}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->storeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 130
    new-instance v9, Landroid/content/Intent;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-direct {v9, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->startActivity(Landroid/content/Intent;)V

    .line 132
    sget-object v12, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Launching "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "accessToken":Ljava/lang/String;
    .end local v4    # "app":Ljava/lang/String;
    .end local v6    # "email":Ljava/lang/String;
    .end local v7    # "flow":Ljava/lang/String;
    .end local v8    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "operation":Ljava/lang/String;
    .end local v11    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->finish()V

    goto/16 :goto_0

    .line 134
    :catch_0
    move-exception v5

    .line 135
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    sget-object v12, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to find the activity "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gamesys/android/tools/ane/AndroidToolsInterface;->decideActionToDo(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
