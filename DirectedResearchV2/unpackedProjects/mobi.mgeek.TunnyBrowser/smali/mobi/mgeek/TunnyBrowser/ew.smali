.class public Lmobi/mgeek/TunnyBrowser/ew;
.super Landroid/app/Dialog;
.source "FindDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Lcom/dolphin/browser/core/IWebView;

.field private b:Landroid/widget/TextView;

.field private c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Z


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0012

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ex;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ex;-><init>(Lmobi/mgeek/TunnyBrowser/ew;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->h:Landroid/view/View$OnClickListener;

    .line 47
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ey;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ey;-><init>(Lmobi/mgeek/TunnyBrowser/ew;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->i:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ez;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ez;-><init>(Lmobi/mgeek/TunnyBrowser/ew;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->j:Landroid/view/View$OnClickListener;

    .line 134
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ew;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->setCanceledOnTouchOutside(Z)V

    .line 136
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 120
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 121
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->b()V

    .line 122
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->b(I)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 127
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 128
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/androidwebkit/MyWebView;)V
    .locals 1

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fa;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/fa;-><init>(Lmobi/mgeek/TunnyBrowser/ew;)V

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->k:Z

    goto :goto_0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ew;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->c()V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ew;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/ew;->b(I)V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/ew;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 78
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    return-void
.end method

.method private b(I)V
    .locals 5

    .prologue
    .line 256
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->j:Lmobi/mgeek/TunnyBrowser/R$plurals;

    const v1, 0x7f0d0003

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ew;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method private b(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->k:Z

    .line 90
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    .line 91
    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/androidwebkit/MyWebView;

    if-eqz v0, :cond_2

    .line 95
    check-cast p1, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/ew;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    goto :goto_0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/ew;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/ew;->a(I)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->findNext(Z)V

    .line 195
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->a()V

    .line 196
    return-void
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/ew;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->a()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 266
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 267
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020127

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 269
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0085

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 270
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0086

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 271
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0062

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 272
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202dc

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0202dd

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cu;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ew;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 274
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ew;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 275
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 276
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020132

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020129

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020128

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    .line 83
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/ew;->b(Lcom/dolphin/browser/core/IWebView;)V

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object p1, p0, Lmobi/mgeek/TunnyBrowser/ew;->g:Ljava/lang/String;

    .line 207
    :cond_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->d()V

    .line 208
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 209
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const/16 v2, 0x12

    invoke-interface {v0, p0, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 213
    invoke-direct {p0, v3}, Lmobi/mgeek/TunnyBrowser/ew;->b(I)V

    .line 214
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->b()V

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p0, p1, v3, v3, v3}, Lmobi/mgeek/TunnyBrowser/ew;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 218
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->setFindIsUp(Z)V

    .line 219
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 172
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->g:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l()V

    .line 175
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->clearMatches()V

    .line 176
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->notifyFindDialogDismissed2()V

    .line 177
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->c()V

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ew;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 143
    const/16 v0, 0x57

    invoke-virtual {v1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 144
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 145
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->setContentView(I)V

    .line 147
    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 150
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    .line 152
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ew;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->e:Landroid/view/View;

    .line 156
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 157
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ew;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->f:Landroid/view/View;

    .line 160
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ew;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->b:Landroid/widget/TextView;

    .line 164
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->b()V

    .line 165
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 167
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->d()V

    .line 168
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::onTextChanged"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 238
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ew;->b()V

    .line 239
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->clearMatches()V

    .line 240
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ew;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/ew;->g:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ew;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ew;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebView;->setFindDialogHeight(I)V

    .line 246
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ew;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebView;->findAll(Ljava/lang/String;)I

    move-result v0

    .line 247
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/ew;->k:Z

    if-nez v1, :cond_1

    .line 250
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->b(I)V

    .line 251
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->a(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 199
    const-string v0, ""

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ew;->a(Ljava/lang/String;)V

    .line 200
    return-void
.end method
