.class public abstract Lcom/facebook/dolphin/BaseDialogListener;
.super Ljava/lang/Object;
.source "BaseDialogListener.java"

# interfaces
.implements Lcom/facebook/dolphin/Facebook$DialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onError(Lcom/facebook/dolphin/DialogError;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/facebook/dolphin/DialogError;->printStackTrace()V

    .line 19
    return-void
.end method

.method public onFacebookError(Lcom/facebook/dolphin/FacebookError;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/facebook/dolphin/FacebookError;->printStackTrace()V

    .line 14
    return-void
.end method
