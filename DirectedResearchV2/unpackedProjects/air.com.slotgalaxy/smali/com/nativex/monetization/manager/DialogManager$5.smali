.class Lcom/nativex/monetization/manager/DialogManager$5;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/DialogManager;->showNoNetrowkConnectivityDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/manager/DialogManager;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$5;->this$0:Lcom/nativex/monetization/manager/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 185
    const/4 v0, 0x0

    # setter for: Lcom/nativex/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/nativex/monetization/manager/DialogManager;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 186
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->reset()V

    .line 187
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseLater()V

    .line 188
    return-void
.end method
