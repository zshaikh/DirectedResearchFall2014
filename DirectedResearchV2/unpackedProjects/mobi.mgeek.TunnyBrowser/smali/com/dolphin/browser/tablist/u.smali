.class Lcom/dolphin/browser/tablist/u;
.super Landroid/widget/ExpandableListView;
.source "CloudTabListView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tablist/j;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/dolphin/browser/tablist/u;->a:Lcom/dolphin/browser/tablist/j;

    .line 510
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 511
    return-void
.end method


# virtual methods
.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method
