.class public Landroid/support/v4/app/an;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Landroid/support/v4/app/au;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ak;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/an;->q:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    .line 218
    iput-object p1, p0, Landroid/support/v4/app/an;->a:Landroid/content/Context;

    .line 221
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 222
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/an;->j:I

    .line 224
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 520
    if-eqz p2, :cond_0

    .line 521
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Landroid/support/v4/app/aj;->a()Landroid/support/v4/app/ap;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/an;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/an;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 260
    return-object p0
.end method

.method public a(III)Landroid/support/v4/app/an;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 457
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 458
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 459
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_0

    move v0, v1

    .line 460
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iget-object v4, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int v0, v4, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 462
    return-object p0

    :cond_0
    move v0, v2

    .line 459
    goto :goto_0

    :cond_1
    move v1, v2

    .line 460
    goto :goto_1
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/an;
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Landroid/support/v4/app/an;->q:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/ak;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/ak;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    return-object p0
.end method

.method public a(J)Landroid/support/v4/app/an;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 232
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/an;
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Landroid/support/v4/app/an;->d:Landroid/app/PendingIntent;

    .line 356
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/an;
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Landroid/support/v4/app/an;->g:Landroid/graphics/Bitmap;

    .line 415
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroid/support/v4/app/an;
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 423
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 424
    return-object p0
.end method

.method public a(Landroid/support/v4/app/au;)Landroid/support/v4/app/an;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/support/v4/app/an;->l:Landroid/support/v4/app/au;

    if-eq v0, p1, :cond_0

    .line 574
    iput-object p1, p0, Landroid/support/v4/app/an;->l:Landroid/support/v4/app/au;

    .line 575
    iget-object v0, p0, Landroid/support/v4/app/an;->l:Landroid/support/v4/app/au;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Landroid/support/v4/app/an;->l:Landroid/support/v4/app/au;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/au;->a(Landroid/support/v4/app/an;)V

    .line 579
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Landroid/support/v4/app/an;->b:Ljava/lang/CharSequence;

    .line 284
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/an;
    .locals 1

    .prologue
    .line 497
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/an;->a(IZ)V

    .line 498
    return-object p0
.end method

.method public b(I)Landroid/support/v4/app/an;
    .locals 0

    .prologue
    .line 539
    iput p1, p0, Landroid/support/v4/app/an;->j:I

    .line 540
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Landroid/support/v4/app/an;->c:Ljava/lang/CharSequence;

    .line 292
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Landroid/support/v4/app/an;->m:Ljava/lang/CharSequence;

    .line 306
    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Landroid/support/v4/app/an;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v4/app/an;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 396
    return-object p0
.end method
