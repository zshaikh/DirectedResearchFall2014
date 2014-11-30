.class public Lcom/twitter/android/widget/ShadowTextView;
.super Landroid/widget/TextView;

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/content/res/ColorStateList;

.field private final c:F

.field private final d:F

.field private final e:F

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/ShadowTextView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/twitter/android/c;->shadowTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ga;->ShadowTextView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/ShadowTextView;->b:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ShadowTextView;->d:F

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ShadowTextView;->c:F

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ShadowTextView;->e:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/twitter/android/widget/ShadowTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/widget/ShadowTextView;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ShadowTextView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v1, p0, Lcom/twitter/android/widget/ShadowTextView;->f:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/twitter/android/widget/ShadowTextView;->f:I

    iget v1, p0, Lcom/twitter/android/widget/ShadowTextView;->e:F

    iget v2, p0, Lcom/twitter/android/widget/ShadowTextView;->d:F

    iget v3, p0, Lcom/twitter/android/widget/ShadowTextView;->c:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/twitter/android/widget/ShadowTextView;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/twitter/android/widget/ShadowTextView;->a()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/widget/ShadowTextView;->g:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ShadowTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/twitter/android/widget/ShadowTextView;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/ShadowTextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/widget/ShadowTextView;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/twitter/android/widget/ShadowTextView;->g:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/ShadowTextView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/widget/ShadowTextView;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ShadowTextView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
