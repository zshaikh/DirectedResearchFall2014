.class public Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;
.super Lcom/acmeaom/android/a/d/b;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/myradar/a/f;


# static fields
.field public static final a:I

.field public static b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Lcom/acmeaom/android/myradar/app/notifications/e;

.field private final e:Lcom/acmeaom/android/myradar/app/a/e;

.field private final f:Lcom/acmeaom/android/myradar/app/activity/k;

.field private g:Lcom/acmeaom/android/myradar/a/l;

.field private h:Lcom/acmeaom/android/myradar/app/e;

.field private i:Landroid/widget/ViewSwitcher;

.field private j:Lcom/acmeaom/android/myradar/app/a;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/FrameLayout;

.field private p:Lcom/google/ads/AdView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/FrameLayout;

.field private s:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "GOOGLE_PLAY_SERVICES_REQUEST_CODE"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/acmeaom/android/a/d/b;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->c:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/acmeaom/android/myradar/app/notifications/e;

    invoke-direct {v0}, Lcom/acmeaom/android/myradar/app/notifications/e;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->d:Lcom/acmeaom/android/myradar/app/notifications/e;

    .line 79
    new-instance v0, Lcom/acmeaom/android/myradar/app/a/e;

    invoke-direct {v0}, Lcom/acmeaom/android/myradar/app/a/e;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->e:Lcom/acmeaom/android/myradar/app/a/e;

    .line 80
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/myradar/app/activity/k;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Lcom/acmeaom/android/myradar/app/activity/a;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->f:Lcom/acmeaom/android/myradar/app/activity/k;

    .line 115
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sput-object p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    .line 118
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Lcom/acmeaom/android/myradar/app/a;)Lcom/acmeaom/android/myradar/app/a;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/acmeaom/android/myradar/app/activity/g;

    invoke-direct {v1, p0, p1}, Lcom/acmeaom/android/myradar/app/activity/g;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/h;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/app/activity/h;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    .line 339
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    :cond_0
    return-void
.end method

.method private a(Lcom/acmeaom/android/myradar/app/c;)V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/f;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/myradar/app/activity/f;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Lcom/acmeaom/android/myradar/app/c;)V

    .line 307
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h()V

    return-void
.end method

.method static synthetic c(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Landroid/widget/ViewSwitcher;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->i:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 151
    const v0, 0x7f040003

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 152
    return-void
.end method

.method static synthetic e(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Lcom/acmeaom/android/myradar/app/e;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/acmeaom/android/myradar/app/e;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/myradar/app/e;-><init>(Lcom/acmeaom/android/a/d/b;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    .line 161
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->o:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->o:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v1, v1, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 163
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 165
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Lcom/acmeaom/android/myradar/app/a/e;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->e:Lcom/acmeaom/android/myradar/app/a/e;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/e;->a:Lcom/acmeaom/android/myradar/app/c;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->a(Lcom/acmeaom/android/myradar/app/c;)V

    .line 170
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/acmeaom/android/myradar/app/activity/a;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/activity/a;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/acmeaom/android/myradar/app/activity/c;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/activity/c;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/acmeaom/android/myradar/app/activity/d;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/activity/d;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Lcom/google/ads/AdView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 209
    return-void
.end method

.method static synthetic i(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 215
    return-void
.end method

.method static synthetic j(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 218
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->setContentView(I)V

    .line 220
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->i:Landroid/widget/ViewSwitcher;

    .line 221
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->s:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->l:Landroid/widget/ImageButton;

    .line 223
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->k:Landroid/widget/ImageButton;

    .line 224
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->n:Landroid/widget/ImageButton;

    .line 225
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->o:Landroid/widget/FrameLayout;

    .line 226
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->m:Landroid/widget/ImageButton;

    .line 227
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->r:Landroid/widget/FrameLayout;

    .line 229
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->i:Landroid/widget/ViewSwitcher;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 231
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->q:Landroid/widget/ImageView;

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->k()V

    .line 237
    :cond_1
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 240
    invoke-static {}, Lcom/acmeaom/android/myradar/app/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/google/ads/AdView;

    sget-object v2, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    .line 242
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 243
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 246
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method static synthetic k(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->i()V

    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/myradar/a/e;->a(Lcom/acmeaom/android/myradar/a/f;)V

    .line 253
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;)V

    .line 255
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    if-nez v0, :cond_0

    .line 256
    invoke-static {p0}, Lcom/acmeaom/android/myradar/a/g;->a(Landroid/app/Activity;)Lcom/acmeaom/android/myradar/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    .line 257
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->b()V

    .line 258
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->a()V

    .line 262
    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 265
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 268
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    const v0, 0x10001

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->showDialog(I)V

    .line 272
    :cond_1
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 275
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 276
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->i:Landroid/widget/ViewSwitcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 278
    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    new-instance v1, Lcom/acmeaom/android/myradar/app/activity/e;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/activity/e;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-void
.end method

.method private o()Z
    .locals 3

    .prologue
    .line 344
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showIntro"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->i()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 421
    invoke-static {p0}, Lcom/google/android/gms/common/a;->a(Landroid/content/Context;)I

    move-result v0

    .line 422
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 426
    :cond_2
    sget v1, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->a:I

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/common/a;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 429
    :cond_3
    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->d:Lcom/acmeaom/android/myradar/app/notifications/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/notifications/e;->a()V

    goto :goto_0
.end method

.method private r()V
    .locals 5

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v1, v1, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    .line 474
    const-string v2, "mapzoom"

    invoke-virtual {v1}, Lcom/acmeaom/android/a/d/f;->getZoomLevel()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 475
    const v2, 0x7f0b004e

    invoke-virtual {p0, v2}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    const v3, 0x7f0b004f

    invoke-virtual {p0, v3}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual {v1}, Lcom/acmeaom/android/a/d/f;->getMapCenter()Lcom/acmeaom/android/a/d/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acmeaom/android/a/d/a;->a()I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-virtual {v1}, Lcom/acmeaom/android/a/d/f;->getMapCenter()Lcom/acmeaom/android/a/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/a/d/a;->b()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 479
    const-string v2, "mapscrollx"

    invoke-virtual {v1}, Lcom/acmeaom/android/a/d/f;->getScrollX()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 480
    const-string v2, "mapscrolly"

    invoke-virtual {v1}, Lcom/acmeaom/android/a/d/f;->getScrollY()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    invoke-static {}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private s()V
    .locals 6

    .prologue
    .line 491
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    new-instance v2, Lcom/acmeaom/android/myradar/app/b/b;

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide v4, 0x4046c3ea57766622L

    invoke-static {v4, v5}, Lcom/acmeaom/android/myradar/app/b/a;->a(D)I

    move-result v4

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide v4, -0x3fa1583916e00000L

    invoke-static {v4, v5}, Lcom/acmeaom/android/myradar/app/b/a;->a(D)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/acmeaom/android/myradar/app/b/b;-><init>(II)V

    .line 497
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/f;->getController()Lcom/acmeaom/android/a/d/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/d/c;->b(Lcom/acmeaom/android/a/d/a;)V

    .line 499
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mapzoom"

    const/4 v3, 0x7

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/e;->a(I)V

    .line 500
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 588
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    .line 371
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->q:Landroid/widget/ImageView;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 366
    :pswitch_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->q:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 564
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->i()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/a;->e()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->r:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 585
    :cond_2
    :goto_0
    return-void

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    if-eqz v0, :cond_2

    .line 582
    new-instance v0, Lcom/acmeaom/android/myradar/app/a;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->p:Lcom/google/ads/AdView;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/myradar/app/a;-><init>(Lcom/google/ads/AdView;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    goto :goto_0
.end method

.method public c()Lcom/acmeaom/android/myradar/app/c;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/e;->a:Lcom/acmeaom/android/myradar/app/c;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/acmeaom/android/a/d/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->a(I)V

    .line 356
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/acmeaom/android/a/d/b;->onCreate(Landroid/os/Bundle;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->l()V

    .line 128
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j()V

    .line 130
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->n()V

    .line 132
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->d()V

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->e()V

    .line 140
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->d:Lcom/acmeaom/android/myradar/app/notifications/e;

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/myradar/app/notifications/e;->a(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    .line 141
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->s()V

    .line 143
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->f()V

    .line 145
    invoke-direct {p0, p1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->a(Landroid/os/Bundle;)V

    .line 146
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->i:Landroid/widget/ViewSwitcher;

    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const v2, 0x7f0b005b

    .line 503
    invoke-super {p0, p1, p2}, Lcom/acmeaom/android/a/d/b;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 505
    sparse-switch p1, :sswitch_data_0

    .line 560
    :goto_0
    return-object v0

    .line 508
    :sswitch_0
    invoke-static {p0, p1}, Lcom/acmeaom/android/myradar/app/ui/k;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 512
    :sswitch_1
    const v0, 0x7f0b0041

    const v1, 0x7f0b0055

    invoke-static {p0, v0, v1}, Lcom/acmeaom/android/myradar/app/ui/a;->a(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 516
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0057

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0056

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acmeaom/android/myradar/app/activity/i;

    invoke-direct {v2, p0}, Lcom/acmeaom/android/myradar/app/activity/i;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 529
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0059

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acmeaom/android/myradar/app/activity/j;

    invoke-direct {v2, p0}, Lcom/acmeaom/android/myradar/app/activity/j;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 543
    :sswitch_4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "motd.result"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/acmeaom/android/myradar/app/a/e;->a(Landroid/app/Activity;Lorg/json/JSONObject;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v1

    .line 546
    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 551
    :sswitch_5
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 552
    new-instance v0, Lcom/acmeaom/android/myradar/app/activity/b;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v1, v1, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-direct {v0, p0, p0, v1}, Lcom/acmeaom/android/myradar/app/activity/b;-><init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Landroid/app/Activity;Lcom/acmeaom/android/a/d/f;)V

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/activity/b;->b()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 505
    nop

    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_2
        0x10002 -> :sswitch_3
        0x10003 -> :sswitch_1
        0x10020 -> :sswitch_5
        0x11003 -> :sswitch_4
        0x20002 -> :sswitch_0
        0x20003 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 446
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/myradar/a/e;->b(Lcom/acmeaom/android/myradar/a/f;)V

    .line 448
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->g()V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/a;->e()V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    .line 458
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    invoke-static {}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->c()V

    .line 466
    invoke-super {p0}, Lcom/acmeaom/android/a/d/b;->onDestroy()V

    .line 467
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Lcom/acmeaom/android/a/d/b;->onLowMemory()V

    .line 437
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const-string v0, "Low memory!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/f;->a()V

    .line 441
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/f;->onPause()V

    .line 406
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->r()V

    .line 408
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/a;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->e()V

    .line 417
    invoke-super {p0}, Lcom/acmeaom/android/a/d/b;->onPause()V

    .line 418
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 377
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 378
    invoke-super {p0}, Lcom/acmeaom/android/a/d/b;->onResume()V

    .line 379
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->f:Lcom/acmeaom/android/myradar/app/activity/k;

    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->f:Lcom/acmeaom/android/myradar/app/activity/k;

    const-string v3, "kNetworkConnectivityError"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->m()V

    .line 385
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->q()V

    .line 386
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g:Lcom/acmeaom/android/myradar/a/l;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/l;->d()V

    .line 388
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->s()V

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j:Lcom/acmeaom/android/myradar/app/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/a;->d()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mapzoom"

    const/4 v3, 0x7

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h:Lcom/acmeaom/android/myradar/app/e;

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/f;->onResume()V

    .line 399
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->i()V

    .line 400
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
