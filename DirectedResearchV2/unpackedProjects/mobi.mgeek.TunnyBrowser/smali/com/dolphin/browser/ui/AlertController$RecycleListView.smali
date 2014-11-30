.class public Lcom/dolphin/browser/ui/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 757
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->a:Z

    .line 758
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 761
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->a:Z

    .line 762
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 765
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->a:Z

    .line 766
    return-void
.end method
