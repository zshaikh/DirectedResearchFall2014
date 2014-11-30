.class public Lcom/twitter/android/SignUpActivity;
.super Lcom/twitter/android/BaseActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Lcom/twitter/android/widget/PopupEditText;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Ljava/lang/String;

.field m:Landroid/graphics/Bitmap;

.field n:Ljava/lang/String;

.field o:I

.field p:I

.field q:I

.field r:I

.field s:Lcom/twitter/android/fc;

.field private t:I

.field private u:I

.field private v:Landroid/widget/Button;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Lcom/twitter/android/eg;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseActivity;-><init>(Z)V

    new-instance v0, Lcom/twitter/android/eg;

    invoke-direct {v0, p0}, Lcom/twitter/android/eg;-><init>(Lcom/twitter/android/SignUpActivity;)V

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->x:Lcom/twitter/android/eg;

    return-void
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/TextView;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private static a(ILandroid/widget/EditText;Landroid/widget/TextView;)Z
    .locals 1

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/twitter/android/SignUpActivity;->t:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/twitter/android/SignUpActivity;->u:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method final a(Landroid/widget/EditText;Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/SignUpActivity;->o:I

    const/4 v0, 0x1

    :goto_0
    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->x:Lcom/twitter/android/eg;

    invoke-virtual {v1, v0}, Lcom/twitter/android/eg;->removeMessages(I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/android/eg;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SignUpActivity;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SignUpActivity;->p:I

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/twitter/android/SignUpActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/SignUpActivity;->q:I

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->b()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/SignUpActivity;->r:I

    const/4 v0, 0x4

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method final c()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->v:Landroid/widget/Button;

    iget v2, p0, Lcom/twitter/android/SignUpActivity;->o:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/twitter/android/SignUpActivity;->p:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/twitter/android/SignUpActivity;->q:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/twitter/android/SignUpActivity;->r:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v2}, Lcom/twitter/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/SignUpActivity;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/SignUpActivity;->n:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method final e()V
    .locals 2

    const v0, 0x7f0b010c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method final f()V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/SignUpActivity;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070087
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v0, 0x7f030039

    invoke-super {p0, p1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/os/Bundle;I)V

    invoke-virtual {p0}, Lcom/twitter/android/SignUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/SignUpActivity;->w:Landroid/graphics/drawable/Drawable;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/SignUpActivity;->u:I

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SignUpActivity;->t:I

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PopupEditText;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    new-instance v0, Lcom/twitter/android/fc;

    invoke-direct {v0, p0}, Lcom/twitter/android/fc;-><init>(Lcom/twitter/android/SignUpActivity;)V

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->s:Lcom/twitter/android/fc;

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->s:Lcom/twitter/android/fc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PopupEditText;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/PopupEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/PopupEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Lcom/twitter/android/cp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cp;-><init>(Lcom/twitter/android/SignUpActivity;Lcom/twitter/android/x;)V

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->b:Lcom/twitter/android/client/f;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x7f0b0109

    invoke-virtual {p0, v1}, Lcom/twitter/android/SignUpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/x;

    invoke-direct {v1, p0}, Lcom/twitter/android/x;-><init>(Lcom/twitter/android/SignUpActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b010a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00fa

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00b3

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const v3, 0x7f0b016a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-nez p2, :cond_0

    iget v0, p0, Lcom/twitter/android/SignUpActivity;->p:I

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(ILandroid/widget/EditText;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    iget v0, p0, Lcom/twitter/android/SignUpActivity;->q:I

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(ILandroid/widget/EditText;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    const v2, 0x7f0b016b

    invoke-virtual {p0, v2}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    if-nez p2, :cond_0

    iget v0, p0, Lcom/twitter/android/SignUpActivity;->r:I

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(ILandroid/widget/EditText;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    const v2, 0x7f0b016c

    invoke-virtual {p0, v2}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f07002c -> :sswitch_1
        0x7f070082 -> :sswitch_0
        0x7f070085 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f070039

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f07003a

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
