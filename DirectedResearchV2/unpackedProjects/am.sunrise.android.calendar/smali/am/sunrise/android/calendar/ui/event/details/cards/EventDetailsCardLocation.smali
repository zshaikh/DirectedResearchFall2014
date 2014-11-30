.class public Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;
.super Lam/sunrise/android/calendar/ui/event/details/cards/h;
.source "EventDetailsCardLocation.java"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

.field private d:Landroid/widget/TextView;

.field private e:Lam/sunrise/android/calendar/ui/event/details/cards/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;)Lam/sunrise/android/calendar/ui/event/details/cards/j;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->e:Lam/sunrise/android/calendar/ui/event/details/cards/j;

    return-object v0
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/event/info/LocationInfo;Landroid/support/v4/app/o;)V
    .locals 8

    .prologue
    const v7, 0x7f0b00ab

    const v3, 0x7f02011b

    const-wide/16 v5, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 72
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setTextWithAutoLinking(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 91
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :goto_1
    iget-wide v0, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    cmpl-double v0, v0, v5

    if-nez v0, :cond_0

    iget-wide v0, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    cmpl-double v0, v0, v5

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    :cond_1
    :goto_2
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setTextWithAutoLinking(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->b:Landroid/widget/ImageView;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 95
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    :cond_6
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->b:Landroid/widget/ImageView;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 98
    :cond_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 108
    :cond_8
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/i;->a(Landroid/content/Context;)I

    move-result v0

    .line 109
    if-eqz v0, :cond_9

    .line 110
    const-string v1, "EventDetailsCardLocation"

    const-string v2, "setEventLocation: MapsInitializer -- result=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 116
    :cond_9
    invoke-virtual {p2, v7}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 117
    if-nez v0, :cond_a

    .line 118
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/cards/m;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/m;-><init>()V

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    const-string v2, "am.sunrise.android.calendar.extra.LOCATION_INFO"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->setArguments(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p2}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/aa;->b()I

    .line 132
    :goto_3
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->e:Lam/sunrise/android/calendar/ui/event/details/cards/j;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a(Lam/sunrise/android/calendar/ui/event/details/cards/j;)V

    .line 134
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 128
    :cond_a
    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/m;

    .line 129
    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a(Lam/sunrise/android/calendar/ui/event/info/LocationInfo;)V

    goto :goto_3
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 139
    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->a:Landroid/widget/FrameLayout;

    .line 141
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->b:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    .line 144
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->c:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->d:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/cards/i;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/i;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method public setOnLocationListener(Lam/sunrise/android/calendar/ui/event/details/cards/j;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->e:Lam/sunrise/android/calendar/ui/event/details/cards/j;

    .line 61
    return-void
.end method
