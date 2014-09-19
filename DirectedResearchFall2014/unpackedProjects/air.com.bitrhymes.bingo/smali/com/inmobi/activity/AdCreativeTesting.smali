.class public Lcom/inmobi/activity/AdCreativeTesting;
.super Landroid/app/Activity;
.source "AdCreativeTesting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/activity/AdCreativeTesting$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:I

.field private c:I

.field private d:Landroid/widget/Spinner;

.field private e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Z

.field private l:F

.field private m:[Ljava/lang/String;

.field private n:Lcom/inmobi/activity/AdCreativeTesting$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/inmobi/activity/AdCreativeTesting;->k:Z

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "320*50"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "320*48"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "300*250"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 44
    const-string v2, "728*90"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "468*60"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "120*600"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->m:[Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/inmobi/activity/AdCreativeTesting$a;

    invoke-direct {v0, p0}, Lcom/inmobi/activity/AdCreativeTesting$a;-><init>(Lcom/inmobi/activity/AdCreativeTesting;)V

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->n:Lcom/inmobi/activity/AdCreativeTesting$a;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/inmobi/activity/AdCreativeTesting;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/activity/AdCreativeTesting;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/inmobi/activity/AdCreativeTesting;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/activity/AdCreativeTesting;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/inmobi/activity/AdCreativeTesting;->k:Z

    return-void
.end method

.method static synthetic b(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/activity/AdCreativeTesting;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/inmobi/activity/AdCreativeTesting;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-void
.end method

.method static synthetic c(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/activity/AdCreativeTesting;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->b:I

    return v0
.end method

.method static synthetic e(Lcom/inmobi/activity/AdCreativeTesting;)F
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->l:F

    return v0
.end method

.method static synthetic f(Lcom/inmobi/activity/AdCreativeTesting;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->c:I

    return v0
.end method

.method static synthetic g(Lcom/inmobi/activity/AdCreativeTesting;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method static synthetic h(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/inmobi/activity/AdCreativeTesting;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/inmobi/activity/AdCreativeTesting;)Lcom/inmobi/activity/AdCreativeTesting$a;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->n:Lcom/inmobi/activity/AdCreativeTesting$a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/AdCreativeTesting;->setContentView(I)V

    .line 53
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/AdCreativeTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->a:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/AdCreativeTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->d:Landroid/widget/Spinner;

    .line 55
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 57
    const v1, 0x1090008

    iget-object v2, p0, Lcom/inmobi/activity/AdCreativeTesting;->m:[Ljava/lang/String;

    .line 56
    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/inmobi/activity/AdCreativeTesting;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/AdCreativeTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->g:Landroid/widget/RelativeLayout;

    .line 61
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v3, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 63
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    const-string v0, "window"

    .line 64
    invoke-virtual {p0, v0}, Lcom/inmobi/activity/AdCreativeTesting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 67
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->l:F

    .line 70
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/AdCreativeTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->h:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->h:Landroid/widget/Button;

    new-instance v1, Lcom/inmobi/activity/AdCreativeTesting$1;

    invoke-direct {v1, p0}, Lcom/inmobi/activity/AdCreativeTesting$1;-><init>(Lcom/inmobi/activity/AdCreativeTesting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/AdCreativeTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->i:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->i:Landroid/widget/Button;

    new-instance v1, Lcom/inmobi/activity/AdCreativeTesting$2;

    invoke-direct {v1, p0}, Lcom/inmobi/activity/AdCreativeTesting$2;-><init>(Lcom/inmobi/activity/AdCreativeTesting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/AdCreativeTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->j:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->j:Landroid/widget/Button;

    new-instance v1, Lcom/inmobi/activity/AdCreativeTesting$3;

    invoke-direct {v1, p0}, Lcom/inmobi/activity/AdCreativeTesting$3;-><init>(Lcom/inmobi/activity/AdCreativeTesting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 189
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->m:[Ljava/lang/String;

    aget-object v0, v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->b:I

    .line 190
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->m:[Ljava/lang/String;

    aget-object v0, v0, p3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->c:I

    .line 191
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    const/16 v0, 0x140

    iput v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->b:I

    .line 197
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/activity/AdCreativeTesting;->c:I

    .line 198
    return-void
.end method
