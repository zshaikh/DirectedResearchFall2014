.class public Lam/sunrise/android/calendar/ui/inbox/a;
.super Landroid/support/v4/widget/a;
.source "InboxAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lam/sunrise/android/calendar/b/e;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private j:I

.field private k:Lam/sunrise/android/calendar/ui/inbox/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/inbox/d;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 199
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    .line 200
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->b:Landroid/view/LayoutInflater;

    .line 201
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->c:Lam/sunrise/android/calendar/b/e;

    .line 202
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/inbox/a;->k:Lam/sunrise/android/calendar/ui/inbox/d;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->e:I

    .line 206
    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->f:I

    .line 207
    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->g:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/inbox/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/inbox/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    const v1, 0x7f020103

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->h:Landroid/graphics/Bitmap;

    .line 210
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->j:I

    .line 211
    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->i:I

    .line 212
    return-void
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 5

    .prologue
    .line 569
    if-nez p2, :cond_0

    .line 570
    const-wide/16 v0, 0x1

    .line 574
    :goto_0
    return-wide v0

    .line 573
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 574
    new-instance v1, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/inbox/a;)Lam/sunrise/android/calendar/ui/inbox/d;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->k:Lam/sunrise/android/calendar/ui/inbox/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 633
    :goto_0
    return-object v0

    .line 599
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/a/b;

    invoke-direct {v2}, Lcom/android/a/b;-><init>()V

    .line 600
    invoke-virtual {v2, p1}, Lcom/android/a/b;->a(Ljava/lang/String;)V

    .line 602
    iget v0, v2, Lcom/android/a/b;->b:I

    packed-switch v0, :pswitch_data_0

    .line 620
    const/4 v0, -0x1

    .line 624
    :goto_1
    if-lez v0, :cond_6

    .line 625
    iget v3, v2, Lcom/android/a/b;->e:I

    if-nez v3, :cond_5

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 604
    :pswitch_0
    iget v0, v2, Lcom/android/a/b;->e:I

    if-nez v0, :cond_1

    const v0, 0x7f0f011f

    goto :goto_1

    :cond_1
    const v0, 0x7f0e0007

    goto :goto_1

    .line 608
    :pswitch_1
    iget v0, v2, Lcom/android/a/b;->e:I

    if-nez v0, :cond_2

    const v0, 0x7f0f0121

    goto :goto_1

    :cond_2
    const v0, 0x7f0e0009

    goto :goto_1

    .line 612
    :pswitch_2
    iget v0, v2, Lcom/android/a/b;->e:I

    if-nez v0, :cond_3

    const v0, 0x7f0f0120

    goto :goto_1

    :cond_3
    const v0, 0x7f0e0008

    goto :goto_1

    .line 616
    :pswitch_3
    iget v0, v2, Lcom/android/a/b;->e:I

    if-nez v0, :cond_4

    const v0, 0x7f0f0122

    goto :goto_1

    :cond_4
    const v0, 0x7f0e000a

    goto :goto_1

    .line 625
    :cond_5
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/android/a/b;->e:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v2, v2, Lcom/android/a/b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/a/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    const-string v2, "InboxAdapter"

    const-string v3, "getRecurringRule: Parse Exception -- %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/a/d;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-virtual {v0}, Lcom/android/a/d;->printStackTrace()V

    :cond_6
    move-object v0, v1

    .line 633
    goto :goto_0

    .line 602
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 5

    .prologue
    .line 581
    if-nez p2, :cond_0

    .line 582
    const-wide/16 v0, 0x0

    .line 587
    :goto_0
    return-wide v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 587
    new-instance v1, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/aa;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/aa;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lam/sunrise/android/calendar/ui/inbox/c;
    .locals 1

    .prologue
    .line 240
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/inbox/e;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/a;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 226
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    const-string v3, "calendar_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 230
    const-string v4, "event_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 232
    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 235
    :cond_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    .prologue
    .line 298
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lam/sunrise/android/calendar/ui/inbox/e;

    .line 299
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->y:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->a:Ljava/lang/String;

    .line 300
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->z:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->b:Ljava/lang/String;

    .line 301
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->A:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->c:Ljava/lang/String;

    .line 303
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->B:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->d:Z

    .line 305
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->C:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    .line 306
    iget v3, v2, Lam/sunrise/android/calendar/ui/inbox/e;->D:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 308
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v5, v2, Lam/sunrise/android/calendar/ui/inbox/e;->e:Ljava/util/Calendar;

    .line 309
    iget-object v5, v2, Lam/sunrise/android/calendar/ui/inbox/e;->e:Ljava/util/Calendar;

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 311
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    .line 312
    const/4 v0, 0x0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    .line 318
    :goto_1
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->E:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->g:Ljava/lang/String;

    .line 319
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->F:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->h:Ljava/lang/String;

    .line 320
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->G:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->i:Ljava/lang/String;

    .line 321
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->J:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->l:Ljava/lang/String;

    .line 322
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->K:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->m:Z

    .line 324
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->H:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    .line 325
    iget v3, v2, Lam/sunrise/android/calendar/ui/inbox/e;->I:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 327
    iget-boolean v5, v2, Lam/sunrise/android/calendar/ui/inbox/e;->m:Z

    if-eqz v5, :cond_3

    .line 328
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->j:Ljava/util/Calendar;

    .line 329
    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->k:Ljava/util/Calendar;

    .line 335
    :goto_3
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->L:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->n:Ljava/lang/String;

    .line 336
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->M:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->o:Ljava/lang/String;

    .line 337
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->N:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->p:Ljava/lang/String;

    .line 338
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->O:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->q:Ljava/lang/String;

    .line 339
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->P:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->r:Z

    .line 340
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Q:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->s:Ljava/lang/String;

    .line 341
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->R:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->t:Ljava/lang/String;

    .line 342
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->S:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->u:Ljava/lang/String;

    .line 343
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->T:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->v:Ljava/lang/String;

    .line 344
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->U:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->w:Ljava/lang/String;

    .line 345
    iget v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->V:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->x:Ljava/lang/String;

    .line 347
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ae:I

    .line 356
    :goto_5
    iget-object v3, v2, Lam/sunrise/android/calendar/ui/inbox/e;->h:Ljava/lang/String;

    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->b:Ljava/lang/String;

    :goto_6
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->i:Ljava/lang/String;

    :goto_7
    iget v4, p0, Lam/sunrise/android/calendar/ui/inbox/a;->i:I

    invoke-static {v3, v0, v1, v4}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ad:Ljava/lang/String;

    .line 363
    new-instance v0, Lam/sunrise/android/calendar/ui/inbox/f;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ad:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/inbox/a;->h:Landroid/graphics/Bitmap;

    iget v5, p0, Lam/sunrise/android/calendar/ui/inbox/a;->i:I

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/inbox/f;-><init>(Landroid/content/res/Resources;Lam/sunrise/android/calendar/ui/inbox/e;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->af:Lam/sunrise/android/calendar/ui/inbox/f;

    .line 366
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->af:Lam/sunrise/android/calendar/ui/inbox/f;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 370
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Y:Landroid/widget/TextView;

    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-boolean v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->r:Z

    if-eqz v0, :cond_9

    .line 373
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->X:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    :goto_8
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->j:Ljava/util/Calendar;

    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->k:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/inbox/a;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v3

    .line 379
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->j:Ljava/util/Calendar;

    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->k:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/inbox/a;->b(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v5

    .line 383
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    if-nez v0, :cond_a

    .line 384
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 390
    :goto_9
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->X:Landroid/widget/TextView;

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const/16 v10, 0x12

    invoke-static {v7, v8, v9, v10}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-boolean v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->m:Z

    if-eqz v1, :cond_c

    .line 395
    const-wide/16 v0, 0x1

    cmp-long v0, v3, v0

    if-lez v0, :cond_b

    .line 396
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    iget-object v3, v2, Lam/sunrise/android/calendar/ui/inbox/e;->j:Ljava/util/Calendar;

    iget-object v4, v2, Lam/sunrise/android/calendar/ui/inbox/e;->k:Ljava/util/Calendar;

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :goto_a
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 545
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->aa:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 548
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->aa:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    const v5, 0x7f0f0129

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :goto_b
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 558
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ab:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    :goto_c
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 314
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    .line 315
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_1

    .line 322
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 331
    :cond_3
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->j:Ljava/util/Calendar;

    .line 332
    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->k:Ljava/util/Calendar;

    goto/16 :goto_3

    .line 339
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 349
    :cond_5
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ae:I

    goto/16 :goto_5

    .line 352
    :cond_6
    const-string v0, "default"

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->b:Ljava/lang/String;

    .line 353
    iget v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->j:I

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ae:I

    goto/16 :goto_5

    .line 356
    :cond_7
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->p:Ljava/lang/String;

    goto/16 :goto_6

    :cond_8
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->o:Ljava/lang/String;

    goto/16 :goto_7

    .line 375
    :cond_9
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->X:Landroid/widget/TextView;

    const v1, 0x7f020143

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_8

    .line 386
    :cond_a
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 387
    const/16 v1, 0xe

    long-to-int v7, v5

    rsub-int/lit8 v7, v7, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_9

    .line 400
    :cond_b
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0034

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 402
    :cond_c
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->k:Ljava/util/Calendar;

    if-eqz v1, :cond_13

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_13

    .line 403
    const-wide/16 v5, 0x1

    cmp-long v1, v3, v5

    if-lez v1, :cond_d

    .line 407
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    iget-object v3, v2, Lam/sunrise/android/calendar/ui/inbox/e;->j:Ljava/util/Calendar;

    iget-object v4, v2, Lam/sunrise/android/calendar/ui/inbox/e;->k:Ljava/util/Calendar;

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 422
    :cond_d
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    iget-object v3, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    invoke-static {v1, v0, v3}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 428
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->d:Z

    if-eqz v1, :cond_e

    .line 429
    const-string v1, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 432
    const-string v1, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 436
    const/4 v4, 0x0

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 439
    const-string v0, " - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 441
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 443
    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 449
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lam/sunrise/android/calendar/ui/inbox/a;->f:I

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-interface {v0, v3, v4, v6, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 452
    new-instance v3, Lam/sunrise/android/calendar/ui/widgets/ai;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/inbox/a;->g:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    iget v8, p0, Lam/sunrise/android/calendar/ui/inbox/a;->e:I

    invoke-direct {v3, v4, v5, v8}, Lam/sunrise/android/calendar/ui/widgets/ai;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 453
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v7, -0x1

    const/16 v6, 0x21

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 456
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lam/sunrise/android/calendar/ui/inbox/a;->f:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v0, v3, v7, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 509
    :goto_d
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 460
    :cond_e
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 461
    if-nez v1, :cond_f

    .line 462
    const/16 v1, 0xc

    .line 464
    :cond_f
    const-string v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 466
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "AM"

    .line 469
    :goto_e
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 470
    if-nez v1, :cond_10

    .line 471
    const/16 v1, 0xc

    .line 473
    :cond_10
    const-string v5, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    iget-object v7, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 475
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->f:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "AM"

    .line 479
    :goto_f
    const/4 v6, 0x0

    .line 480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 482
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 485
    const-string v0, " - "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 487
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 488
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 490
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v0, " ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 498
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lam/sunrise/android/calendar/ui/inbox/a;->f:I

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-interface {v0, v1, v6, v4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 501
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/ai;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/inbox/a;->g:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    iget v6, p0, Lam/sunrise/android/calendar/ui/inbox/a;->e:I

    invoke-direct {v1, v3, v4, v6}, Lam/sunrise/android/calendar/ui/widgets/ai;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 502
    const/16 v3, 0x21

    invoke-interface {v0, v1, v8, v9, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 505
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lam/sunrise/android/calendar/ui/inbox/a;->f:I

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-interface {v0, v1, v10, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_d

    .line 466
    :cond_11
    const-string v0, "PM"

    goto/16 :goto_e

    .line 475
    :cond_12
    const-string v1, "PM"

    goto :goto_f

    .line 520
    :cond_13
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/inbox/a;->d:Z

    if-eqz v1, :cond_14

    .line 521
    const-string v1, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 523
    const/4 v1, 0x0

    .line 524
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 536
    :goto_10
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 538
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lam/sunrise/android/calendar/ui/inbox/a;->f:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-interface {v3, v4, v1, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 541
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 526
    :cond_14
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 527
    if-nez v1, :cond_15

    .line 528
    const/16 v1, 0xc

    .line 530
    :cond_15
    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 531
    const/4 v3, 0x0

    .line 532
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_16

    const-string v0, " AM"

    :goto_11
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v11, v1

    move v1, v3

    move-object v3, v0

    move v0, v11

    goto :goto_10

    :cond_16
    const-string v0, " PM"

    goto :goto_11

    .line 551
    :cond_17
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->aa:Landroid/widget/TextView;

    const v1, 0x7f0f00b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 554
    :cond_18
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->aa:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 560
    :cond_19
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ab:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ab:Landroid/widget/TextView;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f018b

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->w:Ljava/lang/String;

    :goto_12
    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_1a
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->t:Ljava/lang/String;

    goto :goto_12
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0b0016

    .line 245
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 246
    new-instance v2, Lam/sunrise/android/calendar/ui/inbox/e;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/inbox/e;-><init>()V

    .line 247
    const-string v0, "calendar_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->y:I

    .line 248
    const-string v0, "calendar_color"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->z:I

    .line 249
    const-string v0, "calendar_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->A:I

    .line 250
    const-string v0, "occurrence_is_all_day"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->B:I

    .line 251
    const-string v0, "occurrence_start_date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->C:I

    .line 252
    const-string v0, "occurrence_end_date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->D:I

    .line 253
    const-string v0, "event_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->E:I

    .line 254
    const-string v0, "event_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->F:I

    .line 255
    const-string v0, "event_title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->G:I

    .line 256
    const-string v0, "event_start_date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->H:I

    .line 257
    const-string v0, "event_end_date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->I:I

    .line 258
    const-string v0, "event_timezone"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->J:I

    .line 259
    const-string v0, "event_is_all_day"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->K:I

    .line 260
    const-string v0, "event_user_rsvp_status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->L:I

    .line 261
    const-string v0, "event_icon_overlay"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->M:I

    .line 262
    const-string v0, "event_icon_base_color"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->N:I

    .line 263
    const-string v0, "event_rrule"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->O:I

    .line 264
    const-string v0, "event_extra_invitation_seen"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->P:I

    .line 265
    const-string v0, "inbox_event_inviter_facebook_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Q:I

    .line 266
    const-string v0, "inbox_event_inviter_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->R:I

    .line 267
    const-string v0, "inbox_event_inviter_firstname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->S:I

    .line 268
    const-string v0, "inbox_event_inviter_lastname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->T:I

    .line 269
    const-string v0, "inbox_event_inviter_email_1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->U:I

    .line 270
    const-string v0, "inbox_event_inviter_email_2"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->V:I

    .line 271
    const v0, 0x7f0b0133

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->W:Landroid/widget/ImageView;

    .line 272
    const v0, 0x7f0b0134

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->X:Landroid/widget/TextView;

    .line 273
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->X:Landroid/widget/TextView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 274
    const v0, 0x7f0b0135

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Y:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f0b0136

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->Z:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f0b0137

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->aa:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0b0138

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ab:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0b0139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ac:Landroid/widget/Button;

    .line 279
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ac:Landroid/widget/Button;

    invoke-virtual {v0, v5, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 280
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ac:Landroid/widget/Button;

    new-instance v3, Lam/sunrise/android/calendar/ui/inbox/b;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/ui/inbox/b;-><init>(Lam/sunrise/android/calendar/ui/inbox/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/inbox/e;->ac:Landroid/widget/Button;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 292
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 293
    return-object v1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/inbox/a;->d:Z

    .line 217
    invoke-super {p0, p1}, Landroid/support/v4/widget/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
