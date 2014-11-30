.class public abstract Lcom/pocketchange/android/util/AsyncTask$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Delegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "handlesErrors"    # Z

    .prologue
    .line 97
    .local p0, "this":Lcom/pocketchange/android/util/AsyncTask$Delegate;, "Lcom/pocketchange/android/util/AsyncTask$Delegate<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean p1, p0, Lcom/pocketchange/android/util/AsyncTask$Delegate;->a:Z

    .line 99
    return-void
.end method


# virtual methods
.method public handlesErrors()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/pocketchange/android/util/AsyncTask$Delegate;->a:Z

    return v0
.end method

.method public abstract invoke()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onCancelled()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    .local p0, "this":Lcom/pocketchange/android/util/AsyncTask$Delegate;, "Lcom/pocketchange/android/util/AsyncTask$Delegate<TResult;>;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/pocketchange/android/util/AsyncTask$Delegate;, "Lcom/pocketchange/android/util/AsyncTask$Delegate<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method
