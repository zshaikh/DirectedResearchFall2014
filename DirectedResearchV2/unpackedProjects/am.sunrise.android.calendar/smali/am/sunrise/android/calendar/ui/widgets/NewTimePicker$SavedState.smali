.class Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "NewTimePicker.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/ab;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/ab;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->a:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->b:I

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lam/sunrise/android/calendar/ui/widgets/v;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 268
    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->a:I

    .line 269
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->b:I

    .line 270
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILam/sunrise/android/calendar/ui/widgets/v;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 289
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return-void
.end method
