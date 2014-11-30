.class public Lcom/dolphin/browser/search/ui/c;
.super Landroid/app/Dialog;
.source "SearchDialog.java"


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:Ljava/util/Observer;

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/app/Dialog;

.field private H:Z

.field private I:Landroid/view/View$OnClickListener;

.field private J:Landroid/content/DialogInterface$OnDismissListener;

.field private K:Z

.field private L:Lcom/dolphin/browser/search/p;

.field private M:Landroid/view/View$OnFocusChangeListener;

.field private N:Ljava/lang/Runnable;

.field private O:Landroid/text/TextWatcher;

.field private P:Landroid/view/View$OnTouchListener;

.field private Q:Lcom/dolphin/browser/search/r;

.field private R:Landroid/view/View$OnLongClickListener;

.field private S:Landroid/content/DialogInterface$OnDismissListener;

.field private T:Lcom/dolphin/browser/search/ui/a;

.field private U:Z

.field private V:Lcom/dolphin/browser/search/ui/y;

.field private W:Landroid/support/v4/view/cc;

.field private X:Lcom/dolphin/browser/search/suggestions/x;

.field a:Landroid/view/View$OnKeyListener;

.field private b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/dolphin/browser/search/a;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Landroid/text/style/BackgroundColorSpan;

.field private n:Landroid/text/style/ForegroundColorSpan;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/content/Context;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Z

.field private u:Lcom/dolphin/browser/search/ui/SearchDialogRootView;

.field private v:Lcom/dolphin/browser/search/ui/x;

.field private w:Landroid/view/View;

.field private x:Lcom/dolphin/browser/search/suggestions/z;

.field private y:Landroid/support/v4/view/ViewPager;

.field private z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0055

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 119
    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->p:Landroid/widget/ImageView;

    .line 120
    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/dolphin/browser/search/ui/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/d;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->C:Ljava/util/Observer;

    .line 380
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->D:Landroid/os/Handler;

    .line 461
    new-instance v0, Lcom/dolphin/browser/search/ui/r;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/r;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->E:Landroid/view/View$OnClickListener;

    .line 476
    new-instance v0, Lcom/dolphin/browser/search/ui/s;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/s;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->F:Landroid/view/View$OnClickListener;

    .line 514
    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->G:Landroid/app/Dialog;

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->H:Z

    .line 516
    new-instance v0, Lcom/dolphin/browser/search/ui/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/t;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->I:Landroid/view/View$OnClickListener;

    .line 534
    new-instance v0, Lcom/dolphin/browser/search/ui/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/u;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->J:Landroid/content/DialogInterface$OnDismissListener;

    .line 551
    new-instance v0, Lcom/dolphin/browser/search/ui/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/v;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->L:Lcom/dolphin/browser/search/p;

    .line 607
    new-instance v0, Lcom/dolphin/browser/search/ui/w;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/w;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->a:Landroid/view/View$OnKeyListener;

    .line 656
    new-instance v0, Lcom/dolphin/browser/search/ui/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/e;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->M:Landroid/view/View$OnFocusChangeListener;

    .line 708
    new-instance v0, Lcom/dolphin/browser/search/ui/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/f;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->N:Ljava/lang/Runnable;

    .line 738
    new-instance v0, Lcom/dolphin/browser/search/ui/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/g;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->O:Landroid/text/TextWatcher;

    .line 824
    new-instance v0, Lcom/dolphin/browser/search/ui/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/h;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->P:Landroid/view/View$OnTouchListener;

    .line 878
    new-instance v0, Lcom/dolphin/browser/search/ui/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/i;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->Q:Lcom/dolphin/browser/search/r;

    .line 905
    new-instance v0, Lcom/dolphin/browser/search/ui/j;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/j;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->R:Landroid/view/View$OnLongClickListener;

    .line 1114
    new-instance v0, Lcom/dolphin/browser/search/ui/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/l;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->T:Lcom/dolphin/browser/search/ui/a;

    .line 1133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->U:Z

    .line 1140
    new-instance v0, Lcom/dolphin/browser/search/ui/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/m;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->V:Lcom/dolphin/browser/search/ui/y;

    .line 1152
    new-instance v0, Lcom/dolphin/browser/search/ui/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/n;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->W:Landroid/support/v4/view/cc;

    .line 1168
    new-instance v0, Lcom/dolphin/browser/search/ui/p;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/p;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->X:Lcom/dolphin/browser/search/suggestions/x;

    .line 160
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    .line 161
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/ui/c;->a(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method static synthetic A(Lcom/dolphin/browser/search/ui/c;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/dolphin/browser/search/ui/c;->s:I

    return v0
.end method

.method static synthetic B(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/x;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->v:Lcom/dolphin/browser/search/ui/x;

    return-object v0
.end method

.method static synthetic C(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/suggestions/z;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->x:Lcom/dolphin/browser/search/suggestions/z;

    return-object v0
.end method

.method static synthetic D(Lcom/dolphin/browser/search/ui/c;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->y:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/c;->G:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 996
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 998
    if-eqz p2, :cond_0

    .line 999
    const-string v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1002
    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/ui/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 167
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/search/ui/c;->setCanceledOnTouchOutside(Z)V

    .line 170
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300d3

    invoke-static {p1, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 171
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802e5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->B:Landroid/view/View;

    .line 172
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802eb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    .line 173
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setThreshold(I)V

    .line 174
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->c()V

    .line 175
    new-instance v1, Lcom/dolphin/browser/search/a;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/c;->L:Lcom/dolphin/browser/search/p;

    invoke-direct {v1, v2, v3}, Lcom/dolphin/browser/search/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/search/p;)V

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    .line 176
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->Q:Lcom/dolphin/browser/search/r;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/a;->a(Lcom/dolphin/browser/search/r;)V

    .line 177
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->O:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->P:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->M:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 181
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->a:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 182
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->R:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    new-instance v2, Lcom/dolphin/browser/search/ui/o;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/search/ui/o;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->T:Lcom/dolphin/browser/search/ui/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a(Lcom/dolphin/browser/search/ui/a;)V

    .line 197
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    const v2, 0x12000006

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setImeOptions(I)V

    .line 200
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getImeOptions()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/search/ui/c;->h:I

    .line 202
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->e:Landroid/widget/ImageView;

    .line 203
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->c:Landroid/view/View;

    .line 204
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->f:Landroid/widget/ImageView;

    .line 207
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802ea

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->d:Landroid/view/View;

    .line 208
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802ed

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->p:Landroid/widget/ImageView;

    .line 211
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->p:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802ec

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->o:Landroid/view/View;

    .line 213
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->o:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    .line 218
    new-instance v1, Lcom/dolphin/browser/search/ui/SearchDialogRootView;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->u:Lcom/dolphin/browser/search/ui/SearchDialogRootView;

    .line 219
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->u:Lcom/dolphin/browser/search/ui/SearchDialogRootView;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v4}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->a(Landroid/view/View;Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->u:Lcom/dolphin/browser/search/ui/SearchDialogRootView;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->a(Landroid/view/Window;)V

    .line 221
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->u:Lcom/dolphin/browser/search/ui/SearchDialogRootView;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->V:Lcom/dolphin/browser/search/ui/y;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->a(Lcom/dolphin/browser/search/ui/y;)V

    .line 223
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802f0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->w:Landroid/view/View;

    .line 224
    new-instance v1, Lcom/dolphin/browser/search/suggestions/z;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/c;->L:Lcom/dolphin/browser/search/p;

    invoke-direct {v1, v2, v3}, Lcom/dolphin/browser/search/suggestions/z;-><init>(Landroid/content/Context;Lcom/dolphin/browser/search/p;)V

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->x:Lcom/dolphin/browser/search/suggestions/z;

    .line 225
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802f1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/dolphin/browser/search/ui/c;->y:Landroid/support/v4/view/ViewPager;

    .line 226
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->y:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->x:Lcom/dolphin/browser/search/suggestions/z;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ae;)V

    .line 227
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->p()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/search/ui/c;->b(I)V

    .line 228
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->y:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    .line 230
    invoke-static {}, Lcom/dolphin/browser/search/a/e;->a()Lcom/dolphin/browser/search/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->C:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/a/e;->addObserver(Ljava/util/Observer;)V

    .line 231
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->a()V

    .line 232
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1006
    if-nez p1, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->D:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/search/ui/k;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/search/ui/k;-><init>(Lcom/dolphin/browser/search/ui/c;Landroid/content/Intent;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1022
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ui/c;->a(Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->u:Lcom/dolphin/browser/search/ui/SearchDialogRootView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/c;->setContentView(Landroid/view/View;)V

    .line 386
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->U:Z

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->clearFocus()V

    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->requestFocus()Z

    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->U:Z

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->m:Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 396
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->n:Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 398
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(I)V

    .line 407
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->b()V

    .line 408
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->d()V

    .line 415
    :goto_1
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(II)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->b()V

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 413
    :cond_3
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/ui/c;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/extensions/ThemeManager;Z)V
    .locals 2

    .prologue
    .line 292
    if-eqz p2, :cond_0

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->p:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->n()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v1

    .line 296
    const/4 v0, 0x0

    .line 297
    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/b;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 300
    :cond_1
    if-nez v0, :cond_2

    .line 301
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->g(I)Lcom/e/a/z;

    move-result-object v0

    .line 303
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;I)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/ui/c;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;Lcom/dolphin/browser/extensions/ThemeManager;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/extensions/ThemeManager;Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 359
    const-string v0, "SearchActivity"

    const-string v1, "search dialog dismiss"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->dismissDropDown()V

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->m()V

    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->S:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->S:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->D:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->e()V

    .line 371
    return-void
.end method

.method private a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1031
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    if-nez v1, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return v0

    .line 1034
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1037
    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getListSelection()I

    move-result v0

    .line 1039
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->d()V

    .line 1040
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/c;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 896
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 897
    if-nez v1, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/search/ui/c;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;Landroid/widget/TextView;I)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/ui/c;->a(Landroid/widget/TextView;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;Ljava/lang/CharSequence;I)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/ui/c;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/ui/c;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/dolphin/browser/search/ui/c;->K:Z

    return p1
.end method

.method private a(Ljava/lang/CharSequence;I)Z
    .locals 3

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->m:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(I)V

    .line 456
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/search/ui/c;I)I
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/dolphin/browser/search/ui/c;->h:I

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/a;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->y:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 309
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/ui/c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/search/ui/c;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/dolphin/browser/search/ui/c;->l:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 678
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 679
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getSelectionStart()I

    move-result v2

    .line 680
    if-eq v2, v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/c;->m:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 682
    if-eq v2, v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getSelectionStart()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/search/ui/c;I)I
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/dolphin/browser/search/ui/c;->s:I

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/c;->k:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-object v0

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/search/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 706
    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a(Z)V

    .line 328
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->A:Z

    .line 332
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->x:Lcom/dolphin/browser/search/suggestions/z;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/z;->c()V

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->w:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iput-boolean v2, p0, Lcom/dolphin/browser/search/ui/c;->A:Z

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/a;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    const-string v1, "address bar"

    const-string v2, "click"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/search/ui/c;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/dolphin/browser/search/ui/c;->A:Z

    return p1
.end method

.method private d()V
    .locals 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    new-instance v1, Lcom/dolphin/browser/search/ui/q;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/search/ui/q;-><init>(Lcom/dolphin/browser/search/ui/c;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    return-void
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 1186
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(I)V

    .line 1187
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/search/ui/c;I)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/ui/c;->d(I)V

    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/search/ui/c;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/dolphin/browser/search/ui/c;->t:Z

    return p1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 431
    :try_start_0
    invoke-static {p0}, Lcom/dolphin/browser/search/ui/c;->d(Lcom/dolphin/browser/search/ui/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/search/ui/c;)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/search/ui/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    return-object v0
.end method

.method private f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v0

    .line 441
    :cond_1
    iget-boolean v1, p0, Lcom/dolphin/browser/search/ui/c;->l:Z

    if-nez v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->m:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 445
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/dolphin/browser/search/ui/c;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private g()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 487
    invoke-static {}, Lcom/dolphin/browser/search/d/i;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    :goto_0
    return v0

    .line 490
    :cond_0
    const-string v2, "Namespace direct navigation!"

    invoke-static {v2}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v2

    .line 491
    iget-object v3, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v3}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {}, Lcom/dolphin/browser/search/d/i;->a()Lcom/dolphin/browser/search/d/i;

    move-result-object v4

    .line 493
    invoke-virtual {v4, v3}, Lcom/dolphin/browser/search/d/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-virtual {v2}, Lcom/dolphin/browser/util/cw;->a()J

    .line 495
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    const-string v1, "SearchActivity"

    const-string v2, "Keyword not matched, return to nomal search procedure."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    :cond_1
    const-string v2, "SearchActivity"

    const-string v5, "Keyword redirected to url: %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v0

    invoke-static {v2, v5, v6}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 501
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 503
    invoke-static {v0, v4}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 508
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->dismiss()V

    .line 509
    const-string v0, "search"

    const-string v2, "dnav"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "||"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    move v0, v1

    .line 511
    goto :goto_0

    .line 506
    :cond_2
    invoke-interface {v0, v4}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/dolphin/browser/search/ui/c;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->G:Landroid/app/Dialog;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->G:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->G:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->G:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 533
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/search/ui/c;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->J:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 673
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isEnableSearchSuggestion()Z

    move-result v0

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 729
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 736
    :goto_0
    return-object v0

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->m:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 733
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 734
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 736
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/dolphin/browser/search/ui/c;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->H:Z

    return v0
.end method

.method private k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/search/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 974
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 975
    const-string v2, "rakuton"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/dolphin/browser/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://search.rakuten.co.jp/search/mall/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/-/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 984
    :cond_0
    :goto_0
    return-object v0

    .line 978
    :catch_0
    move-exception v1

    .line 979
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->d()V

    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 989
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 990
    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/ITab;I)V

    .line 993
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/dolphin/browser/search/ui/c;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->K:Z

    return v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1076
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->m()V

    return-void
.end method

.method private n()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1125
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x41f00000

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1127
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1128
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1130
    return-object v0
.end method

.method static synthetic n(Lcom/dolphin/browser/search/ui/c;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->l:Z

    return v0
.end method

.method static synthetic o(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 1136
    const/4 v0, 0x0

    return v0
.end method

.method private p()I
    .locals 1

    .prologue
    .line 1189
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ac()I

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/dolphin/browser/search/ui/c;)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/dolphin/browser/search/ui/c;)Landroid/text/style/BackgroundColorSpan;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->m:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method static synthetic s(Lcom/dolphin/browser/search/ui/c;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->n:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic t(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->N:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic u(Lcom/dolphin/browser/search/ui/c;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->A:Z

    return v0
.end method

.method static synthetic v(Lcom/dolphin/browser/search/ui/c;)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic w(Lcom/dolphin/browser/search/ui/c;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic x(Lcom/dolphin/browser/search/ui/c;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/dolphin/browser/search/ui/c;->h:I

    return v0
.end method

.method static synthetic y(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->b()V

    return-void
.end method

.method static synthetic z(Lcom/dolphin/browser/search/ui/c;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->t:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const v7, 0x7f0a00df

    const v6, 0x7f0a0062

    const v4, 0x7f0202e0

    const v3, 0x7f020258

    const/4 v5, 0x0

    .line 236
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802ee

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802ef

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802e7

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->B:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->w:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->m:Landroid/text/style/BackgroundColorSpan;

    .line 255
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->n:Landroid/text/style/ForegroundColorSpan;

    .line 257
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/c;->g:Landroid/graphics/drawable/Drawable;

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 259
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02034a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00e8

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setTextColor(I)V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setHighlightColor(I)V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a013f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setHintTextColor(I)V

    .line 265
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ea

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 266
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 269
    iget-object v3, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    const/16 v4, 0x36

    invoke-static {v4}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4, v0, v2, v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setPadding(IIII)V

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00e6

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->setBackgroundColor(I)V

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c(I)V

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(F)V

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b(F)V

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    sget-object v2, Lcom/dolphin/browser/search/suggestions/v;->c:Lcom/dolphin/browser/search/suggestions/v;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(Lcom/dolphin/browser/search/suggestions/v;)V

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00e7

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->e(I)V

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->d(I)V

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(Z)V

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c(F)V

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->W:Landroid/support/v4/view/cc;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(Landroid/support/v4/view/cc;)V

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->z:Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->X:Lcom/dolphin/browser/search/suggestions/x;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(Lcom/dolphin/browser/search/suggestions/x;)V

    .line 286
    invoke-direct {p0, v1, v5}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/extensions/ThemeManager;Z)V

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a;->i()V

    .line 288
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/ui/x;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/c;->v:Lcom/dolphin/browser/search/ui/x;

    .line 313
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 350
    const-string v0, "SearchActivity"

    const-string v1, "search dialog show"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->show()V

    .line 352
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/c;->r:Ljava/lang/String;

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->A:Z

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ui/c;->a(Landroid/view/View;)V

    .line 356
    return-void
.end method

.method protected a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1053
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/search/a;->a(I)Lcom/dolphin/browser/search/w;

    move-result-object v1

    .line 1054
    if-eqz v1, :cond_1

    .line 1055
    iget-object v1, v1, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    .line 1056
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    invoke-virtual {p0, v0, v0}, Lcom/dolphin/browser/search/ui/c;->a(IZ)Z

    .line 1059
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/search/a;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 1060
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1061
    const-string v2, "address bar"

    const-string v3, "click"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(IZ)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 936
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->b:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Ljava/lang/String;)Z

    move-result v8

    .line 937
    if-eqz v8, :cond_2

    const-string v0, "address_bar"

    move-object v6, v0

    .line 939
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->l()V

    .line 940
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->k()Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 944
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/search/g;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 945
    invoke-static {p1, v1}, Lcom/dolphin/browser/util/BrowserUtil;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 946
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/search/suggestions/m;

    move-result-object v0

    const-string v4, ""

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/search/suggestions/m;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_0
    if-eqz p2, :cond_1

    .line 950
    invoke-static {v8}, Lcom/dolphin/browser/util/b/b;->a(Z)V

    .line 952
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 954
    invoke-static {v0, v1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 955
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 956
    invoke-direct {p0, v7}, Lcom/dolphin/browser/search/ui/c;->a(Z)V

    .line 957
    const/4 v0, 0x0

    .line 968
    :goto_1
    return v0

    .line 937
    :cond_2
    const-string v0, "search_box"

    move-object v6, v0

    goto :goto_0

    .line 959
    :cond_3
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 960
    const-string v0, "android.intent.action.SEARCH"

    .line 961
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 962
    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/search/ui/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 963
    const-string v1, "engine_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    const-string v1, "engine_entry"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 966
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ui/c;->a(Landroid/content/Intent;)V

    move v0, v7

    .line 968
    goto :goto_1
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->H:Z

    .line 376
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->h()V

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ui/c;->a(Z)V

    .line 378
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1081
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1082
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1084
    const/4 v0, 0x1

    .line 1087
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 1093
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1094
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1095
    const-string v0, "address bar"

    const-string v1, "hardkey"

    const-string v2, "back"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1097
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->c(Lcom/dolphin/browser/core/ITab;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/c;->dismiss()V

    .line 1101
    const/4 v0, 0x1

    .line 1104
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/c;->S:Landroid/content/DialogInterface$OnDismissListener;

    .line 1111
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/c;->j:Lcom/dolphin/browser/search/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a;->g()V

    .line 342
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 343
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/c;->c()V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/c;->H:Z

    .line 345
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->a()V

    .line 346
    return-void
.end method
