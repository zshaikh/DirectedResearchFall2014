.class public Lcom/dolphin/browser/m/a/d;
.super Landroid/app/Dialog;
.source "PopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/GridView;

.field private j:Lcom/dolphin/browser/m/a/c;

.field private k:I

.field private l:Lcom/dolphin/browser/m/a;

.field private m:Lcom/dolphin/browser/extensions/ThemeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/m/a;Lcom/dolphin/browser/m/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f001f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    iput-object p4, p0, Lcom/dolphin/browser/m/a/d;->a:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/dolphin/browser/m/a/d;->b:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/dolphin/browser/m/a/d;->c:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/dolphin/browser/m/a/d;->j:Lcom/dolphin/browser/m/a/c;

    .line 57
    iput-object p2, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    .line 59
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/a/d;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 60
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, 0x7f0a0043

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02022e

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020222

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    .line 102
    iget v1, p0, Lcom/dolphin/browser/m/a/d;->k:I

    if-ne v4, v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 105
    :cond_0
    iput v4, p0, Lcom/dolphin/browser/m/a/d;->k:I

    .line 110
    const/4 v1, 0x2

    if-ne v4, v1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->j:Lcom/dolphin/browser/m/a/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/a/c;->getCount()I

    move-result v1

    .line 112
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00dd

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    :goto_1
    iget-object v5, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    instance-of v5, v5, Lcom/dolphin/browser/m/e;

    if-eqz v5, :cond_2

    .line 119
    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b00da

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v6, v1

    move v1, v0

    move v0, v6

    .line 129
    :goto_2
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/d;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->h:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHeight(I)V

    .line 131
    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->i:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->j:Lcom/dolphin/browser/m/a/c;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/m/a/c;->a(I)V

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00dc

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    .line 121
    :cond_2
    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b00d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2

    .line 124
    :cond_3
    if-ne v4, v0, :cond_4

    .line 126
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00de

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 127
    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b00d8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :cond_4
    move v1, v2

    move v3, v2

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/a;->a(Z)V

    .line 168
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    instance-of v0, v0, Lcom/dolphin/browser/m/f;

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "promotion dialog"

    const-string v1, "rate_dialog"

    const-string v2, "no"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/a;->a(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/d;->dismiss()V

    .line 148
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    instance-of v0, v0, Lcom/dolphin/browser/m/b;

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "promotion dialog"

    const-string v1, "community_dialog"

    const-string v2, "no"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    instance-of v0, v0, Lcom/dolphin/browser/m/e;

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "promotion dialog"

    const-string v1, "promoteapp_dialog"

    const-string v2, "no"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300b2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/d;->setContentView(I)V

    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/a/d;->d:Landroid/view/View;

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802aa

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/dolphin/browser/m/a/d;->i:Landroid/widget/GridView;

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->j:Lcom/dolphin/browser/m/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->i:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/m/a/d;->e:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/m/a/d;->f:Landroid/widget/ImageView;

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/m/a/d;->g:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/m/a/d;->h:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/m/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/d;->a()V

    .line 87
    invoke-direct {p0}, Lcom/dolphin/browser/m/a/d;->b()V

    .line 88
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 154
    instance-of v0, p2, Lcom/dolphin/browser/m/a/a;

    if-eqz v0, :cond_1

    .line 155
    check-cast p2, Lcom/dolphin/browser/m/a/a;

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    invoke-virtual {p2}, Lcom/dolphin/browser/m/a/a;->a()Lcom/dolphin/browser/promoted/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/a;->a(Ljava/lang/Object;)V

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/d;->dismiss()V

    .line 163
    return-void

    .line 158
    :cond_1
    instance-of v0, p2, Lcom/dolphin/browser/m/a/g;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/m/a/d;->l:Lcom/dolphin/browser/m/a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
