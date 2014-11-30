.class final Lcom/dolphin/browser/addons/b;
.super Ljava/lang/Object;
.source "BookmarkTreeNode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dolphin/browser/addons/BookmarkTreeNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dolphin/browser/addons/BookmarkTreeNode;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/addons/BookmarkTreeNode;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dolphin/browser/addons/BookmarkTreeNode;
    .locals 1

    .prologue
    .line 117
    new-array v0, p1, [Lcom/dolphin/browser/addons/BookmarkTreeNode;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/addons/b;->a(Landroid/os/Parcel;)Lcom/dolphin/browser/addons/BookmarkTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/addons/b;->a(I)[Lcom/dolphin/browser/addons/BookmarkTreeNode;

    move-result-object v0

    return-object v0
.end method
