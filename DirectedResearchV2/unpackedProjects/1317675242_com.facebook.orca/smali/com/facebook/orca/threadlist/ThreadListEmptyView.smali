.class public Lcom/facebook/orca/threadlist/ThreadListEmptyView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadListEmptyView.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a(Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a(Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a(Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a:Landroid/view/LayoutInflater;

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    return-void
.end method
