.class public Lcom/mgeek/android/ui/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 32
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 35
    if-lez v1, :cond_0

    .line 36
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 37
    if-lez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DialogTitle;->setSingleLine(Z)V

    .line 40
    const/high16 v0, 0x41900000

    invoke-virtual {p0, v2, v0}, Lcom/mgeek/android/ui/DialogTitle;->setTextSize(IF)V

    .line 41
    invoke-virtual {p0, v2}, Lcom/mgeek/android/ui/DialogTitle;->setMaxLines(I)V

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 46
    :cond_0
    return-void
.end method
