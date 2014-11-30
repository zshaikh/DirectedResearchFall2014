.class public Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "SubscriptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private final f:Lcom/mobosquare/sdk/subscription/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 193
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hn;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/hn;-><init>(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->f:Lcom/mobosquare/sdk/subscription/c;

    .line 233
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 220
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 222
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 223
    aget-object v3, v0, v1

    .line 224
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 225
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 226
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 227
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 228
    new-instance v7, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity$MyDolphinURLSpan;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity$MyDolphinURLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-object v2
.end method

.method private a()V
    .locals 3

    .prologue
    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 135
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    new-instance v1, Lmobi/mgeek/TunnyBrowser/hm;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/hm;-><init>(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/mgeek/android/util/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;->a(Landroid/content/Context;)V

    .line 168
    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/a;->a(Landroid/content/Context;)Lcom/mobosquare/sdk/subscription/a;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->f:Lcom/mobosquare/sdk/subscription/c;

    invoke-virtual {v1, v2}, Lcom/mobosquare/sdk/subscription/a;->a(Lcom/mobosquare/sdk/subscription/c;)V

    .line 171
    const-string v2, "F02250A92D924518"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/mobosquare/sdk/subscription/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0647

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 258
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 259
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->finish()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0646

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->b()V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0a01a0

    const v6, 0x7f0a0042

    const v5, 0x7f08026a

    const v4, 0x7f02004c

    .line 59
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300a4

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->setContentView(I)V

    .line 61
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 62
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a:Landroid/widget/TextView;

    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08026c

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->b:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a()V

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e046e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080269

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02027d

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {p0, v5}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00fa

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    .line 90
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 93
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 95
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 96
    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/a;->a(Landroid/content/Context;)Lcom/mobosquare/sdk/subscription/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobosquare/sdk/subscription/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->d:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801cb

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->e:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/hl;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/hl;-><init>(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0398

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 124
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {p0, v5}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 127
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const-string v0, "settings_new"

    const-string v1, "about_Dolphin"

    const-string v2, "subscribe_Dolphin_newsletter"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    if-ne v1, p1, :cond_0

    .line 184
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 186
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0698

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method
