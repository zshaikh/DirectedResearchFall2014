.class final Ldolphin/preference/a;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ldolphin/preference/CheckBoxPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ldolphin/preference/CheckBoxPreference$SavedState;
    .locals 1

    .prologue
    .line 337
    new-instance v0, Ldolphin/preference/CheckBoxPreference$SavedState;

    invoke-direct {v0, p1}, Ldolphin/preference/CheckBoxPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Ldolphin/preference/CheckBoxPreference$SavedState;
    .locals 1

    .prologue
    .line 341
    new-array v0, p1, [Ldolphin/preference/CheckBoxPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Ldolphin/preference/a;->a(Landroid/os/Parcel;)Ldolphin/preference/CheckBoxPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Ldolphin/preference/a;->a(I)[Ldolphin/preference/CheckBoxPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
