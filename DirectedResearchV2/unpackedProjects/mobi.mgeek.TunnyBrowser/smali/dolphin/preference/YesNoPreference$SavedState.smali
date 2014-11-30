.class Ldolphin/preference/YesNoPreference$SavedState;
.super Ldolphin/preference/Preference$BaseSavedState;
.source "YesNoPreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldolphin/preference/YesNoPreference$SavedState;",
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
    .line 140
    new-instance v0, Ldolphin/preference/an;

    invoke-direct {v0}, Ldolphin/preference/an;-><init>()V

    sput-object v0, Ldolphin/preference/YesNoPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Ldolphin/preference/YesNoPreference$SavedState;->a:Z

    .line 128
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 138
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Ldolphin/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    iget-boolean v0, p0, Ldolphin/preference/YesNoPreference$SavedState;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
