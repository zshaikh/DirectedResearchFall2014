.class public Lcom/stuv/ane/pushnotif/LocalNotificationService;
.super Landroid/app/Service;
.source "LocalNotificationService.java"


# static fields
.field private static final COLOR_SEARCH_RECURSE_TIP:Ljava/lang/String; = "SOME_SAMPLE_TEXT"

.field private static NotifId:I

.field private static TAG:Ljava/lang/String;

.field private static customLayout:I

.field private static customLayoutDescription:I

.field private static customLayoutImage:I

.field private static customLayoutImageContainer:I

.field private static customLayoutTitle:I

.field private static notificationIcon:I

.field private static notification_text_color:Ljava/lang/Integer;

.field private static notification_text_size:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "c2dmBdcastRcvrLcl"

    sput-object v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    sput v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->NotifId:I

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_color:Ljava/lang/Integer;

    .line 40
    const/high16 v0, 0x41300000

    sput v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_size:F

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private extractColors(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    sget-object v4, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_color:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 229
    :goto_0
    return-void

    .line 219
    :cond_0
    :try_start_0
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 220
    .local v3, "ntf":Landroid/app/Notification;
    const-string v4, "SOME_SAMPLE_TEXT"

    const-string v5, "Utest"

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 221
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 222
    .local v2, "group":Landroid/widget/LinearLayout;
    iget-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, p1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 223
    .local v1, "event":Landroid/view/ViewGroup;
    invoke-direct {p0, p1, v1}, Lcom/stuv/ane/pushnotif/LocalNotificationService;->recurseGroup(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    .line 224
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v1    # "event":Landroid/view/ViewGroup;
    .end local v2    # "group":Landroid/widget/LinearLayout;
    .end local v3    # "ntf":Landroid/app/Notification;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const v4, 0x106000c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_color:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private recurseGroup(Landroid/content/Context;Landroid/view/ViewGroup;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gp"    # Landroid/view/ViewGroup;

    .prologue
    .line 186
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 187
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 208
    const/4 v6, 0x0

    :goto_1
    return v6

    .line 189
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 191
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 192
    .local v5, "text":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "szText":Ljava/lang/String;
    const-string v6, "SOME_SAMPLE_TEXT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_color:Ljava/lang/Integer;

    .line 196
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    sput v6, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_size:F

    .line 197
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 198
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 199
    .local v3, "systemWM":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 200
    sget v6, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_size:F

    iget v7, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v6, v7

    sput v6, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_size:F

    .line 201
    const/4 v6, 0x1

    goto :goto_1

    .line 203
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "systemWM":Landroid/view/WindowManager;
    .end local v4    # "szText":Ljava/lang/String;
    .end local v5    # "text":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 205
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v6}, Lcom/stuv/ane/pushnotif/LocalNotificationService;->recurseGroup(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    move-result v6

    goto :goto_1

    .line 187
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private registerResources(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v4, "drawable"

    const-string v3, "id"

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    const-string v1, "icon_status"

    invoke-static {v0, v4, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notificationIcon:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "notification"

    invoke-static {v0, v1, v2}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayout:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v1, "title"

    invoke-static {v0, v3, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutTitle:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v1, "text"

    invoke-static {v0, v3, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutDescription:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v1, "image"

    invoke-static {v0, v3, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutImageContainer:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    const-string v1, "app_icon"

    invoke-static {v0, v4, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutImage:I

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    :try_start_0
    const-string v26, "LocalNService"

    const-string v27, "registering resources"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct/range {p0 .. p1}, Lcom/stuv/ane/pushnotif/LocalNotificationService;->registerResources(Landroid/content/Context;)V

    .line 89
    const-string v26, "LocalNService"

    const-string v27, "extract colors"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct/range {p0 .. p1}, Lcom/stuv/ane/pushnotif/LocalNotificationService;->extractColors(Landroid/content/Context;)V

    .line 92
    sget-object v10, Lcom/stuv/ane/pushnotif/Extension;->context:Lcom/adobe/fre/FREContext;

    .line 94
    .local v10, "ctxt":Lcom/adobe/fre/FREContext;
    const-string v26, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 96
    .local v16, "nm":Landroid/app/NotificationManager;
    const-string v26, "LocalNService"

    const-string v27, "getting nm"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget v13, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notificationIcon:I

    .line 99
    .local v13, "icon":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 101
    .local v24, "when":J
    const-string v26, "LocalNService"

    const-string v27, "getting extra params"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v26, "parameters"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 104
    .local v20, "parameters":Ljava/lang/String;
    const/4 v12, 0x0

    .line 105
    .local v12, "facebookId":Ljava/lang/String;
    const/16 v19, 0x0

    .line 106
    .local v19, "object":Lorg/json/JSONObject;
    if-eqz v20, :cond_0

    .line 110
    :try_start_1
    new-instance v26, Lorg/json/JSONTokener;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v19, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :cond_0
    :goto_0
    if-eqz v19, :cond_1

    :try_start_2
    const-string v26, "facebookId"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 118
    const-string v26, "facebookId"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 121
    :cond_1
    const-string v26, "tickerText"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 122
    .local v22, "tickerText":Ljava/lang/CharSequence;
    const-string v26, "contentTitle"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "contentTitle":Ljava/lang/CharSequence;
    const-string v26, "contentText"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "contentText":Ljava/lang/CharSequence;
    const-string v26, "LocalNService"

    const-string v27, "creating intent"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v18, Landroid/content/Intent;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, ".AppEntry"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v18, "notificationIntent":Landroid/content/Intent;
    const-string v26, "LocalNService"

    const-string v27, "getting penging intent"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 132
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    const-string v26, "LocalNService"

    const-string v27, "getting notif"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v17, Landroid/app/Notification;

    move-object/from16 v0, v17

    move v1, v13

    move-object/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 135
    .local v17, "notification":Landroid/app/Notification;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x10

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 136
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v7

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 138
    const-string v26, "LocalNService"

    const-string v27, "creating remove view"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    sget v27, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayout:I

    move-object v0, v9

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v9, "contentView":Landroid/widget/RemoteViews;
    if-eqz v12, :cond_4

    .line 144
    sget-object v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->TAG:Ljava/lang/String;

    const-string v27, "bitmap not null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "http://graph.facebook.com/"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/picture"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 146
    .local v21, "src":Ljava/lang/String;
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    .local v23, "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 148
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const/16 v26, 0x1

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 149
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 150
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 151
    .local v14, "input":Ljava/io/InputStream;
    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 152
    .local v15, "myBitmap":Landroid/graphics/Bitmap;
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutImageContainer:I

    move-object v0, v9

    move/from16 v1, v26

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 159
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v15    # "myBitmap":Landroid/graphics/Bitmap;
    .end local v21    # "src":Ljava/lang/String;
    .end local v23    # "url":Ljava/net/URL;
    :goto_1
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutTitle:I

    move-object v0, v9

    move/from16 v1, v26

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 160
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutDescription:I

    move-object v0, v9

    move/from16 v1, v26

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 162
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutTitle:I

    sget-object v27, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_color:Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object v0, v9

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 163
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutTitle:I

    const-string v27, "setTextSize"

    sget v28, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_size:F

    move-object v0, v9

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 164
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutDescription:I

    sget-object v27, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_color:Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object v0, v9

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 165
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutDescription:I

    const-string v27, "setTextSize"

    sget v28, Lcom/stuv/ane/pushnotif/LocalNotificationService;->notification_text_size:F

    move-object v0, v9

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 167
    move-object v0, v9

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 168
    const-string v26, "LocalNService"

    const-string v27, "notifying"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->NotifId:I

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 171
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->NotifId:I

    add-int/lit8 v26, v26, 0x1

    sput v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->NotifId:I

    .line 173
    if-eqz v10, :cond_3

    .line 175
    if-nez v20, :cond_2

    const-string v26, ""

    move-object/from16 v20, v26

    .line 176
    :cond_2
    const-string v26, "COMING_FROM_NOTIFICATION"

    move-object v0, v10

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "contentText":Ljava/lang/CharSequence;
    .end local v8    # "contentTitle":Ljava/lang/CharSequence;
    .end local v9    # "contentView":Landroid/widget/RemoteViews;
    .end local v10    # "ctxt":Lcom/adobe/fre/FREContext;
    .end local v12    # "facebookId":Ljava/lang/String;
    .end local v13    # "icon":I
    .end local v16    # "nm":Landroid/app/NotificationManager;
    .end local v17    # "notification":Landroid/app/Notification;
    .end local v18    # "notificationIntent":Landroid/content/Intent;
    .end local v19    # "object":Lorg/json/JSONObject;
    .end local v20    # "parameters":Ljava/lang/String;
    .end local v22    # "tickerText":Ljava/lang/CharSequence;
    .end local v24    # "when":J
    :cond_3
    :goto_2
    return-void

    .line 111
    .restart local v10    # "ctxt":Lcom/adobe/fre/FREContext;
    .restart local v12    # "facebookId":Ljava/lang/String;
    .restart local v13    # "icon":I
    .restart local v16    # "nm":Landroid/app/NotificationManager;
    .restart local v19    # "object":Lorg/json/JSONObject;
    .restart local v20    # "parameters":Ljava/lang/String;
    .restart local v24    # "when":J
    :catch_0
    move-exception v26

    move-object/from16 v11, v26

    .line 113
    .local v11, "e":Ljava/lang/Exception;
    sget-object v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->TAG:Ljava/lang/String;

    const-string v27, "cannot parse the object"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 178
    .end local v10    # "ctxt":Lcom/adobe/fre/FREContext;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "facebookId":Ljava/lang/String;
    .end local v13    # "icon":I
    .end local v16    # "nm":Landroid/app/NotificationManager;
    .end local v19    # "object":Lorg/json/JSONObject;
    .end local v20    # "parameters":Ljava/lang/String;
    .end local v24    # "when":J
    :catch_1
    move-exception v26

    move-object/from16 v11, v26

    .line 180
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->TAG:Ljava/lang/String;

    const-string v27, "Error activating application:"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 155
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v7    # "contentText":Ljava/lang/CharSequence;
    .restart local v8    # "contentTitle":Ljava/lang/CharSequence;
    .restart local v9    # "contentView":Landroid/widget/RemoteViews;
    .restart local v10    # "ctxt":Lcom/adobe/fre/FREContext;
    .restart local v12    # "facebookId":Ljava/lang/String;
    .restart local v13    # "icon":I
    .restart local v16    # "nm":Landroid/app/NotificationManager;
    .restart local v17    # "notification":Landroid/app/Notification;
    .restart local v18    # "notificationIntent":Landroid/content/Intent;
    .restart local v19    # "object":Lorg/json/JSONObject;
    .restart local v20    # "parameters":Ljava/lang/String;
    .restart local v22    # "tickerText":Ljava/lang/CharSequence;
    .restart local v24    # "when":J
    :cond_4
    :try_start_3
    sget-object v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->TAG:Ljava/lang/String;

    const-string v27, "bitmap null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget v26, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutImageContainer:I

    sget v27, Lcom/stuv/ane/pushnotif/LocalNotificationService;->customLayoutImage:I

    move-object v0, v9

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const-string v2, "LocalNService"

    .line 49
    sget-object v0, Lcom/stuv/ane/pushnotif/Extension;->context:Lcom/adobe/fre/FREContext;

    .line 50
    .local v0, "context":Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "LocalNService"

    const-string v1, "context not null"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    invoke-virtual {p0, p0, p1}, Lcom/stuv/ane/pushnotif/LocalNotificationService;->handleMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    const/4 v1, 0x1

    return v1

    .line 55
    :cond_0
    const-string v1, "LocalNService"

    const-string v1, "context is null"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
