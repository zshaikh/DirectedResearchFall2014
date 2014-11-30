.class public Lcom/dolphin/browser/titlebar/k;
.super Landroid/widget/LinearLayout;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lmobi/mgeek/TunnyBrowser/ft;


# instance fields
.field private A:Lcom/dolphin/browser/titlebar/TitleBarItem;

.field private B:Lcom/dolphin/browser/titlebar/TitleBarItem;

.field private C:Lcom/dolphin/browser/titlebar/TitleBarItem;

.field private D:Lcom/dolphin/browser/titlebar/TitleBarItem;

.field private E:[Landroid/view/View;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/FrameLayout$LayoutParams;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:I

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:Ljava/lang/String;

.field private P:Z

.field private Q:Lcom/dolphin/browser/titlebar/p;

.field private R:Z

.field private S:Lcom/dolphin/browser/titlebar/o;

.field private T:Landroid/view/View$OnTouchListener;

.field private U:I

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/dolphin/browser/titlebar/TitleBarItem;

.field private d:Lcom/dolphin/browser/titlebar/TinyTitleBar;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private j:Landroid/view/View;

.field private k:Landroid/graphics/Bitmap;

.field private l:Lcom/dolphin/browser/tabbar/d;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/ViewGroup;

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Lcom/dolphin/browser/core/TabManager;

.field private r:I

.field private s:I

.field private t:Lcom/dolphin/browser/theme/bf;

.field private u:Lcom/dolphin/browser/titlebar/TitleBarItem;

.field private v:Lcom/dolphin/browser/titlebar/TitleBarItem;

.field private w:Landroid/widget/ImageView;

.field private x:[Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Lcom/dolphin/browser/titlebar/TitleBarItem;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 351
    iput-boolean v1, p0, Lcom/dolphin/browser/titlebar/k;->L:Z

    .line 797
    iput-object v2, p0, Lcom/dolphin/browser/titlebar/k;->Q:Lcom/dolphin/browser/titlebar/p;

    .line 808
    iput-object v2, p0, Lcom/dolphin/browser/titlebar/k;->S:Lcom/dolphin/browser/titlebar/o;

    .line 136
    iput-object p2, p0, Lcom/dolphin/browser/titlebar/k;->q:Lcom/dolphin/browser/core/TabManager;

    .line 137
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03010f

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 138
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->p:Landroid/view/View;

    .line 139
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 141
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b014d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 142
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v0, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v3, p0, Lcom/dolphin/browser/titlebar/k;->H:Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/titlebar/k;->setOrientation(I)V

    .line 146
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->t:Lcom/dolphin/browser/theme/bf;

    .line 148
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v3

    .line 151
    sget-object v4, Lcom/dolphin/browser/ui/a/c;->a:Lcom/dolphin/browser/ui/a/c;

    if-eq v3, v4, :cond_2

    .line 152
    new-instance v4, Lcom/dolphin/browser/tabbar/d;

    invoke-direct {v4, p1, p2, p0}, Lcom/dolphin/browser/tabbar/d;-><init>(Landroid/content/Context;Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/titlebar/k;)V

    iput-object v4, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    .line 153
    iget-object v4, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    iget-object v5, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x()Lcom/dolphin/browser/tabbar/i;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/tabbar/d;->a(Lcom/dolphin/browser/tabbar/i;)V

    .line 155
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->c()I

    move-result v0

    .line 158
    sget-object v4, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v3, v4, :cond_0

    if-eq v0, v6, :cond_1

    :cond_0
    sget-object v0, Lcom/dolphin/browser/ui/a/c;->c:Lcom/dolphin/browser/ui/a/c;

    if-ne v3, v0, :cond_2

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->a()V

    .line 164
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803ba

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TinyTitleBar;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->d:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    .line 165
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    .line 167
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->b:Landroid/widget/TextView;

    .line 169
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    new-instance v3, Lcom/dolphin/browser/titlebar/l;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/titlebar/l;-><init>(Lcom/dolphin/browser/titlebar/k;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803ad

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->j:Landroid/view/View;

    .line 206
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803ae

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->f:Landroid/widget/ImageView;

    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803af

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->m:Landroid/view/ViewGroup;

    .line 210
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->n:Landroid/view/ViewGroup;

    .line 212
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TitleBarItem;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->c:Lcom/dolphin/browser/titlebar/TitleBarItem;

    .line 214
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TitleBarItem;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    .line 215
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TitleBarItem;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    .line 216
    new-array v0, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    aput-object v3, v0, v6

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->x:[Landroid/view/View;

    .line 218
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TitleBarItem;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    .line 219
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TitleBarItem;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    .line 220
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TitleBarItem;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    .line 221
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TitleBarItem;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    .line 222
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/TitleBarItem;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->D:Lcom/dolphin/browser/titlebar/TitleBarItem;

    .line 224
    new-array v0, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    aput-object v3, v0, v7

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/dolphin/browser/titlebar/k;->D:Lcom/dolphin/browser/titlebar/TitleBarItem;

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->E:[Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v0, Lcom/dolphin/browser/h/f;

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-direct {v0, v3, v4, v1}, Lcom/dolphin/browser/h/f;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 234
    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->D:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->y:Landroid/widget/ImageView;

    .line 238
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->w:Landroid/widget/ImageView;

    .line 239
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/k;->a(Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->c:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    if-nez p2, :cond_3

    move-object v3, v2

    .line 245
    :goto_0
    if-nez v3, :cond_4

    move v2, v1

    .line 246
    :goto_1
    if-nez v3, :cond_5

    move v0, v1

    .line 247
    :goto_2
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setEnabled(Z)V

    .line 250
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->c()V

    .line 251
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803b8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->G:Landroid/widget/ImageView;

    .line 252
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->e()V

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->m_()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_3
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->A()Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V

    .line 261
    const-string v0, "TitleBar"

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 244
    :cond_3
    invoke-virtual {p2}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 245
    :cond_4
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->canGoBack()Z

    move-result v0

    move v2, v0

    goto :goto_1

    .line 246
    :cond_5
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->canGoForward()Z

    move-result v0

    goto :goto_2

    .line 256
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    if-nez p0, :cond_0

    .line 505
    const/4 v0, 0x0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    invoke-static {p1}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    const/4 p1, 0x0

    .line 518
    :cond_0
    :goto_0
    return-object p1

    .line 515
    :cond_1
    invoke-static {p0}, Lcom/dolphin/browser/util/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p0

    .line 518
    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 289
    invoke-static {p1}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    .line 290
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v1

    .line 291
    sget-object v2, Lcom/dolphin/browser/titlebar/n;->a:[I

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/c;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 318
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->t()V

    .line 319
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->c:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    goto :goto_0

    .line 300
    :pswitch_1
    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->D:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->D:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 958
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 959
    sget-object v1, Lcom/dolphin/browser/titlebar/n;->a:[I

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 972
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->t()V

    .line 973
    return-void

    .line 961
    :pswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 962
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 963
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 964
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 965
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 966
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 967
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    goto :goto_0

    .line 961
    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    .line 959
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 481
    const/4 v1, 0x0

    .line 482
    if-nez p0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    const-string v2, "file:///android_asset"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    const-string v2, "about:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/dolphin/browser/core/ITab;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    if-nez p0, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 499
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/titlebar/k;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 269
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    const/high16 v1, 0x41200000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/titlebar/k;->H:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/titlebar/TitleBarItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/titlebar/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->O:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->d:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->setVisibility(I)V

    .line 446
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->j()V

    .line 447
    return-void
.end method

.method private q()V
    .locals 0

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->k()V

    .line 453
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/titlebar/k;->a(Landroid/graphics/Bitmap;)V

    .line 549
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/titlebar/k;->a(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->d:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->setVisibility(I)V

    .line 551
    return-void
.end method

.method private s()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 604
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v1

    .line 605
    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v2

    .line 606
    sget-object v3, Lcom/dolphin/browser/ui/a/c;->a:Lcom/dolphin/browser/ui/a/c;

    if-ne v2, v3, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v0

    .line 608
    :cond_1
    sget-object v3, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->c()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 612
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 976
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->x:[Landroid/view/View;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a([Landroid/view/View;)Z

    move-result v0

    .line 977
    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->E:[Landroid/view/View;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a([Landroid/view/View;)Z

    move-result v0

    .line 979
    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->y:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 980
    return-void

    :cond_0
    move v0, v2

    .line 977
    goto :goto_0

    :cond_1
    move v1, v2

    .line 979
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b012a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/titlebar/k;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->m_()V

    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tabbar/d;->a(I)V

    .line 345
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/titlebar/k;->a(Z)V

    .line 346
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 360
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/k;->k:Landroid/graphics/Bitmap;

    .line 361
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 362
    if-eqz p1, :cond_0

    .line 363
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 364
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02001d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020125

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/j;->c(Z)V

    .line 920
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->r()V

    .line 921
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 922
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 923
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/titlebar/k;->draw(Landroid/graphics/Canvas;)V

    .line 924
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/j;->c(Z)V

    .line 925
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 385
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/k;->N:Landroid/graphics/drawable/Drawable;

    .line 386
    if-nez p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tabbar/d;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 896
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    .locals 2

    .prologue
    .line 556
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->m:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->n:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p1}, Lmobi/mgeek/TunnyBrowser/eu;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->o:Z

    .line 561
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/titlebar/o;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/k;->S:Lcom/dolphin/browser/titlebar/o;

    .line 812
    return-void
.end method

.method public a(Lcom/dolphin/browser/titlebar/p;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/k;->Q:Lcom/dolphin/browser/titlebar/p;

    .line 801
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->c()V

    .line 413
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 416
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method

.method public a(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 984
    instance-of v0, p1, Lcom/dolphin/browser/k/m;

    if-eqz v0, :cond_1

    .line 985
    check-cast p1, Lcom/dolphin/browser/k/m;

    .line 986
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/m;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setEnabled(Z)V

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/k/n;

    if-eqz v0, :cond_2

    .line 988
    check-cast p1, Lcom/dolphin/browser/k/n;

    .line 989
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/n;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setEnabled(Z)V

    goto :goto_0

    .line 990
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/k/o;

    if-eqz v0, :cond_3

    .line 991
    check-cast p1, Lcom/dolphin/browser/k/o;

    .line 992
    invoke-virtual {p1}, Lcom/dolphin/browser/k/o;->a()I

    move-result v0

    .line 993
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 994
    :cond_3
    instance-of v0, p1, Lcom/dolphin/browser/k/d;

    if-eqz v0, :cond_5

    .line 995
    check-cast p1, Lcom/dolphin/browser/k/d;

    .line 996
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dolphin/browser/k/d;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020144

    :goto_1
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202af

    goto :goto_1

    .line 1000
    :cond_5
    instance-of v0, p1, Lcom/dolphin/browser/k/e;

    if-eqz v0, :cond_0

    .line 1001
    check-cast p1, Lcom/dolphin/browser/k/e;

    .line 1002
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b(I)V
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 399
    iput p1, p0, Lcom/dolphin/browser/titlebar/k;->M:I

    .line 400
    iget-boolean v1, p0, Lcom/dolphin/browser/titlebar/k;->K:Z

    if-eqz v1, :cond_0

    move p1, v0

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->d:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->a(I)V

    .line 404
    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    .line 405
    :goto_0
    if-eqz v0, :cond_2

    .line 406
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->q()V

    .line 410
    :goto_1
    return-void

    .line 404
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->g()V

    goto :goto_1
.end method

.method public b(Lcom/dolphin/browser/titlebar/k;)V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p1, Lcom/dolphin/browser/titlebar/k;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->a(Landroid/graphics/Bitmap;)V

    .line 901
    iget-object v0, p1, Lcom/dolphin/browser/titlebar/k;->O:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->b(Ljava/lang/String;)V

    .line 902
    iget v0, p1, Lcom/dolphin/browser/titlebar/k;->M:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->b(I)V

    .line 903
    iget-object v0, p1, Lcom/dolphin/browser/titlebar/k;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->a(Landroid/graphics/drawable/Drawable;)V

    .line 904
    iget-object v0, p1, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    .line 905
    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/CharSequence;)V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    iget-object v1, p1, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-virtual {v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setEnabled(Z)V

    .line 909
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->o()V

    .line 910
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->l()Lcom/dolphin/browser/tabbar/d;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_1

    .line 912
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tabbar/d;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 914
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 526
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/k;->O:Ljava/lang/String;

    .line 527
    if-nez p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iput-boolean v4, p0, Lcom/dolphin/browser/titlebar/k;->K:Z

    goto :goto_0

    .line 534
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isGalaxyTab()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :goto_1
    iput-boolean v3, p0, Lcom/dolphin/browser/titlebar/k;->K:Z

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/dolphin/browser/titlebar/k;->r:I

    iget v2, p0, Lcom/dolphin/browser/titlebar/k;->s:I

    invoke-static {p1, v1, v3, v2, v4}, Lcom/dolphin/browser/util/dp;->a(Ljava/lang/String;IIII)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 938
    iput p1, p0, Lcom/dolphin/browser/titlebar/k;->U:I

    .line 939
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->invalidate()V

    .line 940
    return-void
.end method

.method public c(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 565
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->c:Lcom/dolphin/browser/titlebar/TitleBarItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->c:Lcom/dolphin/browser/titlebar/TitleBarItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->I:Z

    if-eq v0, p1, :cond_0

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->P:Z

    .line 781
    :cond_0
    iput-boolean p1, p0, Lcom/dolphin/browser/titlebar/k;->I:Z

    .line 782
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/d;->c()V

    .line 785
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->requestLayout()V

    .line 786
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 5

    .prologue
    .line 670
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 671
    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f10000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 672
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 673
    invoke-static {v0}, Lcom/dolphin/browser/util/cn;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 674
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 676
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-string v4, "titleBar_pasted_link"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;JLjava/lang/String;)Z

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 681
    return-void
.end method

.method public d(Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 574
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->o:Z

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->m:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/dolphin/browser/titlebar/k;->n:Landroid/view/ViewGroup;

    invoke-static {v0, v2, p1}, Lmobi/mgeek/TunnyBrowser/eu;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/core/ITab;)V

    .line 577
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/core/ITab;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 579
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 580
    if-nez v0, :cond_1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/titlebar/k;->c(Lcom/dolphin/browser/core/ITab;)V

    .line 587
    return-void

    :cond_3
    move v0, v1

    .line 577
    goto :goto_0

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->J:Z

    if-eq v0, p1, :cond_0

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->R:Z

    .line 792
    :cond_0
    iput-boolean p1, p0, Lcom/dolphin/browser/titlebar/k;->J:Z

    .line 793
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->requestLayout()V

    .line 794
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->J:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 874
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 875
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->T:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 876
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->T:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 878
    :cond_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 764
    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->X()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/dolphin/browser/titlebar/k;->U:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 768
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 769
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->G:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->G:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->G:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public e(Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 591
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->o:Z

    if-eqz v0, :cond_1

    .line 592
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->s()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 593
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 594
    if-nez v0, :cond_0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 592
    goto :goto_0

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tabbar/d;->b(Z)V

    .line 954
    :cond_0
    return-void
.end method

.method public f()Landroid/view/View;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->removeView(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    goto :goto_0
.end method

.method public f(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tabbar/d;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 932
    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->h()Z

    move-result v1

    .line 421
    if-eqz v1, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->p()V

    .line 426
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/p;

    .line 428
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/p;->b(Z)V

    .line 429
    return-void

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/k;->q()V

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->q:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/titlebar/h;->a()Lcom/dolphin/browser/titlebar/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/core/ITab;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->d:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->setVisibility(I)V

    .line 441
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 457
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->c:Lcom/dolphin/browser/titlebar/TitleBarItem;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 458
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/g;->c(Z)V

    .line 460
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/g;->d(Z)V

    .line 462
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->c:Lcom/dolphin/browser/titlebar/TitleBarItem;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 467
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/g;->c(Z)V

    .line 469
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/g;->d(Z)V

    .line 471
    return-void
.end method

.method public l()Lcom/dolphin/browser/tabbar/d;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->L:Z

    return v0
.end method

.method public m_()V
    .locals 9

    .prologue
    const v8, 0x7f0a0140

    const v4, 0x7f0a013f

    const v7, 0x7f0803aa

    const v6, 0x7f060034

    const v5, 0x7f060031

    .line 685
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 686
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->t:Lcom/dolphin/browser/theme/bf;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/bf;->updateTheme()V

    .line 687
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    .line 688
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 691
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0141

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 692
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->j:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02001a

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->p:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0124

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {p0, v7}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020017

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0143

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/titlebar/k;->r:I

    .line 697
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0141

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/titlebar/k;->s:I

    .line 698
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    invoke-virtual {v2, v6}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->g:Landroid/graphics/drawable/Drawable;

    .line 700
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->h:Landroid/graphics/drawable/Drawable;

    .line 718
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/d;->b()V

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 725
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060043

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 727
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060040

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 729
    iget-object v3, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/a/a;->d()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f06002f

    :goto_1
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 734
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060036

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->F:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/util/bb;->d()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 737
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202c4

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 738
    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 739
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/k;->G:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->D:Lcom/dolphin/browser/titlebar/TitleBarItem;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201e4

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/graphics/drawable/Drawable;)V

    .line 743
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->d:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->n_()V

    .line 744
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->j()V

    .line 750
    :goto_2
    new-instance v0, Lcom/dolphin/browser/titlebar/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/titlebar/m;-><init>(Lcom/dolphin/browser/titlebar/k;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 757
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/k;->a(Landroid/graphics/Bitmap;)V

    .line 758
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->invalidate()V

    .line 759
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 704
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 705
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->a:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0142

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->j:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02001b

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->p:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 708
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {p0, v7}, Lcom/dolphin/browser/titlebar/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020018

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0144

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/titlebar/k;->r:I

    .line 711
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0142

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/titlebar/k;->s:I

    .line 712
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    invoke-virtual {v2, v6}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->g:Landroid/graphics/drawable/Drawable;

    .line 714
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/k;->h:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 729
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060033

    goto/16 :goto_1

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->k()V

    goto/16 :goto_2
.end method

.method public n()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 884
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->l:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/d;->a()V

    .line 947
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 618
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->j:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 619
    const-string v0, "Click Address Bar To Show SearchDialog"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 620
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGo2()Z

    .line 621
    const-string v0, "address bar"

    const-string v1, "click"

    const-string v2, "inputbox"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->D:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-eq p1, v0, :cond_1

    .line 656
    new-instance v0, Lcom/dolphin/browser/c/j;

    invoke-direct {v0}, Lcom/dolphin/browser/c/j;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/j;->a()Z

    .line 658
    :cond_1
    return-void

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->c:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-ne v0, p1, :cond_4

    .line 624
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->u()Z

    goto :goto_0

    .line 628
    :cond_3
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->f:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_5

    .line 633
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->i:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->v()Z

    goto :goto_0

    .line 634
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->u:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-ne v0, p1, :cond_6

    .line 635
    new-instance v0, Lcom/dolphin/browser/c/u;

    invoke-direct {v0}, Lcom/dolphin/browser/c/u;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/u;->a()Z

    goto :goto_0

    .line 636
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->v:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-ne v0, p1, :cond_7

    .line 637
    new-instance v0, Lcom/dolphin/browser/c/w;

    invoke-direct {v0}, Lcom/dolphin/browser/c/w;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/w;->a()Z

    goto :goto_0

    .line 638
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->z:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-ne v0, p1, :cond_8

    .line 639
    new-instance v0, Lcom/dolphin/browser/c/z;

    invoke-direct {v0}, Lcom/dolphin/browser/c/z;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/z;->a()Z

    goto :goto_0

    .line 640
    :cond_8
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->A:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-ne v0, p1, :cond_9

    .line 641
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionLoadHomepage2()Z

    goto :goto_0

    .line 645
    :cond_9
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->B:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-ne v0, p1, :cond_a

    .line 646
    new-instance v0, Lcom/dolphin/browser/c/m;

    invoke-direct {v0}, Lcom/dolphin/browser/c/m;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/m;->a()Z

    goto :goto_0

    .line 647
    :cond_a
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->C:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-ne v0, p1, :cond_b

    .line 648
    new-instance v0, Lcom/dolphin/browser/c/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/c/aa;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/aa;->a()Z

    .line 649
    invoke-static {v2}, Lcom/dolphin/browser/tablist/cc;->c(Z)V

    .line 650
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/a;->c()V

    goto/16 :goto_0

    .line 652
    :cond_b
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->D:Lcom/dolphin/browser/titlebar/TitleBarItem;

    if-ne v0, p1, :cond_0

    .line 653
    new-instance v0, Lcom/dolphin/browser/c/z;

    invoke-direct {v0}, Lcom/dolphin/browser/c/z;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/z;->a()Z

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 838
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 840
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->Q:Lcom/dolphin/browser/titlebar/p;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->Q:Lcom/dolphin/browser/titlebar/p;

    invoke-interface {v0}, Lcom/dolphin/browser/titlebar/p;->a()V

    .line 842
    iput-boolean v1, p0, Lcom/dolphin/browser/titlebar/k;->P:Z

    .line 844
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/k;->R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->S:Lcom/dolphin/browser/titlebar/o;

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/k;->S:Lcom/dolphin/browser/titlebar/o;

    invoke-interface {v0}, Lcom/dolphin/browser/titlebar/o;->a()V

    .line 846
    iput-boolean v1, p0, Lcom/dolphin/browser/titlebar/k;->R:Z

    .line 848
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 663
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->o()V

    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 824
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 826
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/k;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    invoke-virtual {p0, v1, v1}, Lcom/dolphin/browser/titlebar/k;->setMeasuredDimension(II)V

    .line 828
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/titlebar/k;->setWillNotDraw(Z)V

    .line 832
    :goto_0
    iput-boolean v2, p0, Lcom/dolphin/browser/titlebar/k;->L:Z

    .line 833
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/titlebar/k;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/k;->T:Landroid/view/View$OnTouchListener;

    .line 869
    return-void
.end method
