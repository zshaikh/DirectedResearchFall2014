.class Lcom/dolphin/browser/downloads/f;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# instance fields
.field a:Landroid/content/Context;

.field public b:Landroid/app/NotificationManager;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/downloads/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/dolphin/browser/downloads/f;->b:Landroid/app/NotificationManager;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/f;->c:Ljava/util/List;

    .line 68
    return-void
.end method

.method private b()V
    .locals 12

    .prologue
    const v11, 0x1080081

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/downloads/g;

    .line 87
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 88
    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 90
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/f;->d()Landroid/widget/RemoteViews;

    move-result-object v6

    .line 92
    sget v1, Lcom/dolphin/browser/downloads/R$id;->title:I

    iget-object v7, v0, Lcom/dolphin/browser/downloads/g;->e:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 93
    sget v7, Lcom/dolphin/browser/downloads/R$id;->progress_bar:I

    iget v8, v0, Lcom/dolphin/browser/downloads/g;->c:I

    iget v9, v0, Lcom/dolphin/browser/downloads/g;->b:I

    iget v1, v0, Lcom/dolphin/browser/downloads/g;->c:I

    const/4 v10, -0x1

    if-ne v1, v10, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    iget-object v7, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    iget v8, v0, Lcom/dolphin/browser/downloads/g;->b:I

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v7, v0, Lcom/dolphin/browser/downloads/g;->c:I

    if-lez v7, :cond_2

    .line 98
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v7, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    iget v8, v0, Lcom/dolphin/browser/downloads/g;->c:I

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_2
    sget v7, Lcom/dolphin/browser/downloads/R$id;->progress_text:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    iget v1, v0, Lcom/dolphin/browser/downloads/g;->h:I

    if-ne v1, v2, :cond_5

    .line 104
    const v1, 0x1080082

    iput v1, v5, Landroid/app/Notification;->icon:I

    .line 105
    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    sget v7, Lcom/dolphin/browser/downloads/R$string;->download_paused:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 118
    :goto_2
    sget v7, Lcom/dolphin/browser/downloads/R$id;->status_text:I

    invoke-virtual {v6, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    sget v1, Lcom/dolphin/browser/downloads/R$id;->appIcon:I

    invoke-virtual {v6, v1, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-ge v1, v7, :cond_3

    invoke-direct {p0}, Lcom/dolphin/browser/downloads/f;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    sget v1, Lcom/dolphin/browser/downloads/R$id;->appIcon:I

    const-string v7, "setBackgroundResource"

    const v8, 0x1080005

    invoke-virtual {v6, v1, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 123
    :cond_3
    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v6, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    const-class v7, Lcom/dolphin/browser/downloads/DownloadReceiver;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/dolphin/browser/downloads/g;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    iget-object v6, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-static {v6, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 131
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 132
    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->b:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/dolphin/browser/downloads/g;->a:I

    invoke-virtual {v1, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 93
    goto/16 :goto_1

    .line 107
    :cond_5
    iput v11, v5, Landroid/app/Notification;->icon:I

    .line 108
    iget v1, v0, Lcom/dolphin/browser/downloads/g;->f:I

    const/16 v7, 0xbe

    if-ne v1, v7, :cond_6

    .line 109
    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    sget v7, Lcom/dolphin/browser/downloads/R$string;->download_waiting:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    .line 110
    :cond_6
    iget v1, v0, Lcom/dolphin/browser/downloads/g;->f:I

    const/16 v7, 0xbf

    if-ne v1, v7, :cond_7

    .line 111
    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    sget v7, Lcom/dolphin/browser/downloads/R$string;->download_waiting:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_2

    .line 112
    :cond_7
    iget v1, v0, Lcom/dolphin/browser/downloads/g;->f:I

    const/16 v7, 0xc1

    if-ne v1, v7, :cond_8

    .line 113
    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    sget v7, Lcom/dolphin/browser/downloads/R$string;->download_waiting:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_2

    .line 115
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    iget-wide v8, v0, Lcom/dolphin/browser/downloads/g;->g:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/s"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method private c()Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "hint"

    aput-object v3, v2, v7

    const-string v3, "description"

    aput-object v3, v2, v4

    const-string v3, "current_bytes"

    aput-object v3, v2, v5

    const-string v3, "total_bytes"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "speed"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "control"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "(status >= \'100\') AND (status <= \'199\') AND (visibility IS NULL OR visibility == \'0\' OR visibility == \'1\')"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 148
    if-nez v1, :cond_0

    move v0, v6

    .line 193
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dolphin/browser/downloads/R$string;->download_unknown_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    new-instance v2, Lcom/dolphin/browser/downloads/g;

    invoke-direct {v2}, Lcom/dolphin/browser/downloads/g;-><init>()V

    .line 175
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Lcom/dolphin/browser/downloads/g;->a:I

    .line 176
    iput-object v0, v2, Lcom/dolphin/browser/downloads/g;->e:Ljava/lang/String;

    .line 177
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/dolphin/browser/downloads/g;->d:Ljava/lang/String;

    .line 178
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/dolphin/browser/downloads/g;->b:I

    .line 179
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/dolphin/browser/downloads/g;->c:I

    .line 180
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/dolphin/browser/downloads/g;->f:I

    .line 181
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, v2, Lcom/dolphin/browser/downloads/g;->g:J

    .line 182
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/dolphin/browser/downloads/g;->h:I

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :goto_2
    throw v0

    .line 187
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    move v0, v7

    .line 193
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private d()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 201
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/downloads/R$layout;->status_bar_ongoing_event_progress_bar:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/downloads/R$layout;->status_bar_ongoing_event_progress_bar_belowgingerbread:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 208
    new-instance v1, Lcom/dolphin/browser/downloads/c;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/downloads/c;-><init>(Landroid/content/Context;)V

    .line 209
    sget v2, Lcom/dolphin/browser/downloads/R$id;->title:I

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 210
    sget v2, Lcom/dolphin/browser/downloads/R$id;->progress_text:I

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 211
    sget v2, Lcom/dolphin/browser/downloads/R$id;->status_text:I

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 212
    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->c()F

    move-result v2

    .line 213
    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2

    .line 214
    sget v2, Lcom/dolphin/browser/downloads/R$id;->title:I

    const-string v3, "setTextSize"

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->c()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 216
    :cond_2
    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->d()F

    move-result v2

    .line 217
    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 218
    sget v2, Lcom/dolphin/browser/downloads/R$id;->progress_text:I

    const-string v3, "setTextSize"

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->d()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 219
    sget v2, Lcom/dolphin/browser/downloads/R$id;->status_text:I

    const-string v3, "setTextSize"

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->d()F

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_0
.end method

.method private e()V
    .locals 10

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "hint"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "notificationpackage"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "notificationclass"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "current_bytes"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "total_bytes"

    aput-object v4, v2, v3

    const-string v3, "status"

    aput-object v3, v2, v6

    const-string v3, "lastmod"

    aput-object v3, v2, v7

    const-string v3, "destination"

    aput-object v3, v2, v8

    const/16 v3, 0xa

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "status >= \'200\' AND visibility == \'1\'"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 238
    if-nez v3, :cond_0

    .line 302
    :goto_0
    return-void

    .line 251
    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 254
    const v0, 0x1080082

    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 256
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 257
    const/16 v0, 0xa

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/downloads/R$string;->download_unknown_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 264
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 267
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/downloads/R$string;->notification_download_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    :goto_3
    iget-object v6, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    const-class v7, Lcom/dolphin/browser/downloads/DownloadReceiver;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    iget-object v6, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, v6, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/downloads/DownloadReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 287
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 290
    const/16 v0, 0x8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Landroid/app/Notification;->when:J

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 251
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :goto_4
    throw v0

    .line 272
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/dolphin/browser/downloads/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/downloads/R$string;->notification_download_complete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    const/16 v0, 0x9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_OPEN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 277
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 296
    :cond_3
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 297
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_4
    move-object v2, v0

    goto/16 :goto_2
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 320
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 321
    const-string v1, "MIUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/f;->b()V

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/f;->e()V

    .line 76
    return-void
.end method
