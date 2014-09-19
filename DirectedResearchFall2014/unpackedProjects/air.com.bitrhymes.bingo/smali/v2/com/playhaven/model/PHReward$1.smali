.class final Lv2/com/playhaven/model/PHReward$1;
.super Ljava/lang/Object;
.source "PHReward.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/model/PHReward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lv2/com/playhaven/model/PHReward;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lv2/com/playhaven/model/PHReward$1;->createFromParcel(Landroid/os/Parcel;)Lv2/com/playhaven/model/PHReward;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lv2/com/playhaven/model/PHReward;
    .locals 1
    .parameter "source"

    .prologue
    .line 34
    new-instance v0, Lv2/com/playhaven/model/PHReward;

    invoke-direct {v0, p1}, Lv2/com/playhaven/model/PHReward;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lv2/com/playhaven/model/PHReward$1;->newArray(I)[Lv2/com/playhaven/model/PHReward;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lv2/com/playhaven/model/PHReward;
    .locals 1
    .parameter "size"

    .prologue
    .line 29
    new-array v0, p1, [Lv2/com/playhaven/model/PHReward;

    return-object v0
.end method
