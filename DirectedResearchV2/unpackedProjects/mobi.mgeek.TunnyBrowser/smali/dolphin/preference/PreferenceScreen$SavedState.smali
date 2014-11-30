.class Ldolphin/preference/PreferenceScreen$SavedState;
.super Ldolphin/preference/Preference$BaseSavedState;
.source "PreferenceScreen.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldolphin/preference/PreferenceScreen$SavedState;",
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
    .line 254
    new-instance v0, Ldolphin/preference/ae;

    invoke-direct {v0}, Ldolphin/preference/ae;-><init>()V

    sput-object v0, Ldolphin/preference/PreferenceScreen$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Ldolphin/preference/PreferenceScreen$SavedState;->a:Z

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/PreferenceScreen$SavedState;->b:Landroid/os/Bundle;

    .line 241
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 252
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Ldolphin/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 246
    iget-boolean v0, p0, Ldolphin/preference/PreferenceScreen$SavedState;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Ldolphin/preference/PreferenceScreen$SavedState;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 248
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
