.class public Lcom/facebook/orca/server/GetDeviceLocationParams;
.super Ljava/lang/Object;
.source "GetDeviceLocationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/GetDeviceLocationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/orca/server/GetDeviceLocationParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/GetDeviceLocationParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/GetDeviceLocationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->a:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->b:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->c:Z

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/server/GetDeviceLocationParams$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/GetDeviceLocationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->a:J

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->b:I

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->c:Z

    .line 23
    return-void
.end method

.method public static newBuilder()Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->c:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
