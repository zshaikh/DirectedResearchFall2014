.class public Lcom/inmobi/adtracker/androidsdk/impl/Goal;
.super Ljava/lang/Object;
.source "Goal.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setGoalCount(I)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setGoalName(Ljava/lang/String;)V

    .line 18
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setRetryTime(J)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-gez p2, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    cmp-long v1, p3, v2

    if-gez v1, :cond_0

    move-wide v1, v2

    .line 26
    :goto_1
    invoke-virtual {p0, v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setGoalCount(I)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setGoalName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setRetryTime(J)V

    .line 29
    return-void

    :cond_0
    move-wide v1, p3

    goto :goto_1

    :cond_1
    move v0, p2

    goto :goto_0
.end method


# virtual methods
.method public getGoalCount()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->a:I

    return v0
.end method

.method public getGoalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->c:J

    return-wide v0
.end method

.method public setGoalCount(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->a:I

    .line 35
    return-void
.end method

.method public setGoalName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setRetryTime(J)V
    .locals 0

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->c:J

    .line 48
    return-void
.end method
