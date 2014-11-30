.class final Ldolphin/preference/an;
.super Ljava/lang/Object;
.source "YesNoPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ldolphin/preference/YesNoPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ldolphin/preference/YesNoPreference$SavedState;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ldolphin/preference/YesNoPreference$SavedState;

    invoke-direct {v0, p1}, Ldolphin/preference/YesNoPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Ldolphin/preference/YesNoPreference$SavedState;
    .locals 1

    .prologue
    .line 147
    new-array v0, p1, [Ldolphin/preference/YesNoPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Ldolphin/preference/an;->a(Landroid/os/Parcel;)Ldolphin/preference/YesNoPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Ldolphin/preference/an;->a(I)[Ldolphin/preference/YesNoPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
