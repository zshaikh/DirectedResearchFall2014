.class final Lcom/facebook/orca/share/ShareMedia$1;
.super Ljava/lang/Object;
.source "ShareMedia.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/share/ShareMedia;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/share/ShareMedia;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/orca/share/ShareMedia;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/share/ShareMedia;-><init>(Landroid/os/Parcel;Lcom/facebook/orca/share/ShareMedia$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/orca/share/ShareMedia;
    .locals 1

    .prologue
    .line 74
    new-array v0, p1, [Lcom/facebook/orca/share/ShareMedia;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/facebook/orca/share/ShareMedia$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/facebook/orca/share/ShareMedia$1;->a(I)[Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    return-object v0
.end method
