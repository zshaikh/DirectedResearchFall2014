.class public Lcom/mgeek/android/ui/CheckableLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 53
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    invoke-static {v2, p1}, Lcom/mgeek/android/ui/CheckableLayout;->a(Landroid/view/View;Z)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    instance-of v0, p0, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 62
    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mgeek/android/ui/CheckableLayout;->a:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/mgeek/android/ui/CheckableLayout;->a:Z

    .line 36
    invoke-static {p0, p1}, Lcom/mgeek/android/ui/CheckableLayout;->a(Landroid/view/View;Z)V

    .line 37
    invoke-virtual {p0}, Lcom/mgeek/android/ui/CheckableLayout;->invalidate()V

    .line 38
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mgeek/android/ui/CheckableLayout;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mgeek/android/ui/CheckableLayout;->a:Z

    .line 48
    iget-boolean v0, p0, Lcom/mgeek/android/ui/CheckableLayout;->a:Z

    invoke-static {p0, v0}, Lcom/mgeek/android/ui/CheckableLayout;->a(Landroid/view/View;Z)V

    .line 49
    invoke-virtual {p0}, Lcom/mgeek/android/ui/CheckableLayout;->invalidate()V

    .line 50
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
