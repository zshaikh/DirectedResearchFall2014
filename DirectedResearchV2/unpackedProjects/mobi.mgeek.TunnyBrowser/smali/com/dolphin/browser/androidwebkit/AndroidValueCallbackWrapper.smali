.class Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;
.super Ljava/lang/Object;
.source "AndroidValueCallbackWrapper.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/dolphin/browser/core/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/core/ValueCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;->mCallback:Lcom/dolphin/browser/core/ValueCallback;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;->mCallback:Lcom/dolphin/browser/core/ValueCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;->mCallback:Lcom/dolphin/browser/core/ValueCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;->mCallback:Lcom/dolphin/browser/core/ValueCallback;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
