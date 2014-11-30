.class Lcom/dolphin/browser/pagedrop/activity/d;
.super Ljava/lang/Object;
.source "PageDropChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/d;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/d;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->onBackPressed()V

    .line 315
    return-void
.end method
