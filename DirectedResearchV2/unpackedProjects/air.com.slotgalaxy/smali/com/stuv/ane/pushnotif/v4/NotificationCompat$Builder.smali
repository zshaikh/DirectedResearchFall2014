.class public Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stuv/ane/pushnotif/v4/NotificationCompat;
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
            "Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;",
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

.field mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mUseChronometer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 216
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 219
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 220
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mPriority:I

    .line 222
    return-void
.end method

.method private setFlag(IZ)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 518
    if-eqz p2, :cond_0

    .line 519
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 593
    # getter for: Lcom/stuv/ane/pushnotif/v4/NotificationCompat;->IMPL:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat;->access$0()Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImpl;->build(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 585
    # getter for: Lcom/stuv/ane/pushnotif/v4/NotificationCompat;->IMPL:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat;->access$0()Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImpl;->build(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 495
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setFlag(IZ)V

    .line 496
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 341
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 322
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 354
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 290
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 282
    return-object p0
.end method

.method public setDefaults(I)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 511
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 514
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 366
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 383
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 384
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setFlag(IZ)V

    .line 385
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 413
    return-object p0
.end method

.method public setLights(III)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 5
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 454
    iget-object v1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v1, Landroid/app/Notification;->ledARGB:I

    .line 455
    iget-object v1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v1, Landroid/app/Notification;->ledOnMS:I

    .line 456
    iget-object v1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v1, Landroid/app/Notification;->ledOffMS:I

    .line 457
    iget-object v1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOnMS:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOffMS:I

    if-eqz v1, :cond_1

    move v0, v4

    .line 458
    .local v0, "showLights":Z
    :goto_0
    iget-object v1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, -0x2

    .line 459
    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    or-int/2addr v2, v3

    .line 458
    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 460
    return-object p0

    .end local v0    # "showLights":Z
    :cond_1
    move v0, v3

    .line 457
    goto :goto_0
.end method

.method public setNumber(I)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 313
    iput p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNumber:I

    .line 314
    return-object p0
.end method

.method public setOngoing(Z)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 475
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setFlag(IZ)V

    .line 476
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 484
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setFlag(IZ)V

    .line 485
    return-object p0
.end method

.method public setPriority(I)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 537
    iput p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mPriority:I

    .line 538
    return-object p0
.end method

.method public setProgress(IIZ)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 330
    iput p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mProgressMax:I

    .line 331
    iput p2, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mProgress:I

    .line 332
    iput-boolean p3, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 333
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 258
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 273
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 274
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 421
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 422
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 433
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 434
    return-object p0
.end method

.method public setStyle(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "style"    # Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 572
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    .line 573
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;->setBuilder(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)V

    .line 577
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 304
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 394
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 404
    iput-object p2, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 405
    return-object p0
.end method

.method public setUsesChronometer(Z)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mUseChronometer:Z

    .line 246
    return-object p0
.end method

.method public setVibrate([J)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 444
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 445
    return-object p0
.end method

.method public setWhen(J)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 229
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 230
    return-object p0
.end method
