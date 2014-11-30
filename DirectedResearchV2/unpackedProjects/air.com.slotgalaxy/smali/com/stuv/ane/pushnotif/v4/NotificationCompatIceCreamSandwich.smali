.class Lcom/stuv/ane/pushnotif/v4/NotificationCompatIceCreamSandwich;
.super Ljava/lang/Object;
.source "NotificationCompatIceCreamSandwich.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentInfo"    # Ljava/lang/CharSequence;
    .param p5, "tickerView"    # Landroid/widget/RemoteViews;
    .param p6, "number"    # I
    .param p7, "contentIntent"    # Landroid/app/PendingIntent;
    .param p8, "fullScreenIntent"    # Landroid/app/PendingIntent;
    .param p9, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p10, "mProgressMax"    # I
    .param p11, "mProgress"    # I
    .param p12, "mProgressIndeterminate"    # Z

    .prologue
    .line 31
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    iget-wide v1, p1, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 33
    .end local p0    # "context":Landroid/content/Context;
    iget v0, p1, Landroid/app/Notification;->icon:I

    iget v1, p1, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 34
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 35
    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 36
    iget-object p5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .end local p5    # "tickerView":Landroid/widget/RemoteViews;
    iget v0, p1, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p0, p5, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 37
    iget-object p5, p1, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p0, p5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 38
    iget p5, p1, Landroid/app/Notification;->ledARGB:I

    iget v0, p1, Landroid/app/Notification;->ledOnMS:I

    iget v1, p1, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p0, p5, v0, v1}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 39
    iget p5, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    :goto_0
    invoke-virtual {p0, p5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 40
    iget p5, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    :goto_1
    invoke-virtual {p0, p5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 41
    iget p5, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    const/4 p5, 0x1

    :goto_2
    invoke-virtual {p0, p5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 42
    iget p5, p1, Landroid/app/Notification;->defaults:I

    invoke-virtual {p0, p5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 43
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 44
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 47
    iget-object p2, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .end local p2    # "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 49
    iget p1, p1, Landroid/app/Notification;->flags:I

    .end local p1    # "n":Landroid/app/Notification;
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 48
    :goto_3
    invoke-virtual {p0, p8, p1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 50
    invoke-virtual {p0, p9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0, p6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 52
    invoke-virtual {p0, p10, p11, p12}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 54
    .local p0, "b":Landroid/app/Notification$Builder;
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .end local p0    # "b":Landroid/app/Notification$Builder;
    return-object p0

    .line 39
    .restart local p1    # "n":Landroid/app/Notification;
    .restart local p2    # "contentTitle":Ljava/lang/CharSequence;
    :cond_0
    const/4 p5, 0x0

    goto :goto_0

    .line 40
    :cond_1
    const/4 p5, 0x0

    goto :goto_1

    .line 41
    :cond_2
    const/4 p5, 0x0

    goto :goto_2

    .line 49
    .end local p1    # "n":Landroid/app/Notification;
    .end local p2    # "contentTitle":Ljava/lang/CharSequence;
    :cond_3
    const/4 p1, 0x0

    goto :goto_3
.end method
