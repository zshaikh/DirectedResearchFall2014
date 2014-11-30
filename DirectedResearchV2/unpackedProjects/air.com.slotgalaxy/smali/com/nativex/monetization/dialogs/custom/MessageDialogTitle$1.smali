.class Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle$1;
.super Ljava/lang/Object;
.source "MessageDialogTitle.java"

# interfaces
.implements Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle$1;->this$0:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "success"    # Z

    .prologue
    .line 160
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle$1;->this$0:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    # getter for: Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->access$000(Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;)Lcom/nativex/monetization/custom/views/CustomImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    :cond_0
    return-void
.end method
