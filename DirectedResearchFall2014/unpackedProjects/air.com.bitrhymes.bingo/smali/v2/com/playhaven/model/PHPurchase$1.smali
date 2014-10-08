.class final Lv2/com/playhaven/model/PHPurchase$1;
.super Ljava/lang/Object;
.source "PHPurchase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/model/PHPurchase;
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

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lv2/com/playhaven/model/PHPurchase$1;->createFromParcel(Landroid/os/Parcel;)Lv2/com/playhaven/model/PHPurchase;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lv2/com/playhaven/model/PHPurchase;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 162
    new-instance v0, Lv2/com/playhaven/model/PHPurchase;

    invoke-direct {v0, p1}, Lv2/com/playhaven/model/PHPurchase;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lv2/com/playhaven/model/PHPurchase$1;->newArray(I)[Lv2/com/playhaven/model/PHPurchase;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lv2/com/playhaven/model/PHPurchase;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 157
    new-array v0, p1, [Lv2/com/playhaven/model/PHPurchase;

    return-object v0
.end method
