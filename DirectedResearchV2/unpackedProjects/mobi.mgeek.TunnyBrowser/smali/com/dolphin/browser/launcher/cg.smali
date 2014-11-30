.class final Lcom/dolphin/browser/launcher/cg;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dolphin/browser/launcher/PagedView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dolphin/browser/launcher/PagedView$SavedState;
    .locals 2

    .prologue
    .line 1389
    new-instance v0, Lcom/dolphin/browser/launcher/PagedView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/dolphin/browser/launcher/PagedView$SavedState;-><init>(Landroid/os/Parcel;Lcom/dolphin/browser/launcher/cd;)V

    return-object v0
.end method

.method public a(I)[Lcom/dolphin/browser/launcher/PagedView$SavedState;
    .locals 1

    .prologue
    .line 1393
    new-array v0, p1, [Lcom/dolphin/browser/launcher/PagedView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1387
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/cg;->a(Landroid/os/Parcel;)Lcom/dolphin/browser/launcher/PagedView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1387
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/cg;->a(I)[Lcom/dolphin/browser/launcher/PagedView$SavedState;

    move-result-object v0

    return-object v0
.end method
