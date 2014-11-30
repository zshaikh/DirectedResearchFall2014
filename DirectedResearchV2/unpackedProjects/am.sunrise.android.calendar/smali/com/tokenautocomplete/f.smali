.class final Lcom/tokenautocomplete/f;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;
    .locals 1

    .prologue
    .line 1199
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    invoke-direct {v0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;
    .locals 1

    .prologue
    .line 1203
    new-array v0, p1, [Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/f;->a(Landroid/os/Parcel;)Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/f;->a(I)[Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    move-result-object v0

    return-object v0
.end method
