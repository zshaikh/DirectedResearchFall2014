.class public Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;
.super Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stuv/ane/pushnotif/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;-><init>()V

    .line 711
    return-void
.end method

.method public constructor <init>(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;-><init>()V

    .line 714
    invoke-virtual {p0, p1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->setBuilder(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)V

    .line 715
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 741
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 723
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 732
    return-object p0
.end method
