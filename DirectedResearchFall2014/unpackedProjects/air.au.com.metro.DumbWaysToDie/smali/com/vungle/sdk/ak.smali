.class public abstract Lcom/vungle/sdk/ak;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(I)Z
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/vungle/sdk/ak;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x25a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x198

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(I)Z
    .locals 2

    .prologue
    .line 43
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract b(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
