.class final Lcom/facebook/orca/server/GetPhoneContactsParams$1;
.super Ljava/lang/Object;
.source "GetPhoneContactsParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/server/GetPhoneContactsParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/server/GetPhoneContactsParams;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/facebook/orca/server/GetPhoneContactsParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/server/GetPhoneContactsParams;-><init>(Landroid/os/Parcel;Lcom/facebook/orca/server/GetPhoneContactsParams$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/orca/server/GetPhoneContactsParams;
    .locals 1

    .prologue
    .line 99
    new-array v0, p1, [Lcom/facebook/orca/server/GetPhoneContactsParams;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/facebook/orca/server/GetPhoneContactsParams$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/server/GetPhoneContactsParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/facebook/orca/server/GetPhoneContactsParams$1;->a(I)[Lcom/facebook/orca/server/GetPhoneContactsParams;

    move-result-object v0

    return-object v0
.end method