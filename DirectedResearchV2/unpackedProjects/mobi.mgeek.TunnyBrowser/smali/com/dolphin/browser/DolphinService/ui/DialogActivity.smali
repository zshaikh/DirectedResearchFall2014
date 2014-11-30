.class public Lcom/dolphin/browser/DolphinService/ui/DialogActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "DialogActivity.java"


# instance fields
.field private a:Lcom/mgeek/android/ui/DialogTitle;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 141
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/ac;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/ac;-><init>(Lcom/dolphin/browser/DolphinService/ui/DialogActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->e:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const v4, 0x7f020348

    .line 106
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->a:Lcom/mgeek/android/ui/DialogTitle;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgeek/android/ui/DialogTitle;->setTextColor(I)V

    .line 109
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0173

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->c:Landroid/widget/Button;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200b0

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->c:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->b:Landroid/widget/Button;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200ae

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->b:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->d:Landroid/widget/Button;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200af

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020331

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->a(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method protected a(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->a()V

    .line 57
    return-void
.end method

.method protected a(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    const/16 v1, 0x3e8

    .line 132
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->e:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->a:Lcom/mgeek/android/ui/DialogTitle;

    invoke-virtual {v0, p1}, Lcom/mgeek/android/ui/DialogTitle;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->a(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected b(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method protected b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method protected c(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->c(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method protected c(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->a()V

    .line 159
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->setContentView(I)V

    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/DialogTitle;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->a:Lcom/mgeek/android/ui/DialogTitle;

    .line 42
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->b:Landroid/widget/Button;

    .line 43
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->c:Landroid/widget/Button;

    .line 44
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->d:Landroid/widget/Button;

    .line 45
    return-void
.end method
