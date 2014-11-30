.class Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImplJellybean;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stuv/ane/pushnotif/v4/NotificationCompat;
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
.method public build(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 20
    .param p1, "b"    # Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .prologue
    .line 117
    new-instance v1, Lcom/stuv/ane/pushnotif/v4/NotificationCompatJellybean;

    .line 118
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object v6, v0

    .line 119
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNumber:I

    move v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object v11, v0

    .line 120
    move-object/from16 v0, p1

    iget v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mProgressMax:I

    move v12, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mProgress:I

    move v13, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move v14, v0

    .line 121
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mUseChronometer:Z

    move v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mPriority:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 117
    invoke-direct/range {v1 .. v17}, Lcom/stuv/ane/pushnotif/v4/NotificationCompatJellybean;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 122
    .local v1, "jbBuilder":Lcom/stuv/ane/pushnotif/v4/NotificationCompatJellybean;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 126
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    move-object v2, v0

    instance-of v2, v2, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;

    if-eqz v2, :cond_2

    .line 127
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    move-object/from16 v19, v0

    check-cast v19, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;

    .line 128
    .local v19, "style":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object v2, v0

    .line 129
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    move v3, v0

    .line 130
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object v4, v0

    .line 131
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    move-object v5, v0

    .line 128
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/stuv/ane/pushnotif/v4/NotificationCompatJellybean;->addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 146
    .end local v19    # "style":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompatJellybean;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 122
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;

    .line 123
    .local v18, "action":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;->icon:I

    move v3, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object v5, v0

    invoke-virtual {v1, v3, v4, v5}, Lcom/stuv/ane/pushnotif/v4/NotificationCompatJellybean;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 132
    .end local v18    # "action":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    move-object v2, v0

    instance-of v2, v2, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$InboxStyle;

    if-eqz v2, :cond_3

    .line 133
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    move-object/from16 v19, v0

    check-cast v19, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$InboxStyle;

    .line 134
    .local v19, "style":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$InboxStyle;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object v2, v0

    .line 135
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    move v3, v0

    .line 136
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object v4, v0

    .line 137
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    move-object v5, v0

    .line 134
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/stuv/ane/pushnotif/v4/NotificationCompatJellybean;->addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 138
    .end local v19    # "style":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$InboxStyle;
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    move-object v2, v0

    instance-of v2, v2, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;

    if-eqz v2, :cond_0

    .line 139
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mStyle:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;

    move-object/from16 v19, v0

    check-cast v19, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;

    .line 140
    .local v19, "style":Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object v2, v0

    .line 141
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    move v3, v0

    .line 142
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object v4, v0

    .line 143
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 140
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/stuv/ane/pushnotif/v4/NotificationCompatJellybean;->addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
