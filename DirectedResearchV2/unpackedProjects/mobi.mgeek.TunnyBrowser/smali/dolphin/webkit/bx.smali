.class Ldolphin/webkit/bx;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Ldolphin/webkit/b;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Ldolphin/webkit/WebViewClassic;

.field private e:Landroid/view/inputmethod/InputMethodManager;

.field private f:Landroid/content/res/Resources;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Ldolphin/webkit/a;

.field private k:Landroid/content/Context;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/bx;->l:Landroid/graphics/Rect;

    .line 285
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/bx;->m:Landroid/graphics/Point;

    .line 52
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/bx;->a(Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 149
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/bx;->g:Z

    if-nez v0, :cond_2

    .line 150
    invoke-virtual {p0}, Ldolphin/webkit/bx;->b()V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget v0, p0, Ldolphin/webkit/bx;->h:I

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->findNext(Z)V

    .line 159
    invoke-direct {p0}, Ldolphin/webkit/bx;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 204
    iget v0, p0, Ldolphin/webkit/bx;->h:I

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    iget-object v1, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v2, Ldolphin/webkit/R$string;->no_matches:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    iget-object v1, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v2, Ldolphin/webkit/R$plurals;->webview_matches_found:I

    iget v3, p0, Ldolphin/webkit/bx;->h:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Ldolphin/webkit/bx;->i:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget v6, p0, Ldolphin/webkit/bx;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldolphin/webkit/bx;->j:Ldolphin/webkit/a;

    invoke-virtual {v0}, Ldolphin/webkit/a;->a()V

    .line 107
    return-void
.end method

.method public a(IIZ)V
    .locals 2

    .prologue
    .line 189
    if-nez p3, :cond_0

    .line 190
    iput p2, p0, Ldolphin/webkit/bx;->h:I

    .line 191
    iput p1, p0, Ldolphin/webkit/bx;->i:I

    .line 192
    invoke-direct {p0}, Ldolphin/webkit/bx;->e()V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/bx;->h:I

    goto :goto_0
.end method

.method a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 56
    iput-object p1, p0, Ldolphin/webkit/bx;->k:Landroid/content/Context;

    .line 57
    sget v0, Ldolphin/webkit/R$layout;->dw_webview_find:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    .line 58
    iget-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    sget v1, Ldolphin/webkit/R$id;->edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    .line 61
    iget-object v0, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    sget v1, Ldolphin/webkit/R$id;->find_prev:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    sget v1, Ldolphin/webkit/R$id;->find_next:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    sget v1, Ldolphin/webkit/R$id;->btnDone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-string v0, ""

    invoke-virtual {p0, v0}, Ldolphin/webkit/bx;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    sget v1, Ldolphin/webkit/R$id;->matches:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    .line 68
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Ldolphin/webkit/bx;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 70
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    .line 71
    invoke-virtual {p0, p2}, Ldolphin/webkit/bx;->a(Z)V

    .line 72
    return-void
.end method

.method a(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    .line 137
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 120
    invoke-static {v0, v1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 123
    const/16 v2, 0x12

    invoke-interface {v0, p0, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 124
    iput-boolean v3, p0, Ldolphin/webkit/bx;->g:Z

    .line 125
    return-void
.end method

.method a(Z)V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    sget v1, Ldolphin/webkit/R$id;->find_prev:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    sget v2, Ldolphin/webkit/R$id;->find_next:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    iget-object v2, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    sget v3, Ldolphin/webkit/R$id;->btnDone:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v3, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    iget-object v4, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v5, Ldolphin/webkit/R$drawable;->cab_background_top_holo_night:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v3, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    iget-object v4, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v5, Ldolphin/webkit/R$drawable;->editbox_background_focus_dark:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v3, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    iget-object v4, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v5, Ldolphin/webkit/R$drawable;->night_find_on_page_match_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v3, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    iget-object v4, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v5, Ldolphin/webkit/R$drawable;->night_find_on_page_hint_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 85
    iget-object v3, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    iget-object v4, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v5, Ldolphin/webkit/R$drawable;->night_find_on_page_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 87
    iget-object v3, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v4, Ldolphin/webkit/R$drawable;->ic_find_previous_holo_night:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v3, Ldolphin/webkit/R$drawable;->ic_find_next_holo_night:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v1, Ldolphin/webkit/R$drawable;->ic_cab_done_holo_night:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v3, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    iget-object v4, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v5, Ldolphin/webkit/R$drawable;->cab_background_top_holo_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v3, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v3, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    const v4, -0x414142

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v3, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    const v4, -0x7f7f80

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 97
    iget-object v3, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    const v4, -0xeeeeef

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 99
    iget-object v3, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v4, Ldolphin/webkit/R$drawable;->ic_find_previous_holo_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v3, Ldolphin/webkit/R$drawable;->ic_find_next_holo_light:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Ldolphin/webkit/bx;->f:Landroid/content/res/Resources;

    sget v1, Ldolphin/webkit/R$drawable;->ic_cab_done_holo_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/a;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 241
    iget-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Ldolphin/webkit/a;->a(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Ldolphin/webkit/bx;->k:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ldolphin/webkit/a;->a(Landroid/content/Context;)V

    .line 243
    invoke-virtual {p1, v2}, Ldolphin/webkit/a;->a(Z)V

    .line 244
    iput-object p1, p0, Ldolphin/webkit/bx;->j:Ldolphin/webkit/a;

    .line 245
    iget-object v0, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 247
    iget-object v0, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/bx;->g:Z

    .line 249
    iget-object v0, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 251
    return v2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v0, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->clearMatches()V

    .line 173
    iget-object v0, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iput-boolean v3, p0, Ldolphin/webkit/bx;->g:Z

    .line 175
    iget-object v0, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->findAll(Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldolphin/webkit/bx;->g:Z

    .line 178
    iget-object v1, p0, Ldolphin/webkit/bx;->c:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iput v3, p0, Ldolphin/webkit/bx;->h:I

    .line 180
    iget-object v1, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebViewClassic;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ldolphin/webkit/a;)V
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/bx;->j:Ldolphin/webkit/a;

    .line 257
    iget-object v0, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->notifyFindDialogDismissed()V

    .line 258
    iget-object v0, p0, Ldolphin/webkit/bx;->e:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 259
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Ldolphin/webkit/bx;->e:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 186
    return-void
.end method

.method public d()I
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Ldolphin/webkit/bx;->j:Ldolphin/webkit/a;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/bx;->a:Landroid/view/View;

    iget-object v1, p0, Ldolphin/webkit/bx;->l:Landroid/graphics/Rect;

    iget-object v2, p0, Ldolphin/webkit/bx;->m:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 291
    iget-object v0, p0, Ldolphin/webkit/bx;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Ldolphin/webkit/bx;->d:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 223
    sget v1, Ldolphin/webkit/R$id;->edit:I

    if-eq v0, v1, :cond_2

    .line 224
    iget-object v1, p0, Ldolphin/webkit/bx;->e:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Ldolphin/webkit/bx;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 227
    :cond_2
    sget v1, Ldolphin/webkit/R$id;->find_prev:I

    if-ne v0, v1, :cond_3

    .line 228
    invoke-direct {p0, v3}, Ldolphin/webkit/bx;->b(Z)V

    goto :goto_0

    .line 229
    :cond_3
    sget v1, Ldolphin/webkit/R$id;->find_next:I

    if-eq v0, v1, :cond_4

    sget v1, Ldolphin/webkit/R$id;->edit:I

    if-ne v0, v1, :cond_5

    .line 230
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldolphin/webkit/bx;->b(Z)V

    goto :goto_0

    .line 231
    :cond_5
    sget v1, Ldolphin/webkit/R$id;->btnDone:I

    if-ne v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Ldolphin/webkit/bx;->a()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Ldolphin/webkit/bx;->b()V

    .line 277
    return-void
.end method
