.class public Lcom/facebook/orca/server/FetchMoreThreadsParams;
.super Ljava/lang/Object;
.source "FetchMoreThreadsParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/FetchMoreThreadsParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/orca/server/FetchMoreThreadsParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a:J

    .line 21
    iput p3, p0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b:I

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b:I

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/server/FetchMoreThreadsParams$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget v0, p0, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void
.end method
