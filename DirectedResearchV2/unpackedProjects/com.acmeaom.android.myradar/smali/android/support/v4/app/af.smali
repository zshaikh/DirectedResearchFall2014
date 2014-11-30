.class public Landroid/support/v4/app/af;
.super Ljava/lang/Object;
.source "ProGuard"


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

.field l:Landroid/support/v4/app/am;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;

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

    iput-object v0, p0, Landroid/support/v4/app/af;->q:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    .line 218
    iput-object p1, p0, Landroid/support/v4/app/af;->a:Landroid/content/Context;

    .line 221
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 222
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/af;->j:I

    .line 224
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Landroid/support/v4/app/ab;->a()Landroid/support/v4/app/ah;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/af;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/af;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 260
    return-object p0
.end method

.method public a(J)Landroid/support/v4/app/af;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 232
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/af;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Landroid/support/v4/app/af;->b:Ljava/lang/CharSequence;

    .line 284
    return-object p0
.end method
