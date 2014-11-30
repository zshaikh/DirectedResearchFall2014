.class public Lcom/facebook/orca/location/LocationResult;
.super Ljava/lang/Object;
.source "LocationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/location/LocationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/location/Location;

.field private final b:Landroid/location/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/orca/location/LocationResult$1;

    invoke-direct {v0}, Lcom/facebook/orca/location/LocationResult$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/location/LocationResult;->a:Landroid/location/Location;

    .line 22
    iput-object p2, p0, Lcom/facebook/orca/location/LocationResult;->b:Landroid/location/Address;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/facebook/orca/location/LocationResult;->a:Landroid/location/Location;

    .line 27
    const-class v0, Landroid/location/Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iput-object v0, p0, Lcom/facebook/orca/location/LocationResult;->b:Landroid/location/Address;

    .line 28
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/location/LocationResult;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/location/LocationResult;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/location/Location;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/location/LocationResult;->a:Landroid/location/Location;

    return-object v0
.end method

.method public c()Landroid/location/Address;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/location/LocationResult;->b:Landroid/location/Address;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/location/LocationResult;->a:Landroid/location/Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/location/LocationResult;->b:Landroid/location/Address;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
