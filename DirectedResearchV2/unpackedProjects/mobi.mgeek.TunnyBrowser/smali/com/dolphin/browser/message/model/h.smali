.class public Lcom/dolphin/browser/message/model/h;
.super Lcom/dolphin/browser/message/model/a;
.source "Command.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/dolphin/browser/message/model/a;

.field private e:Lcom/dolphin/browser/message/model/a;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/message/model/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 371
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/h;->a:Ljava/lang/String;

    .line 372
    const-string v0, "description"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/h;->b:Ljava/lang/String;

    .line 373
    const-string v0, "clearable"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/message/model/h;->c:Z

    .line 374
    const-string v0, "clickAction"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickValue"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/message/model/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/message/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/h;->d:Lcom/dolphin/browser/message/model/a;

    .line 375
    const-string v0, "deleteAction"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteValue"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/message/model/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/message/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/h;->e:Lcom/dolphin/browser/message/model/a;

    .line 376
    const-string v0, "icon"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/h;->f:Ljava/lang/String;

    .line 377
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/dolphin/browser/message/model/a;Z)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 428
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/dolphin/browser/message/DialogActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    const-string v0, "is_deleting_intent"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    invoke-static {}, Lcom/dolphin/browser/message/model/a;->e()Lcom/dolphin/browser/message/model/a;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 432
    const-string v0, "command_action"

    invoke-virtual {p2}, Lcom/dolphin/browser/message/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v0, "command_value"

    invoke-virtual {p2}, Lcom/dolphin/browser/message/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/high16 v2, 0x8000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 436
    return-object v0

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/dolphin/browser/message/model/h;->d:Lcom/dolphin/browser/message/model/a;

    instance-of v0, v0, Lcom/dolphin/browser/message/model/j;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/dolphin/browser/message/model/h;->d:Lcom/dolphin/browser/message/model/a;

    check-cast v0, Lcom/dolphin/browser/message/model/j;

    .line 459
    invoke-static {v0}, Lcom/dolphin/browser/message/model/j;->a(Lcom/dolphin/browser/message/model/j;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lcom/dolphin/browser/util/cr;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    const-string v1, "http://now.dolphin.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-static {}, Lcom/dolphin/browser/message/g;->a()Lcom/dolphin/browser/message/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/dolphin/browser/message/model/h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 389
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/message/model/h;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_5

    .line 392
    :try_start_1
    const-string v1, "temp_notification_icon"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 393
    iget-object v2, p0, Lcom/dolphin/browser/message/model/h;->f:Ljava/lang/String;

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZ)Z

    move-result v2

    .line 394
    if-eqz v2, :cond_1

    .line 395
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move-object v1, v0

    .line 404
    :goto_1
    :try_start_2
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 405
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 406
    sget v3, Lcom/dolphin/browser/core/R$drawable;->notification_icon:I

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 407
    iget-object v3, p0, Lcom/dolphin/browser/message/model/h;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/browser/message/model/h;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/message/model/h;->d:Lcom/dolphin/browser/message/model/a;

    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6}, Lcom/dolphin/browser/message/model/h;->a(Landroid/content/Context;Lcom/dolphin/browser/message/model/a;Z)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 409
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 410
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x1020006

    const-string v5, "setImageBitmap"

    invoke-virtual {v3, v4, v5, v1}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 412
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 413
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 414
    iget-boolean v1, p0, Lcom/dolphin/browser/message/model/h;->c:Z

    if-nez v1, :cond_4

    .line 415
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 417
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/message/model/h;->e:Lcom/dolphin/browser/message/model/a;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Lcom/dolphin/browser/message/model/h;->a(Landroid/content/Context;Lcom/dolphin/browser/message/model/a;Z)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 418
    const/4 v1, 0x0

    iput v1, v2, Landroid/app/Notification;->defaults:I

    .line 419
    const/4 v1, 0x0

    iput-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 420
    const v1, 0x19870415

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 424
    :goto_2
    invoke-virtual {p0}, Lcom/dolphin/browser/message/model/h;->d()V

    goto/16 :goto_0

    .line 400
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 421
    :catch_1
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method
