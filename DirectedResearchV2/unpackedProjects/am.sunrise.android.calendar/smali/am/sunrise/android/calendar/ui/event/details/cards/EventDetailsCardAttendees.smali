.class public Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;
.super Lam/sunrise/android/calendar/ui/event/details/cards/h;
.source "EventDetailsCardAttendees.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Lam/sunrise/android/calendar/ui/event/details/cards/e;

.field private d:[Lcom/b/a/ay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a()V

    .line 58
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;)Lam/sunrise/android/calendar/ui/event/details/cards/e;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->c:Lam/sunrise/android/calendar/ui/event/details/cards/e;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a:Landroid/graphics/drawable/Drawable;

    .line 144
    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->b:I

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->b:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->b:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    return-void
.end method


# virtual methods
.method public a([Lam/sunrise/android/calendar/ui/event/info/PersonInfo;I)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->removeAllViews()V

    .line 67
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 69
    new-array v0, v10, [Lam/sunrise/android/calendar/ui/event/d;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->d:[Lcom/b/a/ay;

    move v1, v2

    .line 71
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_5

    if-ge v1, v10, :cond_5

    .line 72
    aget-object v5, p1, v1

    .line 73
    const v0, 0x7f03004a

    invoke-virtual {v4, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 75
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    move-object v3, v0

    .line 82
    :goto_1
    if-eqz v3, :cond_0

    .line 83
    const v0, 0x7f0b0097

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    iget-object v7, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->d:[Lcom/b/a/ay;

    new-instance v8, Lam/sunrise/android/calendar/ui/event/d;

    iget-object v9, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {v8, v0, v9}, Lam/sunrise/android/calendar/ui/event/d;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    aput-object v8, v7, v1

    .line 85
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    invoke-static {v3}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->b:I

    iget v7, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->b:I

    invoke-virtual {v0, v3, v7}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->d:[Lcom/b/a/ay;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 92
    :cond_0
    const v0, 0x7f0b0098

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iget-object v3, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    iget-object v3, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->j:Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/details/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/details/j;

    move-result-object v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/event/details/j;->b()I

    move-result v3

    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 102
    :cond_1
    const v0, 0x7f0b0016

    invoke-virtual {v6, v0, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/cards/c;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/c;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, v6}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->addView(Landroid/view/View;)V

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 77
    :cond_2
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    move-object v3, v0

    goto/16 :goto_1

    .line 80
    :cond_3
    const/4 v0, 0x0

    move-object v3, v0

    goto/16 :goto_1

    .line 94
    :cond_4
    iget-object v3, v5, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    goto :goto_2

    .line 114
    :cond_5
    if-le p2, v10, :cond_6

    .line 115
    const v0, 0x7f03004c

    invoke-virtual {v4, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 117
    const v0, 0x7f0b009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    const/16 v3, 0x64

    if-lt p2, v3, :cond_7

    .line 119
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f017d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_3
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/cards/d;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/d;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->addView(Landroid/view/View;)V

    .line 138
    :cond_6
    return-void

    .line 122
    :cond_7
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000b

    add-int/lit8 v5, p2, -0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, p2, -0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setOnAttendeeListener(Lam/sunrise/android/calendar/ui/event/details/cards/e;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->c:Lam/sunrise/android/calendar/ui/event/details/cards/e;

    .line 62
    return-void
.end method
