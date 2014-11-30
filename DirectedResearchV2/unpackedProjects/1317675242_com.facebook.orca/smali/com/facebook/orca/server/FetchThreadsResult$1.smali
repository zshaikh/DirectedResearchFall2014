.class final Lcom/facebook/orca/server/FetchThreadsResult$1;
.super Ljava/lang/Object;
.source "FetchThreadsResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/server/FetchThreadsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/server/FetchThreadsResult;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/server/FetchThreadsResult;-><init>(Landroid/os/Parcel;Lcom/facebook/orca/server/FetchThreadsResult$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/orca/server/FetchThreadsResult;
    .locals 1

    .prologue
    .line 100
    new-array v0, p1, [Lcom/facebook/orca/server/FetchThreadsResult;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/facebook/orca/server/FetchThreadsResult$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/server/FetchThreadsResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/facebook/orca/server/FetchThreadsResult$1;->a(I)[Lcom/facebook/orca/server/FetchThreadsResult;

    move-result-object v0

    return-object v0
.end method
