.class public Lcom/dolphin/browser/vg/ui/VoicePannelView;
.super Lcom/dolphin/browser/vg/ui/PannelViewBase;
.source "VoicePannelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static v:I


# instance fields
.field private A:Landroid/os/Handler;

.field private final B:Lcom/dolphin/browser/g/f;

.field private final C:Ljava/lang/Runnable;

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/dolphin/browser/sonar/ui/VolumnView;

.field private d:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

.field private e:Lcom/dolphin/browser/sonar/ui/RecognizingIcon;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:[Ljava/lang/String;

.field private i:Ljava/util/Random;

.field private j:Landroid/widget/Button;

.field private k:Lcom/dolphin/browser/voice/command/j;

.field private l:Z

.field private m:I

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private volatile s:Z

.field private t:Landroid/widget/ImageView;

.field private u:Lcom/dolphin/browser/util/ch;

.field private w:Landroid/content/Context;

.field private x:Landroid/widget/TextView;

.field private y:Lcom/dolphin/browser/theme/ar;

.field private final z:Lcom/dolphin/browser/util/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput v0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->v:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/PannelViewBase;-><init>(Landroid/content/Context;)V

    .line 86
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g:I

    .line 91
    iput-boolean v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l:Z

    .line 96
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->q:Landroid/view/View;

    .line 97
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->r:Landroid/widget/TextView;

    .line 98
    iput-boolean v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->s:Z

    .line 99
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->t:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->u:Lcom/dolphin/browser/util/ch;

    .line 102
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->w:Landroid/content/Context;

    .line 104
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    .line 140
    new-instance v0, Lcom/dolphin/browser/vg/ui/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/d;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->z:Lcom/dolphin/browser/util/ci;

    .line 230
    new-instance v0, Lcom/dolphin/browser/vg/ui/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/e;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->A:Landroid/os/Handler;

    .line 545
    new-instance v0, Lcom/dolphin/browser/vg/ui/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/f;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->B:Lcom/dolphin/browser/g/f;

    .line 558
    new-instance v0, Lcom/dolphin/browser/vg/ui/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/g;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->C:Ljava/lang/Runnable;

    .line 108
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/vg/ui/PannelViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g:I

    .line 91
    iput-boolean v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l:Z

    .line 96
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->q:Landroid/view/View;

    .line 97
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->r:Landroid/widget/TextView;

    .line 98
    iput-boolean v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->s:Z

    .line 99
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->t:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->u:Lcom/dolphin/browser/util/ch;

    .line 102
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->w:Landroid/content/Context;

    .line 104
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    .line 140
    new-instance v0, Lcom/dolphin/browser/vg/ui/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/d;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->z:Lcom/dolphin/browser/util/ci;

    .line 230
    new-instance v0, Lcom/dolphin/browser/vg/ui/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/e;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->A:Landroid/os/Handler;

    .line 545
    new-instance v0, Lcom/dolphin/browser/vg/ui/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/f;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->B:Lcom/dolphin/browser/g/f;

    .line 558
    new-instance v0, Lcom/dolphin/browser/vg/ui/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/g;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->C:Ljava/lang/Runnable;

    .line 113
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/vg/ui/PannelViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g:I

    .line 91
    iput-boolean v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l:Z

    .line 96
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->q:Landroid/view/View;

    .line 97
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->r:Landroid/widget/TextView;

    .line 98
    iput-boolean v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->s:Z

    .line 99
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->t:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->u:Lcom/dolphin/browser/util/ch;

    .line 102
    iput-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->w:Landroid/content/Context;

    .line 104
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    .line 140
    new-instance v0, Lcom/dolphin/browser/vg/ui/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/d;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->z:Lcom/dolphin/browser/util/ci;

    .line 230
    new-instance v0, Lcom/dolphin/browser/vg/ui/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/e;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->A:Landroid/os/Handler;

    .line 545
    new-instance v0, Lcom/dolphin/browser/vg/ui/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/f;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->B:Lcom/dolphin/browser/g/f;

    .line 558
    new-instance v0, Lcom/dolphin/browser/vg/ui/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/ui/g;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->C:Ljava/lang/Runnable;

    .line 118
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/VoicePannelView;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 122
    sput p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->v:I

    .line 123
    return-void
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 469
    if-eqz p3, :cond_0

    .line 470
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 471
    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Ljava/lang/CharSequence;)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->w:Landroid/content/Context;

    .line 151
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03011f

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    .line 153
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    .line 154
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    .line 155
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803df

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/VolumnView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c:Lcom/dolphin/browser/sonar/ui/VolumnView;

    .line 156
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e:Lcom/dolphin/browser/sonar/ui/RecognizingIcon;

    .line 157
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    .line 158
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803de

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    .line 159
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803ea

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->n:Landroid/view/View;

    .line 160
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803eb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->o:Landroid/widget/TextView;

    .line 161
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803ec

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->p:Landroid/widget/TextView;

    .line 163
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->q:Landroid/view/View;

    .line 164
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->r:Landroid/widget/TextView;

    .line 165
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->t:Landroid/widget/ImageView;

    .line 167
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->x:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->k:Lcom/dolphin/browser/voice/command/j;

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->k:Lcom/dolphin/browser/voice/command/j;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c:Lcom/dolphin/browser/sonar/ui/VolumnView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/a/j;)V

    .line 176
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->h:[Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->i:Ljava/util/Random;

    .line 179
    new-instance v0, Lcom/dolphin/browser/util/ch;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/util/ch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->u:Lcom/dolphin/browser/util/ch;

    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->m:I

    .line 182
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j()V

    .line 183
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a()V

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/VoicePannelView;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/VoicePannelView;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_0

    .line 457
    invoke-interface {v0, p1}, Lcom/dolphin/browser/vg/ui/a;->b(Ljava/lang/CharSequence;)V

    .line 459
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/ui/VoicePannelView;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->s:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 683
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 688
    const-string v2, "command"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 689
    const-string v2, "command"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 690
    const/16 v2, 0x2bd

    if-eq v2, v1, :cond_0

    .line 697
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/16 v0, -0x3e9

    .line 713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v0

    .line 717
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 718
    const-string v2, "command"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    const-string v2, "command"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v1

    .line 722
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->k()V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/vg/ui/VoicePannelView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Ljava/lang/CharSequence;)V

    .line 464
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->q()V

    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->x:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    if-eqz v0, :cond_0

    .line 498
    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/dolphin/browser/vg/ui/a;->a(Ljava/lang/CharSequence;)V

    .line 500
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->h(I)Z

    move-result v0

    return v0
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->x:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Ljava/lang/CharSequence;)V

    .line 486
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->p()V

    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d(I)V

    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/vg/ui/VoicePannelView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g:I

    return v0
.end method

.method private e(I)V
    .locals 4

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->x:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0093

    invoke-interface {v2, v3}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Ljava/lang/CharSequence;)V

    .line 492
    return-void
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    .line 505
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/dolphin/browser/vg/ui/a;->a(IZ)V

    .line 507
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/vg/ui/VoicePannelView;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l:Z

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->v:I

    return v0
.end method

.method static synthetic g(Lcom/dolphin/browser/vg/ui/VoicePannelView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->A:Landroid/os/Handler;

    return-object v0
.end method

.method private g(I)Z
    .locals 1

    .prologue
    .line 729
    const/16 v0, 0x321

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->u:Lcom/dolphin/browser/util/ch;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->u:Lcom/dolphin/browser/util/ch;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ch;->a()V

    .line 129
    :cond_0
    return-void
.end method

.method private h(I)Z
    .locals 1

    .prologue
    .line 733
    const/16 v0, 0x322

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->u:Lcom/dolphin/browser/util/ch;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->u:Lcom/dolphin/browser/util/ch;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->z:Lcom/dolphin/browser/util/ci;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/ch;->a(Lcom/dolphin/browser/util/ci;)V

    .line 137
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020318

    invoke-virtual {v0, v3, v1}, Lcom/dolphin/browser/util/bb;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0150

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/theme/ar;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a01bc

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/theme/ar;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0155

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/theme/ar;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->t:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02030c

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/theme/ar;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c:Lcom/dolphin/browser/sonar/ui/VolumnView;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/VolumnView;->updateTheme()V

    .line 199
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 526
    const-string v0, "Sonar"

    const-string v1, "Request"

    const-string v2, "failure"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 527
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 531
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->m()V

    .line 532
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->k:Lcom/dolphin/browser/voice/command/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Lcom/dolphin/browser/g/h;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/g/h;-><init>(Landroid/content/Context;)V

    .line 537
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->B:Lcom/dolphin/browser/g/f;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/g/h;->a(Lcom/dolphin/browser/g/f;)V

    .line 539
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->k:Lcom/dolphin/browser/voice/command/j;

    new-instance v1, Lcom/dolphin/browser/vg/ui/h;

    invoke-direct {v1, p0, v3}, Lcom/dolphin/browser/vg/ui/h;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;Lcom/dolphin/browser/vg/ui/d;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/m;Ljava/lang/String;Z)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->k:Lcom/dolphin/browser/voice/command/j;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/voice/command/j;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.google.android.voicesearch"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 661
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e066c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 665
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://dolphin-browser.com/help/dolphin-sonar.htm"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 671
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e066c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 676
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 701
    sget v0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->v:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(I)V

    .line 702
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 703
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e067f

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(I)V

    .line 704
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 707
    sget v0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->v:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(I)V

    .line 708
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 709
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e068f

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(I)V

    .line 710
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 204
    iget v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->m:I

    if-ne v2, v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 207
    :cond_0
    iput v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->m:I

    .line 208
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 209
    if-ne v2, v4, :cond_1

    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0161

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    .line 212
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 214
    if-ne v2, v4, :cond_2

    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b015f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    .line 217
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 220
    if-ne v2, v4, :cond_3

    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0163

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    .line 223
    :goto_3
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e:Lcom/dolphin/browser/sonar/ui/RecognizingIcon;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->b()V

    .line 227
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->requestLayout()V

    goto :goto_0

    .line 209
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0160

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 214
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b015e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 220
    :cond_3
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0162

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_3
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 608
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/voice/command/j;->a(Z)V

    .line 609
    if-nez p1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0}, Lcom/dolphin/browser/vg/ui/a;->finish()V

    .line 617
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l:Z

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l:Z

    .line 625
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 626
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Z)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const v4, 0x7f0e0689

    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 330
    iget v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g:I

    if-ne v0, p1, :cond_0

    .line 452
    :goto_0
    return-void

    .line 333
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g:I

    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    invoke-direct {p0, v2}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(I)V

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->A:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 348
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Ljava/lang/CharSequence;)V

    .line 444
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020309

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ar;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a(I)V

    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c:Lcom/dolphin/browser/sonar/ui/VolumnView;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sonar/ui/VolumnView;->a(I)V

    .line 451
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e:Lcom/dolphin/browser/sonar/ui/RecognizingIcon;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->a(I)V

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 350
    invoke-direct {p0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(I)V

    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Ljava/lang/CharSequence;)V

    .line 357
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e066d

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(I)V

    goto :goto_1

    .line 358
    :cond_2
    if-ne p1, v5, :cond_3

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 362
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0675

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e(I)V

    .line 364
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->o:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0670

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    const-string v0, "Sonar"

    const-string v1, "Error"

    const-string v2, "network_error"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 367
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0677

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e(I)V

    .line 374
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->o:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e066a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 375
    :cond_4
    if-nez p1, :cond_5

    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 378
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0676

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d(I)V

    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->A:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 380
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 383
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0695

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d(I)V

    goto/16 :goto_1

    .line 384
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 385
    invoke-direct {p0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(I)V

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0688

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e:Lcom/dolphin/browser/sonar/ui/RecognizingIcon;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->h:[Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->i:Ljava/util/Random;

    iget-object v3, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->h:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->a(Ljava/lang/CharSequence;)V

    .line 390
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 391
    :cond_7
    if-ne p1, v3, :cond_8

    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 394
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 395
    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 396
    invoke-direct {p0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(I)V

    .line 397
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->s:Z

    if-nez v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :goto_3
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 403
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->i()V

    goto/16 :goto_1

    .line 400
    :cond_9
    iput-boolean v2, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->s:Z

    goto :goto_3

    .line 407
    :cond_a
    if-ne p1, v1, :cond_b

    .line 408
    invoke-direct {p0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(I)V

    .line 409
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 412
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->i()V

    goto/16 :goto_1

    .line 416
    :cond_b
    const/16 v0, 0x9

    if-ne p1, v0, :cond_c

    .line 417
    invoke-static {v2}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(I)V

    .line 418
    invoke-direct {p0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(I)V

    .line 419
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e068e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 421
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c:Lcom/dolphin/browser/sonar/ui/VolumnView;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/sonar/ui/VolumnView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->h()V

    goto/16 :goto_1

    .line 427
    :cond_c
    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    .line 428
    invoke-direct {p0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(I)V

    .line 429
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 434
    :cond_d
    const/16 v0, 0xb

    if-ne p1, v0, :cond_e

    .line 435
    invoke-direct {p0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(I)V

    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 438
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 442
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not supported state!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_f
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->y:Lcom/dolphin/browser/theme/ar;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020308

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ar;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 631
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->h()V

    .line 633
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l:Z

    if-eqz v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c:Lcom/dolphin/browser/sonar/ui/VolumnView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sonar/ui/VolumnView;->setVisibility(I)V

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l:Z

    .line 638
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 639
    invoke-static {}, Lcom/dolphin/browser/voice/command/b/a;->a()Lcom/dolphin/browser/voice/command/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/bt;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->m()V

    goto :goto_0

    .line 646
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->h()V

    .line 653
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(I)V

    .line 654
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b()V

    .line 655
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a()V

    .line 680
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Z)V

    .line 513
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c:Lcom/dolphin/browser/sonar/ui/VolumnView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sonar/ui/VolumnView;->setVisibility(I)V

    .line 514
    const-string v0, "Sonar"

    const-string v1, "launchby"

    const-string v2, "tryagain_button"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->l()V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->p:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 517
    const-string v0, "Sonar"

    const-string v1, "Error"

    const-string v2, "need_google_voice"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->n()V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/VoicePannelView;->r:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->o()V

    goto :goto_0
.end method
