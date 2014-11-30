.class public Lcom/dolphin/player/x;
.super Landroid/widget/FrameLayout;
.source "ProgressView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/graphics/drawable/AnimationDrawable;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/dolphin/player/z;

.field private r:Lcom/dolphin/player/ab;

.field private s:Lcom/dolphin/player/aa;

.field private final t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v0, Lcom/dolphin/player/y;

    invoke-direct {v0, p0}, Lcom/dolphin/player/y;-><init>(Lcom/dolphin/player/x;)V

    iput-object v0, p0, Lcom/dolphin/player/x;->t:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/dolphin/player/x;->g:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p2}, Lcom/dolphin/player/x;->d(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 276
    const/4 v2, -0x1

    .line 277
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 279
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 281
    if-nez v0, :cond_0

    .line 292
    :goto_0
    return v2

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 285
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "networkInfo.getExtraInfo() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    if-nez v3, :cond_1

    .line 288
    const/4 v0, 0x0

    :goto_1
    move v2, v0

    .line 292
    goto :goto_0

    .line 289
    :cond_1
    if-ne v3, v1, :cond_2

    move v0, v1

    .line 290
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/player/x;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/player/x;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/player/x;)Lcom/dolphin/player/aa;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/player/x;->s:Lcom/dolphin/player/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/player/x;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/player/x;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/player/x;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/player/x;->i:Landroid/view/View;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 99
    invoke-virtual {p0}, Lcom/dolphin/player/x;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$layout;->progress:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/player/ae;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p0, v0, v4}, Lcom/dolphin/player/x;->addView(Landroid/view/View;I)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    sget v0, Lcom/dolphin/player/R$id;->imageView_ani_line:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/x;->b:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/dolphin/player/R$id;->imageView_line:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/x;->c:Landroid/widget/ImageView;

    .line 108
    sget v0, Lcom/dolphin/player/R$id;->text_progress_title:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/x;->e:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/dolphin/player/x;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v0, Lcom/dolphin/player/R$id;->progress_info_text:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/x;->f:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/dolphin/player/R$id;->layout_load_failed:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/x;->k:Landroid/view/View;

    .line 113
    sget v0, Lcom/dolphin/player/R$id;->textView_load_failed:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/x;->l:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/dolphin/player/x;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dolphin/player/R$string;->dpl_player_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v0, Lcom/dolphin/player/R$id;->button_reload:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/player/x;->m:Landroid/widget/Button;

    .line 116
    sget v0, Lcom/dolphin/player/R$id;->textView_check_network_type:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/x;->n:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/dolphin/player/R$id;->button_continue_play:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/x;->o:Landroid/view/View;

    .line 118
    sget v0, Lcom/dolphin/player/R$id;->button_continue_cancel:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/x;->p:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/dolphin/player/x;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/player/x;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/dolphin/player/R$id;->imageView_anim:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/x;->a:Landroid/widget/ImageView;

    .line 125
    sget v0, Lcom/dolphin/player/R$id;->gestrue_sample_bright:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/x;->h:Landroid/view/View;

    .line 126
    sget v0, Lcom/dolphin/player/R$id;->gestrue_sample_progress:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/x;->j:Landroid/view/View;

    .line 127
    sget v0, Lcom/dolphin/player/R$id;->gestrue_sample_voice:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/x;->i:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/dolphin/player/x;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/dolphin/player/x;->b(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static synthetic e(Lcom/dolphin/player/x;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/player/x;->t:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 190
    iget-object v0, p0, Lcom/dolphin/player/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 191
    iget-object v0, p0, Lcom/dolphin/player/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 192
    iget-object v0, p0, Lcom/dolphin/player/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/dolphin/player/x;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/dolphin/player/x;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/dolphin/player/x;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/dolphin/player/x;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/dolphin/player/x;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/dolphin/player/x;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/dolphin/player/x;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dolphin/player/R$string;->dpl_player_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/dolphin/player/x;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public a(Lcom/dolphin/player/aa;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/dolphin/player/x;->s:Lcom/dolphin/player/aa;

    .line 96
    return-void
.end method

.method public a(Lcom/dolphin/player/ab;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dolphin/player/x;->r:Lcom/dolphin/player/ab;

    .line 86
    return-void
.end method

.method public a(Lcom/dolphin/player/z;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dolphin/player/x;->q:Lcom/dolphin/player/z;

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/player/x;->b(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/dolphin/player/x;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/dolphin/player/R$string;->dpl_player_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 206
    iget-object v0, p0, Lcom/dolphin/player/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 207
    iget-object v0, p0, Lcom/dolphin/player/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 208
    iget-object v0, p0, Lcom/dolphin/player/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/dolphin/player/x;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/dolphin/player/x;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/dolphin/player/x;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/dolphin/player/x;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/dolphin/player/x;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dolphin/player/R$string;->dpl_player_loading_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/dolphin/player/x;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x8

    .line 139
    iget-object v0, p0, Lcom/dolphin/player/x;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/dolphin/player/x;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/dolphin/player/x;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/dolphin/player/x;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/player/x;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/dolphin/player/x;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/dolphin/player/x;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/dolphin/player/x;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iput-object p1, p0, Lcom/dolphin/player/x;->g:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/dolphin/player/x;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/dolphin/player/x;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/dolphin/player/x;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/dolphin/player/x;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dolphin/player/R$string;->dpl_player_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/dolphin/player/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/dolphin/player/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$anim;->rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    iget-object v1, p0, Lcom/dolphin/player/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v0, p0, Lcom/dolphin/player/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/dolphin/player/x;->d:Landroid/graphics/drawable/AnimationDrawable;

    .line 162
    iget-object v0, p0, Lcom/dolphin/player/x;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dolphin/player/x;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 165
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/dolphin/player/x;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/dolphin/player/x;->t:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 168
    iget-object v0, p0, Lcom/dolphin/player/x;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/dolphin/player/x;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/dolphin/player/x;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/dolphin/player/x;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iput-object p1, p0, Lcom/dolphin/player/x;->g:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/dolphin/player/x;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/dolphin/player/x;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/dolphin/player/x;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/dolphin/player/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 179
    iget-object v0, p0, Lcom/dolphin/player/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/dolphin/player/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/dolphin/player/x;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/dolphin/player/x;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/dolphin/player/x;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/dolphin/player/x;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/dolphin/player/R$id;->button_continue_play:I

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/dolphin/player/x;->r:Lcom/dolphin/player/ab;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/dolphin/player/x;->r:Lcom/dolphin/player/ab;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/player/ab;->a(Z)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/dolphin/player/R$id;->button_continue_cancel:I

    if-ne v0, v1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/dolphin/player/x;->r:Lcom/dolphin/player/ab;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/dolphin/player/x;->r:Lcom/dolphin/player/ab;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/player/ab;->a(Z)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/dolphin/player/R$id;->button_reload:I

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/dolphin/player/x;->q:Lcom/dolphin/player/z;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/dolphin/player/x;->q:Lcom/dolphin/player/z;

    invoke-interface {v0}, Lcom/dolphin/player/z;->a()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method
