.class Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SearchTabIndicator.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;",
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
    .line 921
    new-instance v0, Lcom/dolphin/browser/search/suggestions/y;

    invoke-direct {v0}, Lcom/dolphin/browser/search/suggestions/y;-><init>()V

    sput-object v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 909
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;->a:I

    .line 911
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/dolphin/browser/search/suggestions/u;)V
    .locals 0

    .prologue
    .line 899
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 905
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 916
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 917
    iget v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    return-void
.end method
