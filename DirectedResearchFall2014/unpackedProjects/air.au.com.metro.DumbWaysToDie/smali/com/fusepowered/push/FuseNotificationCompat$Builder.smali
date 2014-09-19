.class public Lcom/fusepowered/push/FuseNotificationCompat$Builder;
.super Ljava/lang/Object;
.source "FuseNotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/push/FuseNotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/push/FuseNotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mUseChronometer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 218
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 221
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 222
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mPriority:I

    .line 224
    return-void
.end method

.method private setFlag(IZ)V
    .locals 3
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 520
    if-eqz p2, :cond_0

    .line 521
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 2
    .parameter "icon"
    .parameter "title"
    .parameter "intent"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/fusepowered/push/FuseNotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Lcom/fusepowered/push/FuseNotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/fusepowered/push/FuseNotificationCompat;->access$000()Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;->build(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    invoke-static {}, Lcom/fusepowered/push/FuseNotificationCompat;->access$000()Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;->build(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "autoCancel"

    .prologue
    .line 497
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setFlag(IZ)V

    .line 498
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "views"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 343
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "info"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 324
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "intent"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 356
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "text"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 292
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 284
    return-object p0
.end method

.method public setDefaults(I)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 2
    .parameter "defaults"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 513
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 516
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 368
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "intent"
    .parameter "highPriority"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 386
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setFlag(IZ)V

    .line 387
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "icon"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 415
    return-object p0
.end method

.method public setLights(III)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 5
    .parameter "argb"
    .parameter "onMs"
    .parameter "offMs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    iget-object v1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v1, Landroid/app/Notification;->ledARGB:I

    .line 457
    iget-object v1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v1, Landroid/app/Notification;->ledOnMS:I

    .line 458
    iget-object v1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v1, Landroid/app/Notification;->ledOffMS:I

    .line 459
    iget-object v1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOnMS:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOffMS:I

    if-eqz v1, :cond_1

    move v0, v4

    .line 460
    .local v0, showLights:Z
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, -0x2

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 462
    return-object p0

    .end local v0           #showLights:Z
    :cond_1
    move v0, v3

    .line 459
    goto :goto_0
.end method

.method public setNumber(I)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "number"

    .prologue
    .line 315
    iput p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNumber:I

    .line 316
    return-object p0
.end method

.method public setOngoing(Z)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "ongoing"

    .prologue
    .line 477
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setFlag(IZ)V

    .line 478
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "onlyAlertOnce"

    .prologue
    .line 486
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setFlag(IZ)V

    .line 487
    return-object p0
.end method

.method public setPriority(I)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "pri"

    .prologue
    .line 539
    iput p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mPriority:I

    .line 540
    return-object p0
.end method

.method public setProgress(IIZ)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 332
    iput p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgressMax:I

    .line 333
    iput p2, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgress:I

    .line 334
    iput-boolean p3, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 335
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 260
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "icon"
    .parameter "level"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 275
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 276
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 2
    .parameter "sound"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 423
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 424
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "sound"
    .parameter "streamType"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 435
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 436
    return-object p0
.end method

.method public setStyle(Lcom/fusepowered/push/FuseNotificationCompat$Style;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "style"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 574
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    .line 575
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    invoke-virtual {v0, p0}, Lcom/fusepowered/push/FuseNotificationCompat$Style;->setBuilder(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)V

    .line 579
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "text"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 306
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "tickerText"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 396
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "tickerText"
    .parameter "views"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 406
    iput-object p2, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 407
    return-object p0
.end method

.method public setUsesChronometer(Z)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 0
    .parameter "b"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mUseChronometer:Z

    .line 248
    return-object p0
.end method

.method public setVibrate([J)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "pattern"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 447
    return-object p0
.end method

.method public setWhen(J)Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    .locals 1
    .parameter "when"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 232
    return-object p0
.end method
