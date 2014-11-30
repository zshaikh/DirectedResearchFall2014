.class Lcom/dolphin/browser/pagedrop/activity/l;
.super Ljava/lang/Object;
.source "PagedropSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/l;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/l;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->onBackPressed()V

    .line 142
    return-void
.end method
