.class final Lcom/dolphin/browser/addons/j;
.super Ljava/lang/Object;
.source "HistoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dolphin/browser/addons/HistoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dolphin/browser/addons/HistoryInfo;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/dolphin/browser/addons/HistoryInfo;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/addons/HistoryInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dolphin/browser/addons/HistoryInfo;
    .locals 1

    .prologue
    .line 105
    new-array v0, p1, [Lcom/dolphin/browser/addons/HistoryInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/addons/j;->a(Landroid/os/Parcel;)Lcom/dolphin/browser/addons/HistoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/addons/j;->a(I)[Lcom/dolphin/browser/addons/HistoryInfo;

    move-result-object v0

    return-object v0
.end method
