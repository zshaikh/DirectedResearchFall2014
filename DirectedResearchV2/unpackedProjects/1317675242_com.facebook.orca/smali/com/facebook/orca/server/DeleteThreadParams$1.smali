.class final Lcom/facebook/orca/server/DeleteThreadParams$1;
.super Ljava/lang/Object;
.source "DeleteThreadParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/server/DeleteThreadParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/server/DeleteThreadParams;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/orca/server/DeleteThreadParams;

    invoke-direct {v0, p1}, Lcom/facebook/orca/server/DeleteThreadParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/orca/server/DeleteThreadParams;
    .locals 1

    .prologue
    .line 34
    new-array v0, p1, [Lcom/facebook/orca/server/DeleteThreadParams;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/orca/server/DeleteThreadParams$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/server/DeleteThreadParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/orca/server/DeleteThreadParams$1;->a(I)[Lcom/facebook/orca/server/DeleteThreadParams;

    move-result-object v0

    return-object v0
.end method
