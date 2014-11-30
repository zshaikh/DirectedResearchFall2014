.class public Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;
.super Lam/sunrise/android/calendar/ui/event/details/cards/h;
.source "EventDetailsCardRSVP.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lam/sunrise/android/calendar/ui/event/details/cards/l;

.field private g:Lcom/b/a/ay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a()V

    .line 60
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;)Lam/sunrise/android/calendar/ui/event/details/cards/l;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->f:Lam/sunrise/android/calendar/ui/event/details/cards/l;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a:Landroid/graphics/drawable/Drawable;

    .line 117
    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->b:I

    .line 118
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->b:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->b:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/event/info/PersonInfo;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 67
    if-eqz p1, :cond_5

    .line 68
    new-instance v0, Lam/sunrise/android/calendar/ui/event/d;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/d;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->g:Lcom/b/a/ay;

    .line 70
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    .line 77
    :goto_0
    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v1

    invoke-static {v0}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->b:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->g:Lcom/b/a/ay;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f018b

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    :goto_1
    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_2
    invoke-static {p2}, Lam/sunrise/android/calendar/ui/event/details/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/details/j;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/j;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_1
    return-void

    .line 72
    :cond_2
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_4
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    goto :goto_1

    .line 88
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->d:Landroid/widget/TextView;

    const v1, 0x7f0f0191

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 99
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->c:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->d:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->e:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->e:Landroid/widget/TextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/cards/k;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/k;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public setOnRSVPListener(Lam/sunrise/android/calendar/ui/event/details/cards/l;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->f:Lam/sunrise/android/calendar/ui/event/details/cards/l;

    .line 64
    return-void
.end method
