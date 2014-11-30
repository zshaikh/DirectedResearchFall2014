.class public Lam/sunrise/android/calendar/widget/agenda/b;
.super Lam/sunrise/android/calendar/widget/agenda/m;
.source "DesktopRenderer.java"


# instance fields
.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lam/sunrise/android/calendar/widget/agenda/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/widget/agenda/m;-><init>(Landroid/content/Context;I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->e:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->e:Landroid/graphics/Paint;

    const-string v1, "#7fffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c00f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 54
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->f:I

    .line 56
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->g:I

    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->h:I

    .line 59
    new-instance v0, Lam/sunrise/android/calendar/widget/agenda/a;

    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->h:I

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/widget/agenda/a;-><init>(I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->i:Lam/sunrise/android/calendar/widget/agenda/a;

    .line 60
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;I)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 125
    const v1, 0x7f0b011b

    iget-object v2, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    const v1, 0x7f0b010b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 127
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;ILam/sunrise/android/calendar/widget/agenda/e;)V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>()V

    .line 217
    iget-object v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    .line 218
    iget-object v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->l:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 219
    iget-boolean v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->d:Z

    iput-boolean v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    .line 220
    iget-object v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 221
    iget-object v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 223
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    const-string v2, "event_details"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 227
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 153
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030073

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 155
    const v1, 0x7f0b0110

    const v2, 0x7f0b0111

    invoke-virtual {p0, p2, v0, v1, v2}, Lam/sunrise/android/calendar/widget/agenda/b;->a(Lam/sunrise/android/calendar/widget/agenda/e;Landroid/widget/RemoteViews;II)V

    .line 158
    const v1, 0x7f0b0112

    iget-object v2, p2, Lam/sunrise/android/calendar/widget/agenda/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 160
    const v1, 0x7f0b0113

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 161
    const v1, 0x7f0b0114

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    const v1, 0x7f0b0115

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 164
    const v1, 0x7f0b010b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 166
    const v0, 0x7f0b010f

    invoke-direct {p0, p1, v0, p2}, Lam/sunrise/android/calendar/widget/agenda/b;->a(Landroid/widget/RemoteViews;ILam/sunrise/android/calendar/widget/agenda/e;)V

    .line 167
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;I)V
    .locals 6

    .prologue
    .line 131
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 134
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    iget v3, p0, Lam/sunrise/android/calendar/widget/agenda/b;->f:I

    if-le p3, v3, :cond_0

    iget-object v3, p2, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->b:Landroid/content/res/Resources;

    const v3, 0x7f0f00ce

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    iget-object v3, p2, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x1a

    invoke-static {v1, v3, v4, v5}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const v1, 0x7f0b011d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 149
    const v1, 0x7f0b010b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 150
    return-void
.end method

.method private b(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const v8, 0x7f0b0114

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 170
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030073

    invoke-direct {v5, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 172
    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->q:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    iget-object v1, p2, Lam/sunrise/android/calendar/widget/agenda/e;->p:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    iget-object v1, p2, Lam/sunrise/android/calendar/widget/agenda/e;->q:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 176
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    .line 180
    :goto_1
    iget-boolean v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->d:Z

    if-eqz v1, :cond_2

    .line 181
    const-string v1, "%02d:%02d"

    new-array v6, v9, [Ljava/lang/Object;

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_2
    const v1, 0x7f0b0113

    invoke-virtual {v5, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 194
    const v1, 0x7f0b0113

    invoke-virtual {v5, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 196
    const v0, 0x7f0b0110

    const v1, 0x7f0b0111

    invoke-virtual {p0, p2, v5, v0, v1}, Lam/sunrise/android/calendar/widget/agenda/b;->a(Lam/sunrise/android/calendar/widget/agenda/e;Landroid/widget/RemoteViews;II)V

    .line 199
    const v0, 0x7f0b0112

    iget-object v1, p2, Lam/sunrise/android/calendar/widget/agenda/e;->n:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->v:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v5, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 208
    :goto_3
    const v0, 0x7f0b0115

    invoke-virtual {v5, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    const v0, 0x7f0b010b

    invoke-virtual {p1, v0, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 212
    const v0, 0x7f0b010f

    invoke-direct {p0, p1, v0, p2}, Lam/sunrise/android/calendar/widget/agenda/b;->a(Landroid/widget/RemoteViews;ILam/sunrise/android/calendar/widget/agenda/e;)V

    .line 213
    return-void

    :cond_0
    move v0, v4

    .line 172
    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    goto :goto_1

    .line 184
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 185
    if-nez v1, :cond_3

    move v1, v2

    .line 188
    :cond_3
    const-string v6, "%d:%02d %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "AM"

    :goto_4
    aput-object v0, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "PM"

    goto :goto_4

    .line 205
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v5, v8, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3
.end method


# virtual methods
.method public a()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030071

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0f0182

    invoke-direct {p0, p1, v0}, Lam/sunrise/android/calendar/widget/agenda/b;->a(Landroid/widget/RemoteViews;I)V

    .line 70
    return-void
.end method

.method public a(Landroid/widget/RemoteViews;Ljava/util/ArrayList;Ljava/util/ArrayList;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;III)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/widget/agenda/e;

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 87
    invoke-static {v4}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 91
    if-lez p4, :cond_4

    .line 92
    iget-object v5, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    add-int/lit8 v1, p4, -0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/widget/agenda/e;

    iget-object v1, v1, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v5, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v4, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 99
    :goto_0
    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, p1, v0, p5}, Lam/sunrise/android/calendar/widget/agenda/b;->a(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;I)V

    .line 103
    :cond_0
    iget-boolean v1, v0, Lam/sunrise/android/calendar/widget/agenda/e;->d:Z

    if-eqz v1, :cond_6

    .line 104
    invoke-direct {p0, p1, v0}, Lam/sunrise/android/calendar/widget/agenda/b;->a(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;)V

    .line 110
    :goto_1
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 111
    iget-object v1, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/widget/agenda/e;

    iget-object v0, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    .line 117
    :cond_1
    if-eqz v3, :cond_2

    .line 118
    const v0, 0x7f0b010b

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lam/sunrise/android/calendar/widget/agenda/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030070

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 121
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 92
    goto :goto_0

    .line 96
    :cond_4
    iget-object v1, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v4, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    .line 106
    :cond_6
    invoke-direct {p0, p1, v0}, Lam/sunrise/android/calendar/widget/agenda/b;->b(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;)V

    goto :goto_1
.end method

.method public b(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f0f0183

    invoke-direct {p0, p1, v0}, Lam/sunrise/android/calendar/widget/agenda/b;->a(Landroid/widget/RemoteViews;I)V

    .line 75
    return-void
.end method
