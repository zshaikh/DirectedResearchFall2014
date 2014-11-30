.class Ldolphin/preference/ListPreference$SavedState;
.super Ldolphin/preference/Preference$BaseSavedState;
.source "ListPreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldolphin/preference/ListPreference$SavedState;",
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
    .line 333
    new-instance v0, Ldolphin/preference/o;

    invoke-direct {v0}, Ldolphin/preference/o;-><init>()V

    sput-object v0, Ldolphin/preference/ListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0, p1}, Ldolphin/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 331
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Ldolphin/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 326
    iget-object v0, p0, Ldolphin/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    return-void
.end method
