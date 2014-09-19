.class Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplJellybean;
.super Ljava/lang/Object;
.source "FuseNotificationCompat.java"

# interfaces
.implements Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/push/FuseNotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)Landroid/app/Notification;
    .locals 21
    .parameter "b"

    .prologue
    .line 117
    new-instance v1, Lcom/fusepowered/push/FuseNotificationCompatJellybean;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNumber:I

    move v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object v11, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgressMax:I

    move v12, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgress:I

    move v13, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgressIndeterminate:Z

    move v14, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mUseChronometer:Z

    move v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mPriority:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/fusepowered/push/FuseNotificationCompatJellybean;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 122
    .local v1, jbBuilder:Lcom/fusepowered/push/FuseNotificationCompatJellybean;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fusepowered/push/FuseNotificationCompat$Action;

    .line 123
    .local v18, action:Lcom/fusepowered/push/FuseNotificationCompat$Action;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Action;->icon:I

    move v2, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/fusepowered/push/FuseNotificationCompatJellybean;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 125
    .end local v18           #action:Lcom/fusepowered/push/FuseNotificationCompat$Action;
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 126
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    move-object v2, v0

    instance-of v2, v2, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;

    if-eqz v2, :cond_2

    .line 127
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;

    .line 128
    .local v20, style:Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    move v3, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fusepowered/push/FuseNotificationCompatJellybean;->addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 148
    .end local v20           #style:Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/fusepowered/push/FuseNotificationCompatJellybean;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 132
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    move-object v2, v0

    instance-of v2, v2, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;

    if-eqz v2, :cond_3

    .line 133
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;

    .line 134
    .local v20, style:Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mSummaryTextSet:Z

    move v3, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fusepowered/push/FuseNotificationCompatJellybean;->addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 138
    .end local v20           #style:Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    move-object v2, v0

    instance-of v2, v2, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;

    if-eqz v2, :cond_1

    .line 139
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mStyle:Lcom/fusepowered/push/FuseNotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;

    .line 140
    .local v20, style:Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    move v3, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/fusepowered/push/FuseNotificationCompatJellybean;->addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
