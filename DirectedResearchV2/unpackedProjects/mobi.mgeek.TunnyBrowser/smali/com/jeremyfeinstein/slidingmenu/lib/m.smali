.class final Lcom/jeremyfeinstein/slidingmenu/lib/m;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
    .locals 2

    .prologue
    .line 993
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;Lcom/jeremyfeinstein/slidingmenu/lib/e;)V

    return-object v0
.end method

.method public a(I)[Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
    .locals 1

    .prologue
    .line 997
    new-array v0, p1, [Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 991
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/m;->a(Landroid/os/Parcel;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 991
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/m;->a(I)[Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    move-result-object v0

    return-object v0
.end method
