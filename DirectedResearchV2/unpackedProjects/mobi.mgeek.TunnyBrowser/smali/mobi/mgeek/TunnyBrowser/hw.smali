.class Lmobi/mgeek/TunnyBrowser/hw;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"


# static fields
.field private static a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:J

.field private d:J

.field private e:Lmobi/mgeek/TunnyBrowser/hy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, -0x1

    sput-wide v0, Lmobi/mgeek/TunnyBrowser/hw;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/mgeek/TunnyBrowser/hy;Lmobi/mgeek/TunnyBrowser/hx;)V
    .locals 4

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->b:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/hw;->e:Lmobi/mgeek/TunnyBrowser/hy;

    .line 177
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hw;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->c:J

    .line 180
    iget-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->c:J

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-interface {p3}, Lmobi/mgeek/TunnyBrowser/hx;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->d:J

    .line 182
    return-void
.end method

.method static a(JJ)J
    .locals 8

    .prologue
    const-wide/32 v6, 0x100000

    const-wide/16 v0, 0x0

    .line 335
    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    cmp-long v2, p2, p0

    if-lez v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-wide v0

    .line 341
    :cond_1
    const/4 v2, 0x2

    div-long v3, p0, v6

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    shl-int/2addr v2, v3

    int-to-long v2, v2

    .line 344
    div-long v2, p0, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long v4, p2, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-long v2, v2

    .line 350
    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    .line 353
    rem-long v4, v2, v6

    cmp-long v4, v4, v0

    if-nez v4, :cond_2

    .line 354
    :goto_1
    div-long/2addr v2, v6

    add-long/2addr v0, v2

    mul-long/2addr v0, v6

    goto :goto_0

    .line 353
    :cond_2
    const-wide/16 v0, 0x1

    goto :goto_1
.end method

.method static b()V
    .locals 4

    .prologue
    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lmobi/mgeek/TunnyBrowser/hw;->a:J

    .line 323
    return-void
.end method

.method private c()J
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->e:Lmobi/mgeek/TunnyBrowser/hy;

    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/hy;->a()J

    move-result-wide v0

    .line 329
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hw;->e:Lmobi/mgeek/TunnyBrowser/hy;

    invoke-interface {v2}, Lmobi/mgeek/TunnyBrowser/hy;->b()J

    move-result-wide v2

    .line 330
    invoke-static {v2, v3, v0, v1}, Lmobi/mgeek/TunnyBrowser/hw;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 361
    const-string v0, "browser"

    const-string v1, "scheduleOutOfSpaceNotification called."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    sget-wide v0, Lmobi/mgeek/TunnyBrowser/hw;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lmobi/mgeek/TunnyBrowser/hw;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 369
    :cond_2
    const v0, 0x108008a

    .line 370
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hw;->b:Landroid/content/Context;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e06b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hw;->b:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e06b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 375
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lmobi/mgeek/TunnyBrowser/hw;->b:Landroid/content/Context;

    const-class v7, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    iget-object v6, p0, Lmobi/mgeek/TunnyBrowser/hw;->b:Landroid/content/Context;

    invoke-static {v6, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 378
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v0, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 379
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->b:Landroid/content/Context;

    invoke-virtual {v6, v0, v1, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 380
    iget v0, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/app/Notification;->flags:I

    .line 382
    const-string v0, "notification"

    .line 383
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hw;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lmobi/mgeek/TunnyBrowser/hw;->a:J

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->d:J

    return-wide v0
.end method

.method public a(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0x80000

    const-wide/16 v4, 0x0

    .line 288
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received onReachedMaxAppCacheSize with spaceNeeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->c:J

    sub-long/2addr v0, p3

    iget-wide v2, p0, Lmobi/mgeek/TunnyBrowser/hw;->d:J

    sub-long/2addr v0, v2

    .line 293
    add-long v2, p1, v6

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 296
    cmp-long v0, p3, v4

    if-lez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hw;->d()V

    .line 305
    :cond_0
    invoke-interface {p5, v4, v5}, Lcom/dolphin/browser/core/IWebStorage$QuotaUpdater;->updateQuota(J)V

    .line 306
    const-string v0, "browser"

    const-string v1, "onReachedMaxAppCacheSize: out of space."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->d:J

    add-long v2, p1, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->d:J

    .line 311
    iget-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->d:J

    invoke-interface {p5, v0, v1}, Lcom/dolphin/browser/core/IWebStorage$QuotaUpdater;->updateQuota(J)V

    .line 313
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReachedMaxAppCacheSize set new max size to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmobi/mgeek/TunnyBrowser/hw;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
    .locals 5

    .prologue
    .line 207
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received onExceededDatabaseQuota for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(current quota: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", total used quota: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-wide v0, p0, Lmobi/mgeek/TunnyBrowser/hw;->c:J

    sub-long/2addr v0, p7

    iget-wide v2, p0, Lmobi/mgeek/TunnyBrowser/hw;->d:J

    sub-long v2, v0, v2

    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 222
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_0

    .line 229
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hw;->d()V

    .line 231
    :cond_0
    invoke-interface {p9, p3, p4}, Lcom/dolphin/browser/core/IWebStorage$QuotaUpdater;->updateQuota(J)V

    .line 232
    const-string v0, "browser"

    const-string v1, "onExceededDatabaseQuota: out of space."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-void

    .line 238
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_4

    .line 243
    cmp-long v0, v2, p5

    if-ltz v0, :cond_3

    .line 271
    :cond_2
    :goto_1
    invoke-interface {p9, p5, p6}, Lcom/dolphin/browser/core/IWebStorage$QuotaUpdater;->updateQuota(J)V

    .line 273
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExceededDatabaseQuota set new quota to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_3
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExceededDatabaseQuota: Unable to satisfy estimatedSize for the new database  (estimatedSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", unused quota: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-wide/16 p5, 0x0

    goto :goto_1

    .line 260
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_5

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p5

    move-wide v0, p5

    .line 263
    :goto_2
    add-long p5, p3, v0

    .line 265
    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move-wide p5, p3

    .line 267
    goto :goto_1

    :cond_5
    move-wide v0, p5

    .line 260
    goto :goto_2
.end method
