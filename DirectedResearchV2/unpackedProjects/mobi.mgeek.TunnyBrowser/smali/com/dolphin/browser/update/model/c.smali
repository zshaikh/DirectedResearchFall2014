.class final Lcom/dolphin/browser/update/model/c;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dolphin/browser/update/model/UpdateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dolphin/browser/update/model/UpdateInfo;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lcom/dolphin/browser/update/model/UpdateInfo;

    invoke-direct {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;-><init>()V

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->a(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->b(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->a(Lcom/dolphin/browser/update/model/UpdateInfo;I)I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->c(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->d(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->e(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->f(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->a(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/util/List;)Ljava/util/List;

    .line 252
    invoke-static {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->a(Lcom/dolphin/browser/update/model/UpdateInfo;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/update/model/DialogButton;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 253
    return-object v0
.end method

.method public a(I)[Lcom/dolphin/browser/update/model/UpdateInfo;
    .locals 1

    .prologue
    .line 238
    new-array v0, p1, [Lcom/dolphin/browser/update/model/UpdateInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/update/model/c;->a(Landroid/os/Parcel;)Lcom/dolphin/browser/update/model/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/update/model/c;->a(I)[Lcom/dolphin/browser/update/model/UpdateInfo;

    move-result-object v0

    return-object v0
.end method
