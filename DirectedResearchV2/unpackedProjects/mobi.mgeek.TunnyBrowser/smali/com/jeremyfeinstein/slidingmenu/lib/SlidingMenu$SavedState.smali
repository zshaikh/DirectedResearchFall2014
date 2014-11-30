.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingMenu.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 990
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/m;

    invoke-direct {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/m;-><init>()V

    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 974
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->a:I

    .line 976
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jeremyfeinstein/slidingmenu/lib/e;)V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 970
    iput p2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->a:I

    .line 971
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 986
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 987
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    return-void
.end method
