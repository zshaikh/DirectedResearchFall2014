.class final Lcom/facebook/orca/location/LocationResult$1;
.super Ljava/lang/Object;
.source "LocationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/location/LocationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/location/LocationResult;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/orca/location/LocationResult;

    invoke-direct {v0, p1}, Lcom/facebook/orca/location/LocationResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/orca/location/LocationResult;
    .locals 1

    .prologue
    .line 49
    new-array v0, p1, [Lcom/facebook/orca/location/LocationResult;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/facebook/orca/location/LocationResult$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/location/LocationResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/facebook/orca/location/LocationResult$1;->a(I)[Lcom/facebook/orca/location/LocationResult;

    move-result-object v0

    return-object v0
.end method
