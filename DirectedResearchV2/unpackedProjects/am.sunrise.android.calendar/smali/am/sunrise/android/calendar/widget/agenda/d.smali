.class public Lam/sunrise/android/calendar/widget/agenda/d;
.super Lam/sunrise/android/calendar/widget/agenda/m;
.source "LockscreenRenderer.java"


# instance fields
.field private e:Z

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lam/sunrise/android/calendar/widget/agenda/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/widget/agenda/m;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-boolean p3, p0, Lam/sunrise/android/calendar/widget/agenda/d;->e:Z

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->f:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->f:Landroid/graphics/Paint;

    const-string v1, "#7fffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c00f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 58
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->g:I

    .line 60
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->b:Landroid/content/res/Resources;

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->h:I

    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->i:I

    .line 63
    new-instance v0, Lam/sunrise/android/calendar/widget/agenda/a;

    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->i:I

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/widget/agenda/a;-><init>(I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->j:Lam/sunrise/android/calendar/widget/agenda/a;

    .line 64
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;I)V
    .locals 3

    .prologue
    .line 155
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->e:Z

    if-eqz v0, :cond_0

    const v0, 0x7f03007b

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 159
    const v0, 0x7f0b011b

    iget-object v2, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 160
    const v0, 0x7f0b010b

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 161
    return-void

    .line 155
    :cond_0
    const v0, 0x7f030078

    goto :goto_0
.end method

.method private a(Landroid/widget/RemoteViews;ILam/sunrise/android/calendar/widget/agenda/e;)V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>()V

    .line 269
    iget-object v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    .line 270
    iget-object v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->l:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 271
    iget-boolean v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->d:Z

    iput-boolean v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    .line 272
    iget-object v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 273
    iget-object v1, p3, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 275
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 276
    const-string v2, "event_details"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 279
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;I)V
    .locals 6

    .prologue
    .line 165
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 167
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 168
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    iget v3, p0, Lam/sunrise/android/calendar/widget/agenda/d;->g:I

    if-le p3, v3, :cond_0

    iget-object v3, p2, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->b:Landroid/content/res/Resources;

    const v3, 0x7f0f00ce

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    iget-object v3, p2, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x1a

    invoke-static {v1, v3, v4, v5}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const v1, 0x7f0b011d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    const v1, 0x7f0b010b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 184
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;Z)V
    .locals 8

    .prologue
    const v7, 0x7f0b011c

    const v6, 0x7f0b0115

    const v5, 0x7f0b0113

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 188
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 190
    const v1, 0x7f0b0110

    const v2, 0x7f0b0111

    invoke-virtual {p0, p2, v0, v1, v2}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Lam/sunrise/android/calendar/widget/agenda/e;Landroid/widget/RemoteViews;II)V

    .line 193
    const v1, 0x7f0b0112

    iget-object v2, p2, Lam/sunrise/android/calendar/widget/agenda/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->b:Landroid/content/res/Resources;

    const v2, 0x7f0f0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 199
    const v1, 0x7f0b0114

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    if-eqz p3, :cond_0

    .line 202
    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 209
    :goto_0
    const v1, 0x7f0b010b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 211
    const v0, 0x7f0b010f

    invoke-direct {p0, p1, v0, p2}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Landroid/widget/RemoteViews;ILam/sunrise/android/calendar/widget/agenda/e;)V

    .line 212
    return-void

    .line 205
    :cond_0
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private b(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;Z)V
    .locals 10

    .prologue
    const v9, 0x7f0b0114

    const/16 v2, 0xc

    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f03007a

    invoke-direct {v5, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 218
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

    .line 222
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    .line 226
    :goto_1
    iget-boolean v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->d:Z

    if-eqz v1, :cond_2

    .line 227
    const-string v1, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

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

    .line 239
    :goto_2
    const v1, 0x7f0b0113

    invoke-virtual {v5, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    const v1, 0x7f0b0113

    invoke-virtual {v5, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 242
    const v0, 0x7f0b0110

    const v1, 0x7f0b0111

    invoke-virtual {p0, p2, v5, v0, v1}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Lam/sunrise/android/calendar/widget/agenda/e;Landroid/widget/RemoteViews;II)V

    .line 245
    const v0, 0x7f0b0112

    iget-object v1, p2, Lam/sunrise/android/calendar/widget/agenda/e;->n:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 247
    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->v:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v5, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 254
    :goto_3
    if-eqz p3, :cond_6

    .line 255
    const v0, 0x7f0b0115

    invoke-virtual {v5, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    const v0, 0x7f0b011c

    invoke-virtual {v5, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 262
    :goto_4
    const v0, 0x7f0b010b

    invoke-virtual {p1, v0, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 264
    const v0, 0x7f0b010f

    invoke-direct {p0, p1, v0, p2}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Landroid/widget/RemoteViews;ILam/sunrise/android/calendar/widget/agenda/e;)V

    .line 265
    return-void

    :cond_0
    move v0, v4

    .line 218
    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p2, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    goto :goto_1

    .line 230
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 231
    if-nez v1, :cond_3

    move v1, v2

    .line 234
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

    const/4 v1, 0x2

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "AM"

    :goto_5
    aput-object v0, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "PM"

    goto :goto_5

    .line 251
    :cond_5
    invoke-virtual {v5, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 258
    :cond_6
    const v0, 0x7f0b0115

    invoke-virtual {v5, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 259
    const v0, 0x7f0b011c

    invoke-virtual {v5, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4
.end method


# virtual methods
.method public a()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030079

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->e:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0182

    :goto_0
    invoke-direct {p0, p1, v0}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Landroid/widget/RemoteViews;I)V

    .line 77
    return-void

    .line 73
    :cond_0
    const v0, 0x7f0f0184

    goto :goto_0
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
    const/4 v3, 0x0

    const v4, 0x7f0b010b

    const/4 v2, 0x1

    .line 91
    iget-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/d;->e:Z

    if-nez v0, :cond_3

    .line 92
    if-ltz p4, :cond_2

    const/4 v0, 0x3

    if-ge p4, v0, :cond_2

    .line 93
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/widget/agenda/e;

    .line 97
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030077

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 100
    const/4 v2, -0x1

    const v3, 0x7f0b0111

    invoke-virtual {p0, v0, v1, v2, v3}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Lam/sunrise/android/calendar/widget/agenda/e;Landroid/widget/RemoteViews;II)V

    .line 101
    const v2, 0x7f0b0112

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 104
    const v1, 0x7f0b010f

    invoke-direct {p0, p1, v1, v0}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Landroid/widget/RemoteViews;ILam/sunrise/android/calendar/widget/agenda/e;)V

    .line 152
    :goto_1
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030079

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_1

    .line 110
    :cond_2
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    const-string v1, "home"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const v1, 0x7f0b010d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/widget/agenda/e;

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 123
    invoke-static {v4}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 126
    if-lez p4, :cond_7

    .line 127
    iget-object v5, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    add-int/lit8 v1, p4, -0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/widget/agenda/e;

    iget-object v1, v1, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v5, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v4, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 134
    :goto_2
    if-eqz v1, :cond_4

    .line 135
    invoke-direct {p0, p1, v0, p5}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;I)V

    .line 139
    :cond_4
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 140
    iget-object v2, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/widget/agenda/e;

    iget-object v1, v1, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v2, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    .line 147
    :cond_5
    iget-boolean v1, v0, Lam/sunrise/android/calendar/widget/agenda/e;->d:Z

    if-eqz v1, :cond_9

    .line 148
    invoke-direct {p0, p1, v0, v2}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;Z)V

    goto/16 :goto_1

    :cond_6
    move v1, v3

    .line 127
    goto :goto_2

    .line 131
    :cond_7
    iget-object v1, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-static {v4, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_8

    move v3, v2

    :cond_8
    move v1, v3

    goto :goto_2

    .line 150
    :cond_9
    invoke-direct {p0, p1, v0, v2}, Lam/sunrise/android/calendar/widget/agenda/d;->b(Landroid/widget/RemoteViews;Lam/sunrise/android/calendar/widget/agenda/e;Z)V

    goto/16 :goto_1
.end method

.method public b(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f0f0183

    invoke-direct {p0, p1, v0}, Lam/sunrise/android/calendar/widget/agenda/d;->a(Landroid/widget/RemoteViews;I)V

    .line 82
    return-void
.end method
