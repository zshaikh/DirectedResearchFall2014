.class Lcom/playhaven/src/publishersdk/content/PHPurchase$1;
.super Ljava/lang/Object;
.source "PHPurchase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHPurchase;
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
        "Lcom/playhaven/src/publishersdk/content/PHPurchase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/playhaven/src/publishersdk/content/PHPurchase;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 91
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPurchase;

    invoke-direct {v0, p1}, Lcom/playhaven/src/publishersdk/content/PHPurchase;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHPurchase$1;->createFromParcel(Landroid/os/Parcel;)Lcom/playhaven/src/publishersdk/content/PHPurchase;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/playhaven/src/publishersdk/content/PHPurchase;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Lcom/playhaven/src/publishersdk/content/PHPurchase;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHPurchase$1;->newArray(I)[Lcom/playhaven/src/publishersdk/content/PHPurchase;

    move-result-object v0

    return-object v0
.end method
