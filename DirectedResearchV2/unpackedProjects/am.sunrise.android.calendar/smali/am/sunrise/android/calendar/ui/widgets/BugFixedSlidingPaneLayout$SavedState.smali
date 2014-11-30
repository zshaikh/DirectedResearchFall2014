.class Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BugFixedSlidingPaneLayout.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1354
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/e;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/e;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;->a:Z

    .line 1346
    return-void

    .line 1345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lam/sunrise/android/calendar/ui/widgets/a;)V
    .locals 0

    .prologue
    .line 1336
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1340
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1341
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1350
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1351
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    return-void

    .line 1351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
