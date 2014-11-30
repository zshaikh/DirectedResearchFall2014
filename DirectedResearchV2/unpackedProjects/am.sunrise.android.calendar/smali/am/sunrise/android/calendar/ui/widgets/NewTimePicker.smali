.class public Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;
.super Landroid/widget/LinearLayout;
.source "NewTimePicker.java"


# static fields
.field private static final a:Lam/sunrise/android/calendar/ui/widgets/aa;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

.field private e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

.field private f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:[Ljava/lang/String;

.field private l:Z

.field private m:Lam/sunrise/android/calendar/ui/widgets/aa;

.field private n:Ljava/util/Calendar;

.field private o:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/v;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/v;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a:Lam/sunrise/android/calendar/ui/widgets/aa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->l:Z

    .line 97
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->l:Z

    .line 102
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->l:Z

    .line 107
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b()V

    .line 108
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c:Z

    return p1
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0b0100

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 112
    const v1, 0x7f03009c

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 118
    const v0, 0x7f0b0169

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    .line 119
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/w;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/w;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setOnValueChangedListener(Lam/sunrise/android/calendar/ui/widgets/t;)V

    .line 132
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->g:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 136
    const v0, 0x7f0b016a

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    .line 137
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMinValue(I)V

    .line 138
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMaxValue(I)V

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 140
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a:Lam/sunrise/android/calendar/ui/widgets/q;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setFormatter(Lam/sunrise/android/calendar/ui/widgets/q;)V

    .line 141
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/x;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/x;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setOnValueChangedListener(Lam/sunrise/android/calendar/ui/widgets/t;)V

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->h:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 168
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->k:[Ljava/lang/String;

    .line 171
    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 173
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    .line 174
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->i:Landroid/widget/TextView;

    .line 175
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->j:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->j:Landroid/widget/Button;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/y;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/y;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :goto_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c()V

    .line 204
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d()V

    .line 206
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a:Lam/sunrise/android/calendar/ui/widgets/aa;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setOnTimeChangedListener(Lam/sunrise/android/calendar/ui/widgets/aa;)V

    .line 209
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->n:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 210
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->n:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 212
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setEnabled(Z)V

    .line 215
    :cond_0
    return-void

    .line 184
    :cond_1
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->j:Landroid/widget/Button;

    .line 185
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    .line 186
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMinValue(I)V

    .line 187
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v6}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMaxValue(I)V

    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->k:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/z;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/z;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setOnValueChangedListener(Lam/sunrise/android/calendar/ui/widgets/t;)V

    .line 198
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->i:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->i:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 450
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMinValue(I)V

    .line 452
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMaxValue(I)V

    .line 453
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a:Lam/sunrise/android/calendar/ui/widgets/q;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setFormatter(Lam/sunrise/android/calendar/ui/widgets/q;)V

    .line 459
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMinValue(I)V

    .line 456
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMaxValue(I)V

    .line 457
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setFormatter(Lam/sunrise/android/calendar/ui/widgets/q;)V

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 462
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setVisibility(I)V

    .line 478
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->sendAccessibilityEvent(I)V

    .line 479
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_1
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 470
    :goto_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    if-eqz v2, :cond_3

    .line 471
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setValue(I)V

    .line 472
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 474
    :cond_3
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->j:Landroid/widget/Button;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->k:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e()V

    return-void
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 482
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->sendAccessibilityEvent(I)V

    .line 483
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->m:Lam/sunrise/android/calendar/ui/widgets/aa;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->m:Lam/sunrise/android/calendar/ui/widgets/aa;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/aa;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;II)V

    .line 486
    :cond_0
    return-void
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 495
    if-eqz v0, :cond_0

    .line 496
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearFocus()V

    .line 498
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearFocus()V

    .line 501
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 502
    :cond_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearFocus()V

    .line 504
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->o:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->o:Ljava/util/Locale;

    .line 254
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->n:Ljava/util/Calendar;

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b:Z

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getValue()I

    move-result v0

    .line 333
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 335
    :cond_0
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c:Z

    if-eqz v1, :cond_1

    .line 336
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->l:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 242
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 437
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b:Z

    if-eqz v0, :cond_0

    .line 438
    const/16 v0, 0x81

    .line 442
    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->n:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 443
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->n:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 444
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    return-void

    .line 440
    :cond_0
    const/16 v0, 0x41

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 313
    check-cast p1, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;

    .line 314
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 315
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 316
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 317
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 307
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 308
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILam/sunrise/android/calendar/ui/widgets/v;)V

    return-object v1
.end method

.method public setAMorPM(Z)V
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c:Z

    if-ne v0, p1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c:Z

    .line 375
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d()V

    goto :goto_0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c:Z

    .line 354
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 355
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 363
    :cond_2
    :goto_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d()V

    .line 365
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setValue(I)V

    .line 366
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e()V

    goto :goto_0

    .line 358
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c:Z

    .line 359
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setValue(I)V

    .line 418
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->l:Z

    if-ne v0, p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setEnabled(Z)V

    .line 230
    :goto_1
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->l:Z

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->j:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 384
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b:Z

    .line 389
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 390
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c()V

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 393
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lam/sunrise/android/calendar/ui/widgets/aa;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->m:Lam/sunrise/android/calendar/ui/widgets/aa;

    .line 326
    return-void
.end method
