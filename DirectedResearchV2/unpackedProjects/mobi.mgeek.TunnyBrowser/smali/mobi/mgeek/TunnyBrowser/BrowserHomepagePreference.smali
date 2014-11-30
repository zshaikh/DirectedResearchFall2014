.class public Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;
.super Ldolphin/preference/DialogPreference;
.source "BrowserHomepagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/CheckedTextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/CheckedTextView;

.field private e:Landroid/widget/ImageView;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010005

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f0a016f

    .line 63
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->b:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->d:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b4

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->f:I

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08024c

    if-ne v0, v1, :cond_1

    .line 108
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->c()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->f:I

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08024e

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->d()V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 116
    const-string v0, "BrowserHomepagePreference"

    const-string v1, "setSpeedDialHomepage"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;Z)V

    .line 118
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 121
    const-string v0, "BrowserHomepagePreference"

    const-string v1, "setUrlHomepage %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v1

    const-string v2, "home_page"

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/search/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private e()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->b:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 146
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024e

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->f:I

    .line 147
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->b:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 154
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 156
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024c

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->f:I

    .line 157
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->b:Landroid/widget/CheckedTextView;

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->c:Landroid/view/View;

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->d:Landroid/widget/CheckedTextView;

    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    .line 49
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->e:Landroid/widget/ImageView;

    .line 51
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->g()V

    .line 56
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a()V

    .line 60
    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->f()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08024c

    if-ne v0, v1, :cond_1

    .line 135
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->g()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08024e

    if-ne v0, v1, :cond_0

    .line 137
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->f()V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->f:I

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08024e

    if-ne v1, v2, :cond_0

    .line 76
    :try_start_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->e()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    .line 94
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a(Z)V

    .line 95
    return-void

    .line 82
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 90
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserHomepagePreference;->b()V

    move p1, v0

    goto :goto_0
.end method
