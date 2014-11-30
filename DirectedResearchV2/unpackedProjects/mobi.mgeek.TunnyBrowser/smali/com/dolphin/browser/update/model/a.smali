.class final Lcom/dolphin/browser/update/model/a;
.super Ljava/lang/Object;
.source "DialogButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dolphin/browser/update/model/DialogButton;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dolphin/browser/update/model/DialogButton;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/dolphin/browser/update/model/DialogButton;

    invoke-direct {v0}, Lcom/dolphin/browser/update/model/DialogButton;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/DialogButton;->a(Lcom/dolphin/browser/update/model/DialogButton;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/DialogButton;->b(Lcom/dolphin/browser/update/model/DialogButton;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/update/model/DialogButton;->a(Lcom/dolphin/browser/update/model/DialogButton;I)I

    .line 116
    return-object v0
.end method

.method public a(I)[Lcom/dolphin/browser/update/model/DialogButton;
    .locals 1

    .prologue
    .line 121
    new-array v0, p1, [Lcom/dolphin/browser/update/model/DialogButton;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/update/model/a;->a(Landroid/os/Parcel;)Lcom/dolphin/browser/update/model/DialogButton;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/update/model/a;->a(I)[Lcom/dolphin/browser/update/model/DialogButton;

    move-result-object v0

    return-object v0
.end method
