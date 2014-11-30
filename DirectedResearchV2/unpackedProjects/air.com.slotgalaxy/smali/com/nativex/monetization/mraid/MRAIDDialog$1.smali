.class Lcom/nativex/monetization/mraid/MRAIDDialog$1;
.super Landroid/view/View;
.source "MRAIDDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDDialog;->setDetachDetectorView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 70
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismiss()V

    .line 71
    return-void
.end method
