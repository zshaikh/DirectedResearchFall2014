.class final Landroid/view/d;
.super Ljava/lang/Object;
.source "CustomMenuActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;
    .locals 1

    .prologue
    .line 711
    invoke-static {p1}, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->a(Landroid/os/Parcel;)Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;
    .locals 1

    .prologue
    .line 715
    new-array v0, p1, [Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Landroid/view/d;->a(Landroid/os/Parcel;)Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Landroid/view/d;->a(I)[Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method