.class final Lcom/dolphin/browser/message/model/l;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dolphin/browser/message/model/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dolphin/browser/message/model/Message;
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/dolphin/browser/message/model/Message;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/message/model/Message;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dolphin/browser/message/model/Message;
    .locals 1

    .prologue
    .line 340
    new-array v0, p1, [Lcom/dolphin/browser/message/model/Message;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/message/model/l;->a(Landroid/os/Parcel;)Lcom/dolphin/browser/message/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/message/model/l;->a(I)[Lcom/dolphin/browser/message/model/Message;

    move-result-object v0

    return-object v0
.end method
