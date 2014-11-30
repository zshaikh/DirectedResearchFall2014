.class final Lcom/facebook/orca/users/UserCluster$1;
.super Ljava/lang/Object;
.source "UserCluster.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/users/UserCluster;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/users/UserCluster;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/facebook/orca/users/UserCluster;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/users/UserCluster;-><init>(Landroid/os/Parcel;Lcom/facebook/orca/users/UserCluster$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/orca/users/UserCluster;
    .locals 1

    .prologue
    .line 137
    new-array v0, p1, [Lcom/facebook/orca/users/UserCluster;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/facebook/orca/users/UserCluster$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/users/UserCluster;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/facebook/orca/users/UserCluster$1;->a(I)[Lcom/facebook/orca/users/UserCluster;

    move-result-object v0

    return-object v0
.end method
