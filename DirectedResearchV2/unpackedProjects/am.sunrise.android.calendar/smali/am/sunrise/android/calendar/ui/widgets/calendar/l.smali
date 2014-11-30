.class public Lam/sunrise/android/calendar/ui/widgets/calendar/l;
.super Landroid/widget/BaseAdapter;
.source "CalendarViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/Calendar;

.field private e:Ljava/util/Calendar;

.field private f:I

.field private g:Lam/sunrise/android/calendar/ui/widgets/calendar/m;

.field private h:Z

.field private i:Ljava/util/Calendar;

.field private j:Lam/sunrise/android/calendar/ui/widgets/calendar/i;

.field private k:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    .line 54
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->c:Landroid/view/LayoutInflater;

    .line 55
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b()V

    .line 57
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->i:Ljava/util/Calendar;

    .line 58
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->i:Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 59
    return-void
.end method

.method private a(Ljava/util/Calendar;Z)V
    .locals 5

    .prologue
    .line 196
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->c()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 198
    new-instance v3, Lc/a/a/b;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v0, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v3, v0}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    .line 203
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getWrappedListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;

    .line 208
    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a(Ljava/util/Calendar;)Lam/sunrise/android/calendar/ui/widgets/calendar/a;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setActivated(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/calendar/l;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->h:Z

    return p1
.end method


# virtual methods
.method a()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->k:Ljava/util/Calendar;

    return-object v0
.end method

.method public a(Lam/sunrise/android/calendar/ui/widgets/calendar/i;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/i;

    .line 67
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method a(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->k:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->k:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->k:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a(Ljava/util/Calendar;Z)V

    .line 191
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->k:Ljava/util/Calendar;

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a(Ljava/util/Calendar;Z)V

    .line 193
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 101
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->h:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->g:Lam/sunrise/android/calendar/ui/widgets/calendar/m;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->g:Lam/sunrise/android/calendar/ui/widgets/calendar/m;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->g:Lam/sunrise/android/calendar/ui/widgets/calendar/m;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->g:Lam/sunrise/android/calendar/ui/widgets/calendar/m;

    .line 110
    :cond_1
    if-eqz p1, :cond_2

    .line 111
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->h:Z

    .line 112
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->notifyDataSetChanged()V

    goto :goto_0

    .line 114
    :cond_2
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/m;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/m;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/l;Z)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->g:Lam/sunrise/android/calendar/ui/widgets/calendar/m;

    .line 115
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->g:Lam/sunrise/android/calendar/ui/widgets/calendar/m;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method b()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x2

    const/16 v6, 0xc

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 71
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v0

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    .line 73
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 74
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    const/4 v2, -0x3

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->add(II)V

    .line 75
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 76
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 77
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 78
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 79
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    .line 81
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 82
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 85
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 86
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 88
    new-instance v0, Lc/a/a/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v1, Lc/a/a/b;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v0, v1}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->f:I

    .line 92
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->notifyDataSetChanged()V

    .line 93
    return-void
.end method

.method public c()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    return-object v0
.end method

.method public d()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e:Ljava/util/Calendar;

    return-object v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 169
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->i:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    .line 170
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->i:Ljava/util/Calendar;

    .line 172
    if-nez v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->notifyDataSetChanged()V

    .line 175
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->f:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 139
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 144
    if-nez p2, :cond_1

    .line 145
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/calendar/o;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    .line 148
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;

    .line 150
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 151
    const/4 v3, 0x6

    mul-int/lit8 v4, p1, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 153
    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->setFirstDay(Ljava/util/Calendar;)V

    .line 154
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->k:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->k:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a(Ljava/util/Calendar;)Lam/sunrise/android/calendar/ui/widgets/calendar/a;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_0

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setActivated(Z)V

    .line 160
    :cond_0
    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/i;

    if-eqz v0, :cond_0

    .line 180
    check-cast p1, Lam/sunrise/android/calendar/ui/widgets/calendar/a;

    .line 181
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->getDay()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a(Ljava/util/Calendar;)V

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/i;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->getDay()Ljava/util/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/i;->a(Ljava/util/Calendar;)V

    .line 185
    :cond_0
    return-void
.end method
