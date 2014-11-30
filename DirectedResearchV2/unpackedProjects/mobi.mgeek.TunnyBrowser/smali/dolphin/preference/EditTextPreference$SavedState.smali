.class Ldolphin/preference/EditTextPreference$SavedState;
.super Ldolphin/preference/Preference$BaseSavedState;
.source "EditTextPreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldolphin/preference/EditTextPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Ldolphin/preference/c;

    invoke-direct {v0}, Ldolphin/preference/c;-><init>()V

    sput-object v0, Ldolphin/preference/EditTextPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/EditTextPreference$SavedState;->a:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 254
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Ldolphin/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 249
    iget-object v0, p0, Ldolphin/preference/EditTextPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    return-void
.end method
