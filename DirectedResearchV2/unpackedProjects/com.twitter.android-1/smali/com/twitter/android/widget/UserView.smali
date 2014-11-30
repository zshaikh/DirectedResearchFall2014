.class public Lcom/twitter/android/widget/UserView;
.super Lcom/twitter/android/widget/CardRowView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I


# instance fields
.field private b:Z

.field private c:Lcom/twitter/android/widget/l;

.field private d:J

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/UserView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/twitter/android/ga;->UserView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/UserView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/UserView;->f:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/UserView;->g:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/api/PromotedContent;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    return-object v0
.end method

.method public final a(IIIII)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2, v2, p4, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method public final a(ILcom/twitter/android/widget/l;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput-object p2, p0, Lcom/twitter/android/widget/UserView;->c:Lcom/twitter/android/widget/l;

    goto :goto_0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/twitter/android/widget/UserView;->d:J

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/widget/UserView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/api/PromotedContent;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/twitter/android/api/PromotedContent;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/twitter/android/widget/UserView;->g:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/twitter/android/widget/UserView;->f:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    sget v1, Lcom/twitter/android/dv;->btn_check:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/widget/CardRowView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setImageState([IZ)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/widget/UserView;->b:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->c:Lcom/twitter/android/widget/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->c:Lcom/twitter/android/widget/l;

    iget-wide v1, p0, Lcom/twitter/android/widget/UserView;->d:J

    invoke-interface {v0, p0, v1, v2}, Lcom/twitter/android/widget/l;->a(Lcom/twitter/android/widget/UserView;J)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserView;->toggle()V

    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/twitter/android/widget/CardRowView;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/twitter/android/widget/UserView;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/UserView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    sget v0, Lcom/twitter/android/bg;->action_button:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    sget v0, Lcom/twitter/android/bg;->screenname_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->i:Landroid/widget/TextView;

    sget v0, Lcom/twitter/android/bg;->protected_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->j:Landroid/widget/ImageView;

    sget v0, Lcom/twitter/android/bg;->verified_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->k:Landroid/widget/ImageView;

    sget v0, Lcom/twitter/android/bg;->name_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->l:Landroid/widget/TextView;

    sget v0, Lcom/twitter/android/bg;->user_image:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->m:Landroid/widget/ImageView;

    sget v0, Lcom/twitter/android/bg;->extra_info:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->n:Landroid/widget/TextView;

    sget v0, Lcom/twitter/android/bg;->promoted:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/widget/UserView;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/twitter/android/widget/UserView;->b:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/widget/UserView;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
