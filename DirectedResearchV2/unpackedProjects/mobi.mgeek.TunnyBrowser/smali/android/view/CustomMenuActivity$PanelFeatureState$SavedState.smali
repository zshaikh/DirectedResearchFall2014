.class Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "CustomMenuActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 708
    new-instance v0, Landroid/view/d;

    invoke-direct {v0}, Landroid/view/d;-><init>()V

    sput-object v0, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/os/Parcel;)Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;
    .locals 1

    .prologue
    .line 675
    invoke-static {p0}, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->b(Landroid/os/Parcel;)Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/os/Parcel;)Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 696
    new-instance v3, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;

    invoke-direct {v3}, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;-><init>()V

    .line 697
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->a:I

    .line 698
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->b:Z

    .line 699
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, v3, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->c:Z

    .line 701
    iget-boolean v0, v3, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->b:Z

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->d:Landroid/os/Bundle;

    .line 705
    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    .line 698
    goto :goto_0

    :cond_2
    move v1, v2

    .line 699
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 686
    iget v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget-boolean v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->b:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-boolean v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->c:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    iget-boolean v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->b:Z

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState$SavedState;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 693
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 687
    goto :goto_0

    :cond_2
    move v1, v2

    .line 688
    goto :goto_1
.end method
