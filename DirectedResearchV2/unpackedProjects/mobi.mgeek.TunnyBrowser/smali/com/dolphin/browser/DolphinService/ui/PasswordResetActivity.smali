.class public Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;
.super Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;
.source "PasswordResetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/AutoCompleteTextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/app/ProgressDialog;

.field private d:Lcom/dolphin/browser/DolphinService/WebService/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;-><init>()V

    .line 123
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/cm;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/cm;-><init>(Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->d:Lcom/dolphin/browser/DolphinService/WebService/a;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->c:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 174
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->c:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->c:Landroid/app/ProgressDialog;

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->c:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 168
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 177
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 178
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 179
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 105
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801cc

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Ljava/lang/String;)I

    move-result v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 112
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->b()V

    .line 116
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e056c

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a(I)V

    .line 117
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->d:Lcom/dolphin/browser/DolphinService/WebService/a;

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 45
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->setContentView(I)V

    .line 46
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801cc

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0173

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 57
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 62
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 64
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a(Landroid/widget/TextView;)V

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xff

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 69
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v2, 0x7f07000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-direct {v3, p0, v0}, Lcom/dolphin/browser/DolphinService/ui/az;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801cb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->b:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/cl;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/cl;-><init>(Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    return-void
.end method
