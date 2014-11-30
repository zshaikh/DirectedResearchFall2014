.class public Lcom/dolphin/browser/launcher/PagedView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PagedView.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolphin/browser/launcher/PagedView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1387
    new-instance v0, Lcom/dolphin/browser/launcher/cg;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/cg;-><init>()V

    sput-object v0, Lcom/dolphin/browser/launcher/PagedView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1377
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1370
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView$SavedState;->a:I

    .line 1378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView$SavedState;->a:I

    .line 1379
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/dolphin/browser/launcher/cd;)V
    .locals 0

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/PagedView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1383
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1384
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    return-void
.end method
