.class public Lcom/dolphin/browser/share/a/a;
.super Landroid/app/Dialog;
.source "EvernoteAddTagDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/dolphin/browser/share/a/f;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Lcom/dolphin/browser/share/a/t;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/AdapterView$OnItemClickListener;

.field private p:Ljava/util/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f001e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 230
    new-instance v0, Lcom/dolphin/browser/share/a/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/a/d;-><init>(Lcom/dolphin/browser/share/a/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->o:Landroid/widget/AdapterView$OnItemClickListener;

    .line 242
    new-instance v0, Lcom/dolphin/browser/share/a/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/a/e;-><init>(Lcom/dolphin/browser/share/a/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->p:Ljava/util/Observer;

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300e9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->setContentView(I)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/share/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/a;->b()V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/a/a;)Lcom/dolphin/browser/share/a/t;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->d:Lcom/dolphin/browser/share/a/t;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080320

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->k:Landroid/view/ViewGroup;

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080321

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->l:Landroid/widget/RelativeLayout;

    .line 63
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080322

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->m:Landroid/widget/TextView;

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080329

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->n:Landroid/view/View;

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080323

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->j:Landroid/widget/ImageView;

    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080324

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->e:Landroid/view/View;

    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080325

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->f:Landroid/widget/TextView;

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080326

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->g:Landroid/view/View;

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080327

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->h:Landroid/widget/EditText;

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080328

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->i:Landroid/widget/TextView;

    .line 71
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08032a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    .line 72
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08032b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->c:Landroid/view/View;

    .line 74
    new-instance v0, Lcom/dolphin/browser/share/a/t;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/share/a/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/a/a;->d:Lcom/dolphin/browser/share/a/t;

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->d:Lcom/dolphin/browser/share/a/t;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02001c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->p:Ljava/util/Observer;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/q/b/ag;->a(Ljava/util/Observer;I)V

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Lcom/dolphin/browser/share/a/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/a/b;-><init>(Lcom/dolphin/browser/share/a/a;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/a;->a()V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/a/a;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/a/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 223
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 228
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0596

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 208
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/q/b/ag;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0592

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/dolphin/browser/share/a/c;

    invoke-direct {v3, p0, v2}, Lcom/dolphin/browser/share/a/c;-><init>(Lcom/dolphin/browser/share/a/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v3}, Lcom/dolphin/browser/q/b/ag;->a(Ljava/lang/String;Lcom/dolphin/browser/q/b/bd;)V

    .line 205
    invoke-direct {p0, v4}, Lcom/dolphin/browser/share/a/a;->a(Z)V

    .line 206
    invoke-direct {p0, v4}, Lcom/dolphin/browser/share/a/a;->b(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->d:Lcom/dolphin/browser/share/a/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/a/t;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/share/a/f;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dolphin/browser/share/a/a;->a:Lcom/dolphin/browser/share/a/f;

    .line 253
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->d:Lcom/dolphin/browser/share/a/t;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/share/a/t;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public b()V
    .locals 10

    .prologue
    const v9, 0x7f02000a

    const v8, 0x7f0a0127

    const/4 v7, 0x0

    const v6, 0x7f0a0062

    const/4 v5, 0x0

    .line 115
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->k:Landroid/view/ViewGroup;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00fd

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 119
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->l:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 121
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->n:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020291

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->c:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020291

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->e:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->f:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0128

    invoke-virtual {v1, v9, v8, v3, v7}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->f:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0189

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->j:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200d0

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0128

    invoke-virtual {v1, v3, v8, v4, v7}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 145
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 147
    iget-object v4, p0, Lcom/dolphin/browser/share/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {v4, v3, v2, v3, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 148
    iget-object v2, p0, Lcom/dolphin/browser/share/a/a;->i:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v9, v6, v6, v7}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 155
    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b8

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->b:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00fd

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 157
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 162
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080323

    if-ne v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/share/a/a;->d:Lcom/dolphin/browser/share/a/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/a/t;->c()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->a:Lcom/dolphin/browser/share/a/f;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/dolphin/browser/share/a/a;->a:Lcom/dolphin/browser/share/a/f;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/share/a/f;->a(Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080325

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080324

    if-ne v0, v1, :cond_3

    .line 170
    :cond_2
    invoke-direct {p0, v2}, Lcom/dolphin/browser/share/a/a;->a(Z)V

    .line 171
    invoke-direct {p0, v2}, Lcom/dolphin/browser/share/a/a;->b(Z)V

    goto :goto_0

    .line 172
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080328

    if-ne v0, v1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/a;->c()V

    goto :goto_0
.end method
