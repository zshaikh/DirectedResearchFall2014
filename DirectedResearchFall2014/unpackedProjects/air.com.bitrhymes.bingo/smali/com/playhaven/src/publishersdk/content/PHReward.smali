.class public Lcom/playhaven/src/publishersdk/content/PHReward;
.super Lv2/com/playhaven/model/PHReward;
.source "PHReward.java"


# direct methods
.method public constructor <init>(Lv2/com/playhaven/model/PHReward;)V
    .locals 1
    .parameter "reward"

    .prologue
    .line 9
    invoke-direct {p0}, Lv2/com/playhaven/model/PHReward;-><init>()V

    .line 10
    iget-object v0, p1, Lv2/com/playhaven/model/PHReward;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHReward;->name:Ljava/lang/String;

    .line 11
    iget v0, p1, Lv2/com/playhaven/model/PHReward;->quantity:I

    iput v0, p0, Lcom/playhaven/src/publishersdk/content/PHReward;->quantity:I

    .line 12
    iget-object v0, p1, Lv2/com/playhaven/model/PHReward;->receipt:Ljava/lang/String;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHReward;->receipt:Ljava/lang/String;

    .line 13
    return-void
.end method
