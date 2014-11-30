.class public Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;
.super Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;
.source "TestNotificationFunction.java"


# static fields
.field public static TEST_CM_JSON:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "{\"type\":\"notification\",\"content\":{\"icon_big_url\":\"http://127.0.0.1:8080/notif_icon.png\",\"icon_small_url\":\"http://127.0.0.1:8080/ticker_icon.png\",\"background_url\":\"http://127.0.0.1:8080/notif_bg.png\",\"ticker\":\"This notification is shown for the 1st time\",\"title\":\"New slots has been released\",\"message\":\"Come and play to the new slots\",\"id\":123456,\"title_text_size\":14,\"message_text_size\":12,\"title_color\":\"FF0000\",\"message_color\":\"FF00FF\"}}"

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;->TEST_CM_JSON:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;-><init>()V

    return-void
.end method

.method private static createTestNotification(Landroid/content/Context;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "ticker"    # Ljava/lang/String;
    .param p5, "titleTextSize"    # I
    .param p6, "messageTextSize"    # I
    .param p7, "titleColor"    # Ljava/lang/String;
    .param p8, "messageColor"    # Ljava/lang/String;
    .param p9, "id"    # I
    .param p10, "notif_icon_identifier"    # Ljava/lang/String;
    .param p11, "bg_identifier"    # Ljava/lang/String;
    .param p12, "ticker_icon_identifier"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 95
    .local v15, "notifIcon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 96
    .local v16, "notifBackground":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 98
    .local v17, "tickerIcon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 99
    .local v19, "metrics":Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Density is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v11, "46882"

    const/4 v13, 0x0

    const/16 v14, 0x4b

    .line 102
    const-string v18, "jpj"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v12, p9

    .line 101
    invoke-static/range {v2 .. v18}, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;->createNotification(Landroid/content/Context;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 15
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 50
    const-string v4, "n/a"

    .local v4, "message":Ljava/lang/String;
    const-string v3, ""

    .local v3, "title":Ljava/lang/String;
    const-string v5, ""

    .line 51
    .local v5, "ticker":Ljava/lang/String;
    const/4 v10, 0x1

    .line 52
    .local v10, "id":I
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v1, v0

    if-lez v1, :cond_0

    .line 54
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 55
    :goto_0
    const/4 v1, 0x1

    aget-object v1, p2, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 56
    :goto_1
    const/4 v1, 0x2

    aget-object v1, p2, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 57
    :goto_2
    const/4 v1, 0x3

    aget-object v1, p2, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    .line 68
    :cond_0
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v6, 0x12

    const/16 v7, 0xe

    const-string v8, "FFFFFF"

    const-string v9, "CCCCCC"

    .line 69
    const-string v11, "drawable.slots_icon96x96"

    const-string v12, "drawable.slots_background"

    const-string v13, "drawable.slots_icon96x96"

    move-object/from16 v2, p1

    .line 68
    invoke-static/range {v1 .. v13}, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;->createTestNotification(Landroid/content/Context;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    return-object v1

    .line 54
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 55
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 56
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 57
    :cond_4
    const/4 v10, 0x1

    goto :goto_3

    .line 58
    :catch_0
    move-exception v14

    .line 59
    .local v14, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve action script parameter"

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 60
    .end local v14    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v14

    .line 61
    .local v14, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve action script parameter"

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 62
    .end local v14    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v14

    .line 63
    .local v14, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve action script parameter"

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 64
    .end local v14    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v14

    .line 65
    .local v14, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/TestNotificationFunction;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve action script parameter"

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
