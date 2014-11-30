.class Lcom/dolphin/browser/pagedrop/activity/b;
.super Ljava/lang/Object;
.source "PageDropChatActivity.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/f/a/b;

.field final synthetic b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/f/a/b;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/b;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    iput-object p2, p0, Lcom/dolphin/browser/pagedrop/activity/b;->a:Lcom/dolphin/browser/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/b;->a:Lcom/dolphin/browser/f/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/b;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/c;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/pagedrop/activity/c;-><init>(Lcom/dolphin/browser/pagedrop/activity/b;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 281
    :cond_0
    return-void
.end method
