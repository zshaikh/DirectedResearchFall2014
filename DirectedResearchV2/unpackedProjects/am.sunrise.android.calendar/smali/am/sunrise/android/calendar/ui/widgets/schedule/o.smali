.class public Lam/sunrise/android/calendar/ui/widgets/schedule/o;
.super Landroid/widget/FrameLayout;
.source "ScheduleViewAdapter.java"


# instance fields
.field a:Z

.field b:Landroid/text/StaticLayout;

.field c:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->a()V

    .line 114
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->d:F

    .line 190
    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->e:I

    .line 191
    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->f:I

    .line 192
    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->g:I

    .line 193
    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->h:I

    .line 194
    const v1, 0x7f0c0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->i:I

    .line 195
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->j:Landroid/graphics/Typeface;

    .line 196
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, p1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    const/high16 v1, 0x42b40000

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->setRotation(F)V

    .line 183
    return-void
.end method

.method public a(Ljava/util/Calendar;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    const/4 v7, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v6, 0x1

    .line 127
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->a:Z

    .line 130
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->a:Z

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->g:I

    .line 145
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const v5, 0x8002

    invoke-static {v2, v3, v4, v5}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 151
    const-string v2, "%d/%d/%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->d:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->i:I

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->j:Landroid/graphics/Typeface;

    invoke-static {v2, v0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    .line 168
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->b:Landroid/text/StaticLayout;

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-virtual {v0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(Ljava/util/Calendar;Ljava/util/ArrayList;)V

    .line 173
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 134
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->h:I

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 137
    if-eq v1, v0, :cond_2

    if-ne v6, v0, :cond_3

    .line 138
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->f:I

    goto/16 :goto_0

    .line 140
    :cond_3
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->e:I

    goto/16 :goto_0

    .line 154
    :cond_4
    const-string v2, "%d/%d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    return-object v0
.end method
