.class public Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMBroadcastReceiver.java"


# static fields
.field private static final COLOR_SEARCH_RECURSE_TIP:Ljava/lang/String; = "SOME_SAMPLE_TEXT"

.field private static TAG:Ljava/lang/String;

.field private static customLayout:I

.field private static customLayoutDescription:I

.field private static customLayoutImage:I

.field private static customLayoutImageContainer:I

.field private static customLayoutTitle:I

.field private static instance:Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;

.field private static notificationIcon:I

.field private static notification_description_size_factor:F

.field private static notification_text_color:Ljava/lang/Integer;

.field private static notification_text_size:F

.field private static notification_title_size_factor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "c2dmBdcastRcvr"

    sput-object v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_text_color:Ljava/lang/Integer;

    .line 39
    const/high16 v0, 0x3f800000

    sput v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_title_size_factor:F

    .line 40
    const v0, 0x3f4ccccd

    sput v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_description_size_factor:F

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    sget-object v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Broadcast receiver started!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method private extractColors(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    sget-object v4, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_text_color:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 222
    .local v3, "ntf":Landroid/app/Notification;
    const-string v4, "SOME_SAMPLE_TEXT"

    const-string v5, "Utest"

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 223
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 224
    .local v2, "group":Landroid/widget/LinearLayout;
    iget-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, p1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 225
    .local v1, "event":Landroid/view/ViewGroup;
    invoke-direct {p0, p1, v1}, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->recurseGroup(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    .line 226
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v1    # "event":Landroid/view/ViewGroup;
    .end local v2    # "group":Landroid/widget/LinearLayout;
    .end local v3    # "ntf":Landroid/app/Notification;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const v4, 0x106000c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_text_color:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static getInstance()Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->instance:Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->instance:Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;

    invoke-direct {v0}, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;-><init>()V

    goto :goto_0
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v6, "unregistered"

    const-string v4, "error"

    .line 68
    sget-object v1, Lcom/stuv/ane/pushnotif/Extension;->context:Lcom/adobe/fre/FREContext;

    .line 69
    .local v1, "freContext":Lcom/adobe/fre/FREContext;
    const-string v3, "registration_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "registration":Ljava/lang/String;
    const-string v3, "error"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    const-string v3, "error"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "error":Ljava/lang/String;
    sget-object v3, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Registration failed with error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz v1, :cond_0

    .line 76
    const-string v3, "TOKEN_FAIL"

    invoke-virtual {v1, v3, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v3, "unregistered"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 79
    sget-object v3, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unregistered successfully "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz v1, :cond_0

    .line 81
    const-string v3, "UNREGISTERED"

    const-string v4, "unregistered"

    invoke-virtual {v1, v3, v6}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    if-eqz v2, :cond_0

    .line 84
    sget-object v3, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Registered successfully "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const-string v3, "TOKEN_SUCCESS"

    invoke-virtual {v1, v3, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recurseGroup(Landroid/content/Context;Landroid/view/ViewGroup;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gp"    # Landroid/view/ViewGroup;

    .prologue
    .line 188
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 189
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 210
    const/4 v6, 0x0

    :goto_1
    return v6

    .line 191
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 193
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 194
    .local v5, "text":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "szText":Ljava/lang/String;
    const-string v6, "SOME_SAMPLE_TEXT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_text_color:Ljava/lang/Integer;

    .line 198
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    sput v6, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_text_size:F

    .line 199
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 201
    .local v3, "systemWM":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 202
    sget v6, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_text_size:F

    iget v7, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v6, v7

    sput v6, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notification_text_size:F

    .line 203
    const/4 v6, 0x1

    goto :goto_1

    .line 205
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "systemWM":Landroid/view/WindowManager;
    .end local v4    # "szText":Ljava/lang/String;
    .end local v5    # "text":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 207
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v6}, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->recurseGroup(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    move-result v6

    goto :goto_1

    .line 189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static registerResources(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v4, "drawable"

    const-string v3, "id"

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    const-string v1, "icon_status"

    invoke-static {v0, v4, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notificationIcon:I

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "notification"

    invoke-static {v0, v1, v2}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->customLayout:I

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v1, "title"

    invoke-static {v0, v3, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->customLayoutTitle:I

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v1, "text"

    invoke-static {v0, v3, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->customLayoutDescription:I

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v1, "image"

    invoke-static {v0, v3, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->customLayoutImageContainer:I

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    const-string v1, "app_icon"

    invoke-static {v0, v4, v1}, Lcom/stuv/ane/pushnotif/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->customLayoutImage:I

    .line 98
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->registerResources(Landroid/content/Context;)V

    .line 105
    invoke-direct/range {p0 .. p1}, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->extractColors(Landroid/content/Context;)V

    .line 107
    sget-object v9, Lcom/stuv/ane/pushnotif/Extension;->context:Lcom/adobe/fre/FREContext;

    .line 109
    .local v9, "ctxt":Lcom/adobe/fre/FREContext;
    const-string v23, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 111
    .local v13, "nm":Landroid/app/NotificationManager;
    sget v12, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notificationIcon:I

    .line 112
    .local v12, "icon":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 114
    .local v21, "when":J
    const-string v23, "parameters"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 115
    .local v18, "parameters":Ljava/lang/String;
    const/4 v11, 0x0

    .line 116
    .local v11, "facebookId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 117
    .local v17, "object":Lorg/json/JSONObject;
    if-eqz v18, :cond_0

    .line 120
    sget-object v23, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Parameters: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :try_start_1
    new-instance v23, Lorg/json/JSONTokener;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :cond_0
    :goto_0
    :try_start_2
    const-string v23, "tickerText"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 133
    .local v19, "tickerText":Ljava/lang/CharSequence;
    const-string v23, "contentTitle"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "contentTitle":Ljava/lang/CharSequence;
    const-string v23, "contentText"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "contentText":Ljava/lang/CharSequence;
    const-string v23, "contentTitle"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "contentTitleString":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, ".AppEntry"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v16, "notificationIntent":Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v16

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 143
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v4, "builder":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    invoke-virtual {v4, v7}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 147
    invoke-virtual {v4, v6}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 149
    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 151
    sget v23, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->notificationIcon:I

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setSmallIcon(I)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->customLayoutImage:I

    invoke-static/range {v23 .. v24}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 155
    invoke-virtual {v4, v5}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 157
    const/16 v23, 0x1

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 159
    const/16 v23, 0x0

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setPriority(I)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 161
    invoke-virtual {v4}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    .line 163
    .local v15, "notification":Landroid/app/Notification;
    new-instance v20, Ljava/util/zip/CRC32;

    invoke-direct/range {v20 .. v20}, Ljava/util/zip/CRC32;-><init>()V

    .line 165
    .local v20, "titleCrc":Ljava/util/zip/CRC32;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 167
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move v14, v0

    .line 169
    .local v14, "notifId":I
    invoke-virtual {v13, v14, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 171
    sget-object v23, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "D notifIf "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v23, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "E ctxt "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz v9, :cond_2

    .line 176
    if-nez v18, :cond_1

    const-string v23, ""

    move-object/from16 v18, v23

    .line 177
    :cond_1
    const-string v23, "COMING_FROM_NOTIFICATION"

    move-object v0, v9

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_2
    sget-object v23, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v24, "F tickerText"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v4    # "builder":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v6    # "contentText":Ljava/lang/CharSequence;
    .end local v7    # "contentTitle":Ljava/lang/CharSequence;
    .end local v8    # "contentTitleString":Ljava/lang/String;
    .end local v9    # "ctxt":Lcom/adobe/fre/FREContext;
    .end local v11    # "facebookId":Ljava/lang/String;
    .end local v12    # "icon":I
    .end local v13    # "nm":Landroid/app/NotificationManager;
    .end local v14    # "notifId":I
    .end local v15    # "notification":Landroid/app/Notification;
    .end local v16    # "notificationIntent":Landroid/content/Intent;
    .end local v17    # "object":Lorg/json/JSONObject;
    .end local v18    # "parameters":Ljava/lang/String;
    .end local v19    # "tickerText":Ljava/lang/CharSequence;
    .end local v20    # "titleCrc":Ljava/util/zip/CRC32;
    .end local v21    # "when":J
    :goto_1
    return-void

    .line 125
    .restart local v9    # "ctxt":Lcom/adobe/fre/FREContext;
    .restart local v11    # "facebookId":Ljava/lang/String;
    .restart local v12    # "icon":I
    .restart local v13    # "nm":Landroid/app/NotificationManager;
    .restart local v17    # "object":Lorg/json/JSONObject;
    .restart local v18    # "parameters":Ljava/lang/String;
    .restart local v21    # "when":J
    :catch_0
    move-exception v23

    move-object/from16 v10, v23

    .line 127
    .local v10, "e":Ljava/lang/Exception;
    sget-object v23, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v24, "cannot parse the object"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 180
    .end local v9    # "ctxt":Lcom/adobe/fre/FREContext;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "facebookId":Ljava/lang/String;
    .end local v12    # "icon":I
    .end local v13    # "nm":Landroid/app/NotificationManager;
    .end local v17    # "object":Lorg/json/JSONObject;
    .end local v18    # "parameters":Ljava/lang/String;
    .end local v21    # "when":J
    :catch_1
    move-exception v23

    move-object/from16 v10, v23

    .line 182
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v23, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v24, "Error activating application:"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/stuv/ane/pushnotif/Extension;->isInForeground:Z

    if-nez v0, :cond_0

    .line 59
    const-string v0, "send_log_from_time"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/stuv/ane/pushnotif/C2DMBroadcastReceiver;->handleMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
