.class Lv2/com/playhaven/model/PHPurchase$1;
.super Ljava/lang/Object;
.source "PHPurchase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/model/PHPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lv2/com/playhaven/model/PHPurchase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lv2/com/playhaven/model/PHPurchase$1;->createFromParcel(Landroid/os/Parcel;)Lv2/com/playhaven/model/PHPurchase;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lv2/com/playhaven/model/PHPurchase;
    .locals 1
    .parameter "source"

    .prologue
    .line 162
    new-instance v0, Lv2/com/playhaven/model/PHPurchase;

    invoke-direct {v0, p1}, Lv2/com/playhaven/model/PHPurchase;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lv2/com/playhaven/model/PHPurchase$1;->newArray(I)[Lv2/com/playhaven/model/PHPurchase;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lv2/com/playhaven/model/PHPurchase;
    .locals 1
    .parameter "size"

    .prologue
    .line 157
    new-array v0, p1, [Lv2/com/playhaven/model/PHPurchase;

    return-object v0
.end method
