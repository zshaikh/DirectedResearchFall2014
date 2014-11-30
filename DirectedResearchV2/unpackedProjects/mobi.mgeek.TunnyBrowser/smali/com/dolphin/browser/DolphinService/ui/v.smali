.class Lcom/dolphin/browser/DolphinService/ui/v;
.super Ljava/lang/Object;
.source "DeviceManageActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/push/data/DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/v;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/data/DeviceInfo;Lcom/dolphin/browser/push/data/DeviceInfo;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 178
    iget-boolean v2, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-boolean v2, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-nez v2, :cond_2

    iget-boolean v2, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    iget-wide v2, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    iget-wide v4, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    sub-long/2addr v2, v4

    .line 185
    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    move v0, v1

    .line 186
    goto :goto_0

    .line 187
    :cond_3
    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 190
    iget-object v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 173
    check-cast p1, Lcom/dolphin/browser/push/data/DeviceInfo;

    check-cast p2, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/DolphinService/ui/v;->a(Lcom/dolphin/browser/push/data/DeviceInfo;Lcom/dolphin/browser/push/data/DeviceInfo;)I

    move-result v0

    return v0
.end method
