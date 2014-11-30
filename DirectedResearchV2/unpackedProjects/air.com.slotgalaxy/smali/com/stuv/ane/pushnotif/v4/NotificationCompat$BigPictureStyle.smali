.class public Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;
.super Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stuv/ane/pushnotif/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;-><init>()V

    .line 653
    return-void
.end method

.method public constructor <init>(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;-><init>()V

    .line 656
    invoke-virtual {p0, p1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->setBuilder(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)V

    .line 657
    return-void
.end method


# virtual methods
.method public bigPicture(Landroid/graphics/Bitmap;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 682
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 665
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    .line 674
    return-object p0
.end method
