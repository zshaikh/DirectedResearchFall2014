.class Ldolphin/preference/DialogPreference$SavedState;
.super Ldolphin/preference/Preference$BaseSavedState;
.source "DialogPreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldolphin/preference/DialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z

.field b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Ldolphin/preference/b;

    invoke-direct {v0}, Ldolphin/preference/b;-><init>()V

    sput-object v0, Ldolphin/preference/DialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 515
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Ldolphin/preference/DialogPreference$SavedState;->a:Z

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/DialogPreference$SavedState;->b:Landroid/os/Bundle;

    .line 518
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 529
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 522
    invoke-super {p0, p1, p2}, Ldolphin/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 523
    iget-boolean v0, p0, Ldolphin/preference/DialogPreference$SavedState;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-object v0, p0, Ldolphin/preference/DialogPreference$SavedState;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 525
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
