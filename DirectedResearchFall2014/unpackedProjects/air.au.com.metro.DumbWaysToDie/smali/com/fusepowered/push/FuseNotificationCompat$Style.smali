.class public abstract Lcom/fusepowered/push/FuseNotificationCompat$Style;
.super Ljava/lang/Object;
.source "FuseNotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/push/FuseNotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Lcom/fusepowered/push/FuseNotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Style;->mBuilder:Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Style;->mBuilder:Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    invoke-virtual {v1}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 627
    :cond_0
    return-object v0
.end method

.method public setBuilder(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Style;->mBuilder:Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 615
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Style;->mBuilder:Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 616
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Style;->mBuilder:Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$Style;->mBuilder:Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    invoke-virtual {v0, p0}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setStyle(Lcom/fusepowered/push/FuseNotificationCompat$Style;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 620
    :cond_0
    return-void
.end method
