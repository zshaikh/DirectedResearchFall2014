.class public Lam/sunrise/android/calendar/ui/birthdays/CoverView;
.super Landroid/widget/ImageView;
.source "CoverView.java"


# instance fields
.field private a:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->a()V

    .line 37
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 53
    const/4 v2, 0x0

    const v3, 0x7f0a002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 54
    const/4 v2, 0x1

    const v3, 0x7f0a0028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v1, v2

    .line 55
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->a:Landroid/graphics/drawable/GradientDrawable;

    .line 56
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 45
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/CoverView;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    :cond_0
    return-void
.end method
