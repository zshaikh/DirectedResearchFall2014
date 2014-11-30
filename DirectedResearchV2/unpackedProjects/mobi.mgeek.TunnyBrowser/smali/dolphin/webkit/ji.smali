.class Ldolphin/webkit/ji;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewClassic;

.field private b:Landroid/view/KeyCharacterMap;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 214
    iput-object p1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    .line 215
    invoke-static {p1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 216
    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 730
    iget v0, p0, Ldolphin/webkit/ji;->g:I

    if-lez v0, :cond_0

    .line 731
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 732
    iget v1, p0, Ldolphin/webkit/ji;->g:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int v0, v1, v0

    add-int/2addr v0, p2

    .line 733
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 734
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 736
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 739
    :cond_0
    return-object p1
.end method

.method private a(C)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 689
    iget-object v1, p0, Ldolphin/webkit/ji;->b:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_0

    .line 690
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 691
    const/4 v1, -0x1

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/ji;->b:Landroid/view/KeyCharacterMap;

    .line 696
    :cond_0
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [C

    .line 697
    aput-char p1, v1, v0

    .line 698
    iget-object v2, p0, Ldolphin/webkit/ji;->b:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_2

    .line 700
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 701
    invoke-virtual {p0, v3}, Ldolphin/webkit/ji;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 693
    :cond_1
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/ji;->b:Landroid/view/KeyCharacterMap;

    goto :goto_0

    .line 704
    :cond_2
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x91

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 705
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 707
    :cond_3
    return-void
.end method

.method private a(IILjava/lang/CharSequence;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 641
    iput-boolean v0, p0, Ldolphin/webkit/ji;->c:Z

    .line 642
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v3

    .line 643
    invoke-interface {v3, p1, p2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 646
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 647
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 648
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 649
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 650
    if-ne v2, v7, :cond_8

    .line 651
    if-le v5, v6, :cond_3

    .line 652
    add-int/lit8 v2, v6, 0x1

    if-ne v5, v2, :cond_2

    invoke-static {p3, v1, v4, v1, v6}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    move v2, v0

    move v0, v1

    .line 661
    :goto_1
    if-eqz v2, :cond_5

    .line 662
    add-int/lit8 v0, v5, -0x1

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Ldolphin/webkit/ji;->a(C)V

    .line 674
    :cond_0
    :goto_2
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    invoke-interface {v3, v1, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 678
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v3, p2, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 679
    iget-object v2, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldolphin/webkit/d;->a(Ljava/lang/CharSequence;)V

    .line 681
    :cond_1
    iput-boolean v1, p0, Ldolphin/webkit/ji;->c:Z

    .line 682
    return-void

    :cond_2
    move v0, v1

    .line 652
    goto :goto_0

    .line 655
    :cond_3
    if-le v6, v5, :cond_8

    .line 656
    add-int/lit8 v2, v6, -0x1

    if-ne v5, v2, :cond_4

    invoke-static {p3, v1, v4, v1, v5}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    .line 663
    :cond_5
    if-eqz v0, :cond_6

    .line 664
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Ldolphin/webkit/ji;->c(I)V

    goto :goto_2

    .line 665
    :cond_6
    if-ne v5, v6, :cond_7

    invoke-static {p3, v1, v4, v1, v5}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    :cond_7
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x8f

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, p1, p2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 672
    iget-object v2, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v2, v2, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_8
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private b()V
    .locals 6

    .prologue
    .line 620
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 621
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 622
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 623
    invoke-static {v0}, Ldolphin/webkit/ji;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 624
    invoke-static {v0}, Ldolphin/webkit/ji;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 625
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 626
    if-eqz v0, :cond_0

    .line 627
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 630
    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 7

    .prologue
    const/16 v5, 0x43

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 255
    if-eq p1, v5, :cond_0

    const/16 v2, 0x70

    if-eq p1, v2, :cond_0

    .line 278
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 259
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 260
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 262
    if-le v2, v3, :cond_3

    .line 269
    :goto_1
    if-eq v3, v2, :cond_1

    .line 270
    const-string v0, ""

    invoke-direct {p0, v3, v2, v0}, Ldolphin/webkit/ji;->a(IILjava/lang/CharSequence;)V

    .line 271
    invoke-interface {v4, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 272
    invoke-virtual {p0, v3, v3}, Ldolphin/webkit/ji;->setSelection(II)Z

    .line 273
    invoke-virtual {p0}, Ldolphin/webkit/ji;->finishComposingText()Z

    move v0, v1

    .line 274
    goto :goto_0

    .line 278
    :cond_1
    if-ne p1, v5, :cond_2

    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ji;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/ji;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 744
    if-eqz v0, :cond_0

    .line 747
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 749
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 23

    .prologue
    .line 715
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 716
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_0

    const/4 v10, -0x1

    .line 718
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ldolphin/webkit/ji;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 722
    new-instance v11, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-wide v14, v2

    move/from16 v17, p1

    move/from16 v20, v10

    invoke-direct/range {v11 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ldolphin/webkit/ji;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 726
    return-void

    .line 716
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    .line 219
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ldolphin/webkit/ji;->h:Z

    .line 221
    iget v0, p0, Ldolphin/webkit/ji;->d:I

    and-int/lit16 v0, v0, 0xff0

    .line 222
    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Ldolphin/webkit/ji;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/ji;->i:Z

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ji;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/ji;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 225
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/ji;->j:Ljava/lang/String;

    iget-object v2, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;)I

    move-result v2

    iget-boolean v3, p0, Ldolphin/webkit/ji;->h:Z

    iget-boolean v4, p0, Ldolphin/webkit/ji;->i:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;IZZ)V

    .line 229
    :cond_1
    return-void

    .line 219
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3

    .prologue
    .line 586
    iget v0, p0, Ldolphin/webkit/ji;->d:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 587
    iget v0, p0, Ldolphin/webkit/ji;->e:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 588
    iget-object v0, p0, Ldolphin/webkit/ji;->f:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 589
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldolphin/webkit/ji;->getCursorCapsMode(I)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 591
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 592
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 593
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 594
    if-ltz v1, :cond_0

    if-gez v0, :cond_1

    .line 595
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    move v1, v0

    .line 598
    :cond_1
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 599
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 600
    return-void
.end method

.method public a(Ldolphin/webkit/WebViewCore$TextFieldInitData;)V
    .locals 4

    .prologue
    .line 512
    iget v2, p1, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mType:I

    .line 513
    const/16 v1, 0xa1

    .line 515
    const/high16 v0, 0x12000000

    .line 517
    iget-boolean v3, p1, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v3, :cond_0

    .line 518
    const v1, 0x800a1

    .line 520
    :cond_0
    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    .line 521
    iget-boolean v3, p1, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v3, :cond_1

    .line 522
    const/high16 v0, 0x1a000000

    .line 524
    :cond_1
    iget-boolean v3, p1, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v3, :cond_2

    .line 525
    const/high16 v3, 0x4000000

    or-int/2addr v0, v3

    .line 528
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 571
    or-int/lit8 v0, v0, 0x2

    .line 574
    :goto_0
    iget-object v2, p1, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v2, p0, Ldolphin/webkit/ji;->f:Ljava/lang/String;

    .line 575
    iput v1, p0, Ldolphin/webkit/ji;->d:I

    .line 576
    iput v0, p0, Ldolphin/webkit/ji;->e:I

    .line 577
    iget v0, p1, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v0, p0, Ldolphin/webkit/ji;->g:I

    .line 578
    iget-boolean v0, p1, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/ji;->i:Z

    .line 579
    iget-object v0, p1, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v0, p0, Ldolphin/webkit/ji;->j:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/d;->a()V

    .line 583
    :cond_3
    return-void

    .line 530
    :pswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 531
    goto :goto_0

    .line 533
    :pswitch_1
    const v2, 0x2c000

    or-int/2addr v1, v2

    .line 536
    or-int/lit8 v0, v0, 0x1

    .line 537
    goto :goto_0

    .line 539
    :pswitch_2
    or-int/lit16 v1, v1, 0xe0

    .line 540
    or-int/lit8 v0, v0, 0x2

    .line 541
    goto :goto_0

    .line 543
    :pswitch_3
    or-int/lit8 v0, v0, 0x3

    .line 544
    goto :goto_0

    .line 547
    :pswitch_4
    const/16 v1, 0xd1

    .line 549
    or-int/lit8 v0, v0, 0x2

    .line 550
    goto :goto_0

    .line 553
    :pswitch_5
    const/16 v1, 0x3002

    .line 557
    or-int/lit8 v0, v0, 0x5

    .line 558
    goto :goto_0

    .line 561
    :pswitch_6
    const/4 v1, 0x3

    .line 562
    or-int/lit8 v0, v0, 0x5

    .line 563
    goto :goto_0

    .line 567
    :pswitch_7
    or-int/lit8 v0, v0, 0x2

    .line 568
    or-int/lit8 v1, v1, 0x10

    .line 569
    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 319
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 321
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 322
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Ldolphin/webkit/ji;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 323
    const/4 v4, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v0, v4, v5, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 324
    invoke-direct {p0}, Ldolphin/webkit/ji;->c()V

    .line 326
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 327
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 328
    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ji;->setSelection(II)Z

    .line 329
    invoke-virtual {p0}, Ldolphin/webkit/ji;->finishComposingText()Z

    .line 330
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Ldolphin/webkit/ji;->h:Z

    return v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 333
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 335
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 336
    sub-int v3, v2, v1

    invoke-direct {p0, p1, v3}, Ldolphin/webkit/ji;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 337
    invoke-direct {p0, v1, v2, v3}, Ldolphin/webkit/ji;->a(IILjava/lang/CharSequence;)V

    .line 338
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 339
    invoke-direct {p0}, Ldolphin/webkit/ji;->c()V

    .line 341
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 342
    invoke-virtual {p0, v0, v0}, Ldolphin/webkit/ji;->setSelection(II)Z

    .line 343
    return-void
.end method

.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Ldolphin/webkit/ji;->k:I

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->c(Ldolphin/webkit/WebViewClassic;)V

    .line 236
    :cond_0
    iget v0, p0, Ldolphin/webkit/ji;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/ji;->k:I

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/ji;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 381
    invoke-virtual {p0}, Ldolphin/webkit/ji;->finishComposingText()Z

    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 389
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 390
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 391
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 393
    if-le v0, v1, :cond_5

    .line 399
    :goto_0
    invoke-static {v4}, Ldolphin/webkit/ji;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 400
    invoke-static {v4}, Ldolphin/webkit/ji;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 401
    if-ge v3, v2, :cond_4

    .line 406
    :goto_1
    if-eq v3, v5, :cond_1

    if-eq v2, v5, :cond_1

    .line 407
    if-ge v3, v1, :cond_0

    move v1, v3

    .line 408
    :cond_0
    if-le v2, v0, :cond_1

    move v0, v2

    .line 411
    :cond_1
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    add-int v3, v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 412
    if-le v2, v0, :cond_2

    .line 413
    const-string v3, ""

    invoke-direct {p0, v0, v2, v3}, Ldolphin/webkit/ji;->a(IILjava/lang/CharSequence;)V

    .line 415
    :cond_2
    const/4 v0, 0x0

    sub-int v2, v1, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 416
    if-ge v0, v1, :cond_3

    .line 417
    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Ldolphin/webkit/ji;->a(IILjava/lang/CharSequence;)V

    .line 419
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0

    :cond_4
    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1

    :cond_5
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Ldolphin/webkit/ji;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldolphin/webkit/ji;->k:I

    .line 243
    iget v0, p0, Ldolphin/webkit/ji;->k:I

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->d(Ldolphin/webkit/WebViewClassic;)V

    .line 246
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 425
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 426
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 427
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 428
    if-ltz v1, :cond_0

    if-gez v0, :cond_1

    .line 429
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    move v1, v0

    .line 433
    :cond_1
    new-instance v3, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 434
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 435
    iput v4, v3, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 436
    iput v4, v3, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 437
    iput v1, v3, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 438
    iput v0, v3, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 439
    iput v4, v3, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 440
    return-object v3
.end method

.method public performContextMenuAction(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 483
    packed-switch p1, :pswitch_data_0

    .line 508
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 485
    :pswitch_0
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->f(Ldolphin/webkit/WebViewClassic;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->g(Ldolphin/webkit/WebViewClassic;)Z

    .line 488
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->M()V

    goto :goto_0

    .line 492
    :pswitch_1
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/b;->a(Landroid/content/Context;)Landroid/support/b;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Landroid/support/b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {v1}, Landroid/support/b;->a()Ljava/lang/CharSequence;

    move-result-object v1

    .line 495
    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ji;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 500
    :pswitch_2
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->N()V

    .line 501
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    .line 505
    :pswitch_3
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->copySelection()Z

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 6

    .prologue
    const/16 v5, 0x42

    const/4 v0, 0x1

    .line 446
    .line 447
    packed-switch p1, :pswitch_data_0

    .line 468
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    .line 472
    :goto_0
    return v0

    .line 449
    :pswitch_1
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    .line 452
    :pswitch_2
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    .line 455
    :pswitch_3
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->e(Ldolphin/webkit/WebViewClassic;)V

    goto :goto_0

    .line 459
    :pswitch_4
    iget-object v1, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->e(Ldolphin/webkit/WebViewClassic;)V

    .line 460
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    iget-object v2, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 463
    iget-object v2, p0, Ldolphin/webkit/ji;->a:Ldolphin/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v0, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/16 v5, 0x70

    const/16 v2, 0x43

    const/16 v4, 0x16

    const/16 v3, 0x15

    const/4 v0, 0x1

    .line 287
    iget-boolean v1, p0, Ldolphin/webkit/ji;->c:Z

    if-nez v1, :cond_4

    .line 288
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 289
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Ldolphin/webkit/ji;->b(I)Z

    move-result v0

    .line 315
    :cond_1
    :goto_0
    return v0

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 296
    :cond_3
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 297
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 298
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v3, :cond_5

    if-lez v0, :cond_5

    if-ne v0, v1, :cond_5

    .line 299
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ji;->setSelection(II)Z

    .line 315
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 300
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v4, :cond_4

    if-ltz v1, :cond_4

    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-ne v0, v1, :cond_4

    .line 301
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/ji;->setSelection(II)Z

    goto :goto_1

    .line 303
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ji;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_0

    .line 308
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 1

    .prologue
    .line 611
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    .line 612
    invoke-direct {p0}, Ldolphin/webkit/ji;->b()V

    .line 613
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5

    .prologue
    .line 347
    invoke-virtual {p0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 348
    invoke-static {v2}, Ldolphin/webkit/ji;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 349
    invoke-static {v2}, Ldolphin/webkit/ji;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 350
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 351
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 352
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 354
    :cond_1
    if-ge v1, v0, :cond_4

    .line 359
    :goto_0
    sub-int v2, v0, v1

    invoke-direct {p0, p1, v2}, Ldolphin/webkit/ji;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 360
    invoke-direct {p0, v1, v0, v2}, Ldolphin/webkit/ji;->a(IILjava/lang/CharSequence;)V

    .line 361
    if-eq v2, p1, :cond_2

    .line 362
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr p2, v0

    .line 364
    :cond_2
    invoke-super {p0, v2, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 367
    if-eq v2, p1, :cond_3

    .line 370
    invoke-direct {p0}, Ldolphin/webkit/ji;->b()V

    .line 371
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 372
    invoke-virtual {p0}, Ldolphin/webkit/ji;->finishComposingText()Z

    .line 373
    invoke-virtual {p0, v0, v0}, Ldolphin/webkit/ji;->setSelection(II)Z

    .line 375
    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 1

    .prologue
    .line 604
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    .line 605
    invoke-direct {p0}, Ldolphin/webkit/ji;->b()V

    .line 606
    return v0
.end method
