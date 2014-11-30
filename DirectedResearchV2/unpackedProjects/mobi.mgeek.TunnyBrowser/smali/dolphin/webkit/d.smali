.class Ldolphin/webkit/d;
.super Ljava/lang/Object;
.source "AutoCompletePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:Landroid/widget/ListPopupWindow;

.field private e:Landroid/widget/Filter;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/widget/ListAdapter;

.field private h:Landroid/view/View;

.field private i:Ldolphin/webkit/ji;

.field private j:Ldolphin/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/ji;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Ldolphin/webkit/d;->i:Ldolphin/webkit/ji;

    .line 59
    iput-object p1, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    .line 60
    new-instance v0, Ldolphin/webkit/e;

    invoke-direct {v0, p0}, Ldolphin/webkit/e;-><init>(Ldolphin/webkit/d;)V

    iput-object v0, p0, Ldolphin/webkit/d;->b:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/d;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Ldolphin/webkit/d;->c:I

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/d;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Ldolphin/webkit/d;->i:Ldolphin/webkit/ji;

    invoke-virtual {v0}, Ldolphin/webkit/ji;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 213
    iget-object v1, p0, Ldolphin/webkit/d;->i:Ldolphin/webkit/ji;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/ji;->setSelection(II)Z

    .line 214
    iget-object v0, p0, Ldolphin/webkit/d;->i:Ldolphin/webkit/ji;

    iget-object v1, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ldolphin/webkit/ji;->b(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Ldolphin/webkit/d;->i:Ldolphin/webkit/ji;

    iget-object v1, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/ji;->setSelection(II)Z

    .line 216
    iget-object v0, p0, Ldolphin/webkit/d;->i:Ldolphin/webkit/ji;

    invoke-virtual {v0}, Ldolphin/webkit/ji;->finishComposingText()Z

    .line 217
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    .line 253
    new-instance v0, Ldolphin/webkit/f;

    iget-object v1, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    .line 254
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->f()Ldolphin/webkit/ia;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Ldolphin/webkit/ia;->b(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->f()Ldolphin/webkit/ia;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Ldolphin/webkit/ia;->c(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 259
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->f()Ldolphin/webkit/ia;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Ldolphin/webkit/ia;->b(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Ldolphin/webkit/d;->g:Landroid/widget/ListAdapter;

    .line 115
    iput-object v1, p0, Ldolphin/webkit/d;->e:Landroid/widget/Filter;

    .line 116
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 118
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Ldolphin/webkit/d;->c:I

    .line 111
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ldolphin/webkit/d;->d()V

    .line 124
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iput-object p1, p0, Ldolphin/webkit/d;->g:Landroid/widget/ListAdapter;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    check-cast p1, Landroid/widget/Filterable;

    invoke-interface {p1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/d;->e:Landroid/widget/Filter;

    .line 128
    iget-object v0, p0, Ldolphin/webkit/d;->e:Landroid/widget/Filter;

    iget-object v1, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Ldolphin/webkit/d;->b()V

    .line 133
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/d;->e:Landroid/widget/Filter;

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    .line 104
    iget-object v0, p0, Ldolphin/webkit/d;->e:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Ldolphin/webkit/d;->e:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Ldolphin/webkit/d;->a:Z

    .line 209
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    iget-object v2, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 79
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 80
    iget-object v0, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 86
    iget-object v2, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    invoke-virtual {v2, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 90
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 91
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    move v0, v1

    .line 92
    goto :goto_0

    .line 96
    :cond_5
    iget-object v1, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    .line 136
    invoke-direct {p0}, Ldolphin/webkit/d;->d()V

    .line 137
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    .line 138
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v0

    .line 139
    sub-int v3, v0, v2

    .line 140
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 142
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget-object v4, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget-object v4, v4, Ldolphin/webkit/WebViewClassic;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4}, Ldolphin/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    .line 144
    sub-int v5, v0, v4

    .line 146
    iget-object v0, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 148
    const/4 v1, 0x0

    .line 149
    if-nez v0, :cond_2

    .line 150
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v3, v5, v2, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 161
    :goto_0
    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 167
    :cond_1
    return-void

    .line 152
    :cond_2
    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v6, v2, :cond_3

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v6, v4, :cond_3

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v6, v3, :cond_3

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_4

    .line 154
    :cond_3
    const/4 v1, 0x1

    .line 155
    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 156
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 157
    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 158
    iput v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    :cond_4
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->f()Ldolphin/webkit/ia;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/d;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Ldolphin/webkit/ia;->a(Landroid/view/View;)V

    .line 248
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ldolphin/webkit/d;->d()V

    .line 222
    if-lez p1, :cond_3

    iget-object v0, p0, Ldolphin/webkit/d;->i:Ldolphin/webkit/ji;

    invoke-virtual {v0}, Ldolphin/webkit/ji;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    :cond_0
    move v0, v2

    .line 226
    :goto_0
    if-ne p1, v2, :cond_1

    iget-object v3, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Ldolphin/webkit/d;->g:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Ldolphin/webkit/d;->g:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 229
    if-eqz v3, :cond_1

    iget-object v4, p0, Ldolphin/webkit/d;->e:Landroid/widget/Filter;

    invoke-virtual {v4, v3}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 233
    :cond_1
    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 238
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 239
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 243
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 222
    goto :goto_0

    .line 241
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 175
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    iget-object v0, p0, Ldolphin/webkit/d;->i:Ldolphin/webkit/ji;

    invoke-virtual {v0}, Ldolphin/webkit/ji;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    const-string v0, ""

    iput-object v0, p0, Ldolphin/webkit/d;->f:Ljava/lang/CharSequence;

    .line 177
    invoke-direct {p0}, Ldolphin/webkit/d;->c()V

    .line 179
    iget-boolean v0, p0, Ldolphin/webkit/d;->a:Z

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    iget v1, p0, Ldolphin/webkit/d;->c:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->k(I)V

    .line 204
    :cond_1
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/d;->j:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Ldolphin/webkit/d;->b:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_1

    .line 194
    :cond_3
    if-gez p3, :cond_4

    .line 195
    iget-object v0, p0, Ldolphin/webkit/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 199
    :goto_2
    if-eqz v0, :cond_1

    .line 200
    iget-object v1, p0, Ldolphin/webkit/d;->e:Landroid/widget/Filter;

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/d;->a(Ljava/lang/CharSequence;)V

    .line 201
    invoke-direct {p0}, Ldolphin/webkit/d;->c()V

    goto :goto_1

    .line 197
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/d;->g:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method
