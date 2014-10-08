.class public Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;
.super Lcom/fusepowered/push/FuseNotificationCompat$Style;
.source "FuseNotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/push/FuseNotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/fusepowered/push/FuseNotificationCompat$Style;-><init>()V

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 786
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/fusepowered/push/FuseNotificationCompat$Style;-><init>()V

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 789
    invoke-virtual {p0, p1}, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->setBuilder(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)V

    .line 790
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 798
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;->mSummaryTextSet:Z

    .line 807
    return-object p0
.end method
