.class public abstract Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stuv/ane/pushnotif/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;->mSummaryTextSet:Z

    .line 604
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;->mBuilder:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;->mBuilder:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    invoke-virtual {v1}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 625
    :cond_0
    return-object v0
.end method

.method public setBuilder(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;->mBuilder:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 613
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;->mBuilder:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 614
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;->mBuilder:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;->mBuilder:Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->setStyle(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Style;)Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .line 618
    :cond_0
    return-void
.end method
