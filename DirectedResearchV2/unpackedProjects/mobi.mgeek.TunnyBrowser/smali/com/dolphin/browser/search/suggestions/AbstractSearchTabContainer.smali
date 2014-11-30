.class public abstract Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;
.super Landroid/widget/LinearLayout;
.source "AbstractSearchTabContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/dolphin/browser/search/p;

.field protected e:Lcom/dolphin/browser/search/suggestions/h;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/dolphin/browser/search/suggestions/i;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->o:Z

    .line 85
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->o:Z

    .line 79
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->o:Z

    .line 73
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Lcom/dolphin/browser/search/suggestions/i;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->s:Z

    return p1
.end method

.method static synthetic e(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->t:Z

    return v0
.end method

.method static synthetic e(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->t:Z

    return p1
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isEnableSearchSuggestion()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/suggestions/i;->a(I)I

    move-result v0

    return v0
.end method

.method protected a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/search/suggestions/i;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected a()V
    .locals 4

    .prologue
    const v3, 0x7f0a00ea

    .line 121
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->g:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a019a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->i:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->i:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00d5

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->l:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00da

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->m:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00db

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->h:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->g:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 139
    return-void
.end method

.method protected a(J)V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    const-string v1, "com.dolphin.browser.action.EDIT_BOOKMARK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string v1, "com.dolphin.browser.action.bookmark.folderId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 282
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->i()V

    .line 283
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public a(Lcom/dolphin/browser/search/p;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d:Lcom/dolphin/browser/search/p;

    .line 288
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/suggestions/h;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->e:Lcom/dolphin/browser/search/suggestions/h;

    .line 174
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n()V

    .line 376
    return-void
.end method

.method protected b(I)J
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/suggestions/i;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract b()Landroid/graphics/drawable/Drawable;
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300dc

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 97
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->addView(Landroid/view/View;)V

    .line 98
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080303

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a:Landroid/widget/LinearLayout;

    .line 99
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080300

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b:Landroid/widget/LinearLayout;

    .line 100
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080304

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->g:Landroid/widget/ListView;

    .line 101
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080305

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->h:Landroid/view/View;

    .line 102
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080306

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->k:Landroid/widget/ImageView;

    .line 104
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080307

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->l:Landroid/widget/TextView;

    .line 105
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080308

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->m:Landroid/widget/TextView;

    .line 107
    new-instance v1, Lcom/dolphin/browser/search/suggestions/i;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/search/suggestions/i;-><init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    .line 108
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->g:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->g:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->f:Landroid/view/View;

    .line 115
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a()V

    .line 117
    return-void
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract c(I)Ljava/lang/String;
.end method

.method protected c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300db

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080302

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->j:Landroid/widget/TextView;

    .line 154
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080301

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->i:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract d(I)V
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d:Lcom/dolphin/browser/search/p;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d:Lcom/dolphin/browser/search/p;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/search/p;->a(Landroid/view/MotionEvent;)V

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected e(I)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->h()Landroid/database/Cursor;

    move-result-object v0

    .line 453
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 454
    return-object v0
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->o()V

    .line 178
    return-void
.end method

.method protected g()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const v8, 0x7f0a0042

    const/16 v7, 0xa

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->p:Z

    .line 186
    iput-boolean v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->q:Z

    .line 187
    iput-boolean v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->r:Z

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300d4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 189
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802f2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 190
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801e2

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 191
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0801e3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 192
    iget-boolean v4, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->p:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    iget-boolean v4, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->q:Z

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    iget-boolean v4, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->r:Z

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_0

    .line 198
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 201
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_1

    .line 202
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 205
    :cond_1
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_2

    .line 206
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 209
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    .line 210
    iget-object v5, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v5, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v5, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 214
    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 215
    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 216
    new-instance v4, Lcom/dolphin/browser/search/suggestions/a;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/search/suggestions/a;-><init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    new-instance v1, Lcom/dolphin/browser/search/suggestions/b;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/search/suggestions/b;-><init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    new-instance v0, Lcom/dolphin/browser/search/suggestions/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/suggestions/c;-><init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0548

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0547

    new-instance v2, Lcom/dolphin/browser/search/suggestions/e;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/search/suggestions/e;-><init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0545

    new-instance v2, Lcom/dolphin/browser/search/suggestions/d;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/search/suggestions/d;-><init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 274
    return-void
.end method

.method public h()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/i;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/i;->getCount()I

    move-result v0

    return v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/i;->a()I

    move-result v0

    return v0
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/i;->b()I

    move-result v0

    return v0
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n:Lcom/dolphin/browser/search/suggestions/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/i;->notifyDataSetChanged()V

    .line 370
    return-void
.end method

.method protected m()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->i()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->n()V

    .line 388
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected n()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 391
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->i()I

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->o:Z

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final o()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 405
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->s:Z

    if-eqz v0, :cond_1

    .line 409
    iput-boolean v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->t:Z

    goto :goto_0

    .line 413
    :cond_1
    iput-boolean v1, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->s:Z

    .line 415
    new-instance v0, Lcom/dolphin/browser/search/suggestions/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/suggestions/g;-><init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 340
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/dolphin/browser/search/suggestions/k;

    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/search/suggestions/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    new-instance v2, Lcom/dolphin/browser/search/suggestions/f;

    invoke-direct {v2, p0, v0, p3}, Lcom/dolphin/browser/search/suggestions/f;-><init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/suggestions/k;->a(Lcom/dolphin/browser/search/suggestions/l;)V

    .line 327
    invoke-virtual {v1}, Lcom/dolphin/browser/search/suggestions/k;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 331
    :cond_0
    invoke-virtual {v1}, Lcom/dolphin/browser/search/suggestions/k;->a()V

    .line 333
    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract p()Landroid/database/Cursor;
.end method

.method protected abstract q()V
.end method
