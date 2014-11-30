.class public Lcom/dolphin/browser/feedback/FeedbackActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const v7, 0x7f08002c

    const v6, 0x7f02027b

    const v5, 0x7f020259

    const v4, 0x7f0a01a0

    const v3, 0x7f080035

    .line 55
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020331

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->f:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->b:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->b:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->b:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->c:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->c:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->c:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020331

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020338

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080202

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020339

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080204

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020339

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080206

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020339

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    const-string v3, ""

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 115
    invoke-static {}, Lcom/dolphin/browser/feedback/g;->a()Lcom/dolphin/browser/feedback/g;

    move-result-object v0

    .line 116
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080201

    if-ne v1, v2, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/g;->b()Ljava/io/File;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e055c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/feedback/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->g:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/feedback/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    :goto_1
    return-void

    .line 124
    :cond_2
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080203

    if-ne v1, v2, :cond_4

    .line 125
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/g;->c()Ljava/io/File;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "/data/anr/traces.txt"

    invoke-virtual {v0, v3, v2}, Lcom/dolphin/browser/feedback/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e055a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 134
    :cond_4
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080207

    if-ne v1, v2, :cond_5

    .line 135
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/feedback/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 136
    :cond_5
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080205

    if-ne v1, v2, :cond_1

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->setContentView(I)V

    .line 39
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->f:Landroid/widget/TextView;

    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->a:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->b:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080207

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->c:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080205

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->e:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/FeedbackActivity;->d:Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/feedback/FeedbackActivity;->a()V

    .line 52
    return-void
.end method
