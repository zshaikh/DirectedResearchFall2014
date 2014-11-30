.class final Lcom/mgeek/android/ui/ar;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;
    .locals 2

    .prologue
    .line 651
    new-instance v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcel;Lcom/mgeek/android/ui/am;)V

    return-object v0
.end method

.method public a(I)[Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;
    .locals 1

    .prologue
    .line 656
    new-array v0, p1, [Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/ar;->a(Landroid/os/Parcel;)Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/ar;->a(I)[Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;

    move-result-object v0

    return-object v0
.end method
