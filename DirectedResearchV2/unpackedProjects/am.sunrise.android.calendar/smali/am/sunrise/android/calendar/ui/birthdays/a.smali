.class public Lam/sunrise/android/calendar/ui/birthdays/a;
.super Landroid/widget/CursorAdapter;
.source "BirthdaysAdapter.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/birthdays/e;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/birthdays/e;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 175
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->a:Lam/sunrise/android/calendar/ui/birthdays/e;

    .line 176
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->b:Landroid/content/Context;

    .line 177
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->c:Landroid/view/LayoutInflater;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->d:I

    .line 181
    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->e:I

    .line 182
    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->f:I

    .line 183
    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->g:I

    .line 184
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->h:Landroid/graphics/drawable/Drawable;

    .line 185
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->h:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->g:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->g:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->i:I

    .line 188
    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->j:I

    .line 189
    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->k:I

    .line 190
    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->l:I

    .line 191
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/birthdays/a;)Lam/sunrise/android/calendar/ui/birthdays/e;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->a:Lam/sunrise/android/calendar/ui/birthdays/e;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    .line 250
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/birthdays/f;

    .line 251
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->n:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->a:Ljava/lang/String;

    .line 252
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->o:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->b:Ljava/lang/String;

    .line 253
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->p:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->c:Ljava/util/Calendar;

    .line 255
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->d:Ljava/util/Calendar;

    .line 256
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->d:Ljava/util/Calendar;

    iget v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->q:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 257
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->r:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->e:Ljava/lang/String;

    .line 258
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->s:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->f:Ljava/lang/String;

    .line 259
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->t:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->g:Ljava/lang/String;

    .line 260
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->u:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->h:Ljava/lang/String;

    .line 261
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->v:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->i:Ljava/lang/String;

    .line 262
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->w:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->j:Ljava/lang/String;

    .line 263
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->x:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->k:Ljava/lang/String;

    .line 264
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->y:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->l:I

    .line 266
    iget v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->z:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 267
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 269
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 271
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->m:Ljava/util/Calendar;

    .line 272
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->m:Ljava/util/Calendar;

    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 273
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->m:Ljava/util/Calendar;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 274
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->m:Ljava/util/Calendar;

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 279
    :goto_0
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->E:Landroid/widget/TextView;

    iget v2, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->i:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    iget v2, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->k:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->A:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 284
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->B:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    new-instance v0, Lam/sunrise/android/calendar/ui/birthdays/g;

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->k:Ljava/lang/String;

    iget v3, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->i:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->j:I

    iget v5, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->k:I

    iget v6, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->l:I

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/birthdays/g;-><init>(Lam/sunrise/android/calendar/ui/birthdays/f;Ljava/lang/String;IIII)V

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->I:Lcom/b/a/j;

    .line 289
    new-instance v0, Lam/sunrise/android/calendar/ui/birthdays/n;

    iget v2, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->d:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->f:I

    iget v4, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->l:I

    invoke-direct {v0, v2, v3, v4}, Lam/sunrise/android/calendar/ui/birthdays/n;-><init>(III)V

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->J:Lam/sunrise/android/calendar/ui/birthdays/n;

    .line 291
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->J:Lam/sunrise/android/calendar/ui/birthdays/n;

    invoke-virtual {v0, v2}, Lcom/b/a/as;->a(Lcom/b/a/ba;)Lcom/b/a/as;

    move-result-object v0

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->C:Landroid/widget/ImageView;

    iget-object v3, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->I:Lcom/b/a/j;

    invoke-virtual {v0, v2, v3}, Lcom/b/a/as;->a(Landroid/widget/ImageView;Lcom/b/a/j;)V

    .line 303
    :goto_1
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->i:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->G:Ljava/lang/String;

    .line 311
    :goto_2
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    new-instance v0, Lam/sunrise/android/calendar/ui/birthdays/h;

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->G:Ljava/lang/String;

    iget-object v3, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->D:Landroid/widget/ImageView;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/ui/birthdays/h;-><init>(Lam/sunrise/android/calendar/ui/birthdays/f;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->H:Lam/sunrise/android/calendar/ui/birthdays/h;

    .line 316
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->g:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->g:I

    invoke-virtual {v0, v2, v3}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v0

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->H:Lam/sunrise/android/calendar/ui/birthdays/h;

    invoke-virtual {v0, v2}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 325
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 327
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :goto_4
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->E:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->m:Ljava/util/Calendar;

    if-eqz v0, :cond_7

    .line 337
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->d:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->m:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 338
    if-lez v0, :cond_6

    .line 339
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 353
    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget v0, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->e:I

    :goto_6
    const/4 v3, 0x0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_9

    iget v1, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->e:I

    :goto_7
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 354
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->m:Ljava/util/Calendar;

    goto/16 :goto_0

    .line 298
    :cond_1
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->C:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->A:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 300
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->B:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 305
    :cond_2
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->G:Ljava/lang/String;

    goto/16 :goto_2

    .line 308
    :cond_3
    const/4 v0, 0x0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->G:Ljava/lang/String;

    goto/16 :goto_2

    .line 322
    :cond_4
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->D:Landroid/widget/ImageView;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 331
    :cond_5
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 344
    :cond_6
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 348
    :cond_7
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 353
    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0b0016

    .line 195
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 196
    new-instance v2, Lam/sunrise/android/calendar/ui/birthdays/f;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/birthdays/f;-><init>()V

    .line 197
    const-string v0, "event_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->n:I

    .line 198
    const-string v0, "event_title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->o:I

    .line 199
    const-string v0, "event_start_date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->p:I

    .line 200
    const-string v0, "occurrence_start_date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->q:I

    .line 201
    const-string v0, "person_facebook_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->r:I

    .line 202
    const-string v0, "person_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->s:I

    .line 203
    const-string v0, "person_firstname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->t:I

    .line 204
    const-string v0, "person_lastname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->u:I

    .line 205
    const-string v0, "person_thumbnail_url"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->v:I

    .line 206
    const-string v0, "person_email_1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->w:I

    .line 207
    const-string v0, "person_cover_url"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->x:I

    .line 208
    const-string v0, "person_cover_offset_y"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->y:I

    .line 209
    const-string v0, "person_birthday"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->z:I

    .line 210
    const v0, 0x7f0b0122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->B:Landroid/view/View;

    .line 211
    const v0, 0x7f0b0123

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->C:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f0b0124

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->D:Landroid/widget/ImageView;

    .line 213
    const v0, 0x7f0b0125

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->E:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0b0126

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    .line 215
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 217
    const v0, 0x7f0b0121

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/birthdays/f;->A:Landroid/widget/LinearLayout;

    .line 219
    const v0, 0x7f0b0127

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->b:Landroid/content/Context;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 221
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 222
    new-instance v3, Lam/sunrise/android/calendar/ui/birthdays/b;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/ui/birthdays/b;-><init>(Lam/sunrise/android/calendar/ui/birthdays/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v0, 0x7f0b0128

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/birthdays/a;->b:Landroid/content/Context;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 235
    new-instance v2, Lam/sunrise/android/calendar/ui/birthdays/c;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/birthdays/c;-><init>(Lam/sunrise/android/calendar/ui/birthdays/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-object v1
.end method
