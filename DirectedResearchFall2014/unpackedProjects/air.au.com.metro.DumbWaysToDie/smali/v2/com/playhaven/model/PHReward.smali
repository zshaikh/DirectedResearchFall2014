.class public Lv2/com/playhaven/model/PHReward;
.super Ljava/lang/Object;
.source "PHReward.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lv2/com/playhaven/model/PHReward;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;

.field public quantity:I

.field public receipt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lv2/com/playhaven/model/PHReward$1;

    invoke-direct {v0}, Lv2/com/playhaven/model/PHReward$1;-><init>()V

    sput-object v0, Lv2/com/playhaven/model/PHReward;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const-string v3, "null"

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv2/com/playhaven/model/PHReward;->name:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lv2/com/playhaven/model/PHReward;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/model/PHReward;->name:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iput-object v2, p0, Lv2/com/playhaven/model/PHReward;->name:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lv2/com/playhaven/model/PHReward;->quantity:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv2/com/playhaven/model/PHReward;->receipt:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lv2/com/playhaven/model/PHReward;->receipt:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv2/com/playhaven/model/PHReward;->receipt:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iput-object v2, p0, Lv2/com/playhaven/model/PHReward;->receipt:Ljava/lang/String;

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const-string v1, "null"

    .line 57
    iget-object v0, p0, Lv2/com/playhaven/model/PHReward;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lv2/com/playhaven/model/PHReward;->quantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lv2/com/playhaven/model/PHReward;->receipt:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/model/PHReward;->name:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lv2/com/playhaven/model/PHReward;->receipt:Ljava/lang/String;

    goto :goto_1
.end method
