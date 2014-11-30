.class public Lam/sunrise/android/calendar/ui/widgets/calendar/a;
.super Landroid/widget/CheckedTextView;
.source "CalendarDayView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Typeface;

.field private d:Landroid/graphics/Typeface;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/content/res/ColorStateList;

.field private h:Ljava/util/Calendar;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->c()V

    .line 54
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 102
    if-ne v0, v3, :cond_2

    .line 103
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 104
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const v1, 0x80018

    invoke-static {v0, v3, v4, v1}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, "\n"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 108
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 109
    if-lez v1, :cond_1

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 121
    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->b:I

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 124
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_1
    return-void

    .line 118
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 130
    if-eq v4, v1, :cond_3

    if-ne v3, v1, :cond_4

    .line 131
    :cond_3
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 135
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 133
    :cond_4
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method

.method private b()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->c:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->d:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->a:I

    .line 151
    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->b:I

    .line 153
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->c:Landroid/graphics/Typeface;

    .line 154
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->d:Landroid/graphics/Typeface;

    .line 156
    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->e:Landroid/content/res/ColorStateList;

    .line 157
    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->f:Landroid/content/res/ColorStateList;

    .line 158
    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->g:Landroid/content/res/ColorStateList;

    .line 160
    const v0, 0x7f0200af

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setBackgroundResource(I)V

    .line 162
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setGravity(I)V

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->d:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    const/4 v0, 0x0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->a:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setTextSize(IF)V

    .line 166
    return-void
.end method


# virtual methods
.method public getDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    return-object v0
.end method

.method public setActivated(Z)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    if-eqz p1, :cond_1

    .line 77
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setActivated(Z)V

    .line 83
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->b()V

    .line 84
    return-void

    .line 79
    :cond_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->a()V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 89
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->b()V

    .line 90
    return-void
.end method

.method public setDay(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->h:Ljava/util/Calendar;

    .line 69
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->a()V

    .line 71
    :cond_1
    return-void
.end method

.method public setEventCount(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->i:I

    .line 98
    return-void
.end method
