.class public Lmobi/mgeek/TunnyBrowser/ShareActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ShareActivity.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/ShareDataProvider;


# static fields
.field private static B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/os/Handler;

.field n:Lcom/dolphin/browser/extensions/bh;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/view/ViewGroup;

.field private w:Lcom/dolphin/browser/extensions/n;

.field private x:Landroid/support/v4/app/Fragment;

.field private y:Lcom/dolphin/browser/core/IWebView;

.field private final z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->B:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->z:Ljava/lang/Object;

    .line 165
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gt;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/gt;-><init>(Lmobi/mgeek/TunnyBrowser/ShareActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->C:Landroid/view/View$OnClickListener;

    .line 286
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gu;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/gu;-><init>(Lmobi/mgeek/TunnyBrowser/ShareActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->D:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ShareActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->r:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/dolphin/browser/extensions/bh;->b(Lcom/dolphin/browser/extensions/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {p1}, Lcom/dolphin/browser/extensions/bh;->c(Lcom/dolphin/browser/extensions/n;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e045f

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->u:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ShareActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->h()V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/ShareActivity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->z:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Lcom/dolphin/browser/extensions/n;)V
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-static {p1, p0, p0, v0}, Lcom/dolphin/browser/extensions/bh;->a(Lcom/dolphin/browser/extensions/n;Landroid/content/Context;Lcom/dolphin/browser/extensions/ShareDataProvider;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->e()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/x;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08031d

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/x;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/x;

    .line 189
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->x:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->x:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->x:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/x;

    .line 192
    :cond_0
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->x:Landroid/support/v4/app/Fragment;

    .line 193
    invoke-virtual {v1}, Landroid/support/v4/app/x;->a()I

    .line 194
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300e8

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->setContentView(I)V

    .line 98
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08031a

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->o:Landroid/widget/LinearLayout;

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08031d

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->v:Landroid/view/ViewGroup;

    .line 100
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08031f

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->q:Landroid/widget/LinearLayout;

    .line 101
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->r:Landroid/widget/TextView;

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08031e

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->s:Landroid/widget/TextView;

    .line 103
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08031b

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->p:Landroid/widget/LinearLayout;

    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->t:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->t:Landroid/widget/Button;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/gr;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/gr;-><init>(Lmobi/mgeek/TunnyBrowser/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08031c

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->u:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->u:Landroid/widget/Button;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/gs;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/gs;-><init>(Lmobi/mgeek/TunnyBrowser/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->j()V

    .line 120
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->w:Lcom/dolphin/browser/extensions/n;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->x:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/extensions/bh;->a(Lcom/dolphin/browser/extensions/n;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->w:Lcom/dolphin/browser/extensions/n;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->x:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/extensions/bh;->b(Lcom/dolphin/browser/extensions/n;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->finish()V

    .line 129
    :cond_0
    return-void
.end method

.method private i()V
    .locals 11

    .prologue
    const/4 v4, -0x2

    .line 132
    .line 133
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->n:Lcom/dolphin/browser/extensions/bh;

    .line 134
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/bh;->b()[Lcom/dolphin/browser/extensions/n;

    move-result-object v2

    .line 135
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->q:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 136
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    .line 139
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 144
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 145
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 146
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 148
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v4

    .line 149
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->C:Landroid/view/View$OnClickListener;

    .line 150
    iget-object v6, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->q:Landroid/widget/LinearLayout;

    .line 151
    array-length v7, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_1

    aget-object v8, v2, v0

    .line 152
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v9, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 154
    invoke-static {v8}, Lcom/dolphin/browser/extensions/bh;->a(Lcom/dolphin/browser/extensions/n;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {v1, v8}, Lcom/dolphin/browser/extensions/bh;->d(Lcom/dolphin/browser/extensions/n;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 157
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v8

    sget-object v10, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v10, 0x7f0202a8

    invoke-virtual {v8, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 163
    :cond_1
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const v3, 0x7f0a001a

    .line 204
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->o:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020281

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->v:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02028d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->t:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02028a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->u:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202a4

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->r:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->s:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->p:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202a9

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->n:Lcom/dolphin/browser/extensions/bh;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bh;->a()Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->w:Lcom/dolphin/browser/extensions/n;

    .line 198
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->w:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 199
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->w:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->b(Lcom/dolphin/browser/extensions/n;)V

    .line 200
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->i()V

    .line 201
    return-void
.end method

.method public getPageShortedUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    .line 273
    sget-object v1, Lmobi/mgeek/TunnyBrowser/ShareActivity;->B:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    sget-object v1, Lmobi/mgeek/TunnyBrowser/ShareActivity;->B:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    invoke-static {v0}, Lcom/dolphin/browser/util/cj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    sget-object v2, Lmobi/mgeek/TunnyBrowser/ShareActivity;->B:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public getPageText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 238
    const-string v0, ""

    .line 239
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->y:Lcom/dolphin/browser/core/IWebView;

    if-eqz v1, :cond_0

    .line 240
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->D:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->z:Ljava/lang/Object;

    .line 243
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :try_start_1
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->y:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v2, v0}, Lcom/dolphin/browser/core/IWebView;->documentAsText(Landroid/os/Message;)V

    .line 245
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 246
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->A:Ljava/lang/String;

    .line 251
    :cond_0
    if-nez v0, :cond_1

    .line 252
    const-string v0, ""

    .line 254
    :cond_1
    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    const-string v0, ""

    .line 227
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->y:Lcom/dolphin/browser/core/IWebView;

    if-eqz v1, :cond_0

    .line 228
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->y:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    if-nez v0, :cond_1

    .line 231
    const-string v0, ""

    .line 233
    :cond_1
    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    const-string v0, ""

    .line 260
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->y:Lcom/dolphin/browser/core/IWebView;

    if-eqz v1, :cond_0

    .line 261
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->y:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 262
    if-nez v0, :cond_0

    .line 263
    const-string v0, ""

    .line 266
    :cond_0
    return-object v0
.end method

.method public getShareText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->getPageTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->getPageTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->requestWindowFeature(I)Z

    .line 79
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 81
    invoke-static {p0}, Lcom/dolphin/browser/extensions/bh;->a(Landroid/content/Context;)Lcom/dolphin/browser/extensions/bh;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->n:Lcom/dolphin/browser/extensions/bh;

    .line 82
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->n:Lcom/dolphin/browser/extensions/bh;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bh;->b()[Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03b1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->finish()V

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->y:Lcom/dolphin/browser/core/IWebView;

    .line 93
    :goto_1
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->g()V

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ShareActivity;->y:Lcom/dolphin/browser/core/IWebView;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 312
    invoke-static {p0}, Lcom/dolphin/browser/util/ae;->b(Landroid/content/Context;)V

    .line 313
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 306
    invoke-static {p0}, Lcom/dolphin/browser/util/ae;->a(Landroid/content/Context;)V

    .line 307
    return-void
.end method
