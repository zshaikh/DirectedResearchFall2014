.class public Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;
.super Lcom/fusepowered/push/FuseNotificationCompat$Style;
.source "FuseNotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/push/FuseNotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field mBigLargeIcon:Landroid/graphics/Bitmap;

.field mBigLargeIconSet:Z

.field mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/fusepowered/push/FuseNotificationCompat$Style;-><init>()V

    .line 657
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/fusepowered/push/FuseNotificationCompat$Style;-><init>()V

    .line 660
    invoke-virtual {p0, p1}, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->setBuilder(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)V

    .line 661
    return-void
.end method


# virtual methods
.method public bigLargeIcon(Landroid/graphics/Bitmap;)Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;
    .locals 1
    .parameter "b"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    .line 695
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;
    .locals 0
    .parameter "b"

    .prologue
    .line 685
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 686
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;
    .locals 0
    .parameter "title"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 669
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;
    .locals 1
    .parameter "cs"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    .line 678
    return-object p0
.end method
