.class public Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;
.super Lcom/fusepowered/push/FuseNotificationCompat$Style;
.source "FuseNotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/push/FuseNotificationCompat;
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
    .line 723
    invoke-direct {p0}, Lcom/fusepowered/push/FuseNotificationCompat$Style;-><init>()V

    .line 724
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/fusepowered/push/FuseNotificationCompat$Style;-><init>()V

    .line 727
    invoke-virtual {p0, p1}, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->setBuilder(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)V

    .line 728
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 754
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 736
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 745
    return-object p0
.end method
