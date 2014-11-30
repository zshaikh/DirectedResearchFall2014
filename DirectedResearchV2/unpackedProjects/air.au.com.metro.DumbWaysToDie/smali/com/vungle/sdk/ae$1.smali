.class final Lcom/vungle/sdk/ae$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/ae;
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
        "Lcom/vungle/sdk/ae;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/vungle/sdk/ae;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/sdk/ae;-><init>(B)V

    invoke-virtual {v0, p1}, Lcom/vungle/sdk/ae;->a(Landroid/os/Parcel;)Lcom/vungle/sdk/ae;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 41
    new-array v0, p1, [Lcom/vungle/sdk/ae;

    return-object v0
.end method
