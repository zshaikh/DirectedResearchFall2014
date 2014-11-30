.class Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;
.super Ljava/lang/Object;
.source "ValueCallbackWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/core/ValueCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Ldolphin/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldolphin/webkit/ValueCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldolphin/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;->mCallback:Ldolphin/webkit/ValueCallback;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;->mCallback:Ldolphin/webkit/ValueCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;->mCallback:Ldolphin/webkit/ValueCallback;

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
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;->mCallback:Ldolphin/webkit/ValueCallback;

    invoke-interface {v0, p1}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
