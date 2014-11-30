.class Lcom/dolphin/browser/share/twitter/f;
.super Ljava/lang/Object;
.source "TwitterShareViewContent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 305
    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v3}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 310
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 311
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 312
    if-ne v4, v1, :cond_2

    .line 313
    iput v5, p0, Lcom/dolphin/browser/share/twitter/f;->b:I

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->h(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/VerticalFreeScrollView;

    move-result-object v4

    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    iget-object v6, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v6}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->g(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/Spacer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolphin/browser/share/Spacer;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a(Z)V

    .line 320
    invoke-static {}, Lcom/dolphin/browser/q/d/z;->b()Lcom/dolphin/browser/q/d/z;

    move-result-object v0

    .line 322
    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/q/d/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 326
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 328
    const-string v4, "@"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/q/d/z;->a(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/z;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 348
    :goto_2
    iget-object v3, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    iget-object v4, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v4}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->j(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 349
    iget-object v4, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v4}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->k(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/twitter/a;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 351
    iget-object v4, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v4}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->k(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/twitter/a;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/dolphin/browser/share/twitter/a;->a(I)V

    .line 353
    :cond_3
    iget-object v4, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v4}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->l(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/TextView;

    move-result-object v4

    if-gtz v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->l(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->m(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    if-eqz v0, :cond_5

    .line 359
    invoke-static {}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c()I

    move-result v3

    .line 360
    iget v1, p0, Lcom/dolphin/browser/share/twitter/f;->b:I

    if-nez v1, :cond_a

    invoke-static {}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->d()I

    move-result v1

    .line 362
    :goto_3
    if-le v5, v1, :cond_b

    .line 365
    iget-object v4, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v4}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->h(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/VerticalFreeScrollView;

    move-result-object v4

    sub-int/2addr v5, v1

    invoke-virtual {v4, v2, v5}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->scrollTo(II)V

    .line 366
    add-int/2addr v1, v3

    .line 370
    :goto_4
    iget-object v3, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v3}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->m(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/h;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/dolphin/browser/share/h;->a(II)V

    .line 372
    :cond_5
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->m(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/share/h;->a(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 316
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 333
    goto :goto_2

    .line 339
    :cond_8
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/z;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->i(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->h()V

    move v0, v2

    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 345
    goto/16 :goto_2

    .line 360
    :cond_a
    iget v1, p0, Lcom/dolphin/browser/share/twitter/f;->b:I

    goto :goto_3

    .line 368
    :cond_b
    add-int v1, v3, v5

    goto :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/f;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/f;->c:Ljava/lang/String;

    .line 285
    if-lez p3, :cond_2

    .line 286
    add-int v0, p2, p3

    .line 291
    :goto_0
    if-le v0, p2, :cond_1

    .line 292
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/f;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v1, p2, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;II)V

    .line 295
    :cond_1
    return-void

    .line 287
    :cond_2
    if-lez p4, :cond_3

    .line 288
    add-int v0, p2, p4

    goto :goto_0

    :cond_3
    move v0, p2

    goto :goto_0
.end method
