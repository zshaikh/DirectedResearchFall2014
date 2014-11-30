.class Lcom/dolphin/browser/pagedrop/activity/c;
.super Ljava/lang/Object;
.source "PageDropChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/dolphin/browser/pagedrop/activity/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/activity/b;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/c;->b:Lcom/dolphin/browser/pagedrop/activity/b;

    iput-object p2, p0, Lcom/dolphin/browser/pagedrop/activity/c;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/c;->b:Lcom/dolphin/browser/pagedrop/activity/b;

    iget-object v0, v0, Lcom/dolphin/browser/pagedrop/activity/b;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    return-void
.end method
