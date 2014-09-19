.class public final Lcom/vungle/sdk/al;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vungle/sdk/al;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/vungle/sdk/al$1;

    invoke-direct {v0}, Lcom/vungle/sdk/al$1;-><init>()V

    sput-object v0, Lcom/vungle/sdk/al;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/al;->a:J

    .line 18
    iput v2, p0, Lcom/vungle/sdk/al;->b:I

    .line 23
    iput v2, p0, Lcom/vungle/sdk/al;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/vungle/sdk/al;->a:J

    return-wide v0
.end method

.method final a(Landroid/os/Parcel;)Lcom/vungle/sdk/al;
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/al;->a:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vungle/sdk/al;->b:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vungle/sdk/al;->c:I

    .line 94
    return-object p0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/vungle/sdk/al;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/vungle/sdk/al;->c:I

    return v0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/vungle/sdk/al;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vungle/sdk/al;->b:I

    .line 55
    iget v0, p0, Lcom/vungle/sdk/al;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vungle/sdk/al;->c:I

    .line 56
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/vungle/sdk/al;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/vungle/sdk/al;->c:I

    if-gez v0, :cond_0

    .line 60
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/sdk/al;->c:I

    .line 63
    :cond_0
    iget v0, p0, Lcom/vungle/sdk/al;->c:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/vungle/sdk/al;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget v0, p0, Lcom/vungle/sdk/al;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/vungle/sdk/al;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
