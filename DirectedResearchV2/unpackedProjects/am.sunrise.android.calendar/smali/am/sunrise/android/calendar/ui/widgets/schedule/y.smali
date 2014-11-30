.class public Lam/sunrise/android/calendar/ui/widgets/schedule/y;
.super Landroid/view/View;
.source "ScheduleViewHourSidebar.java"


# static fields
.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private i:Landroid/graphics/Rect;

.field private j:Z

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12 AM"

    aput-object v1, v0, v3

    const-string v1, "01 AM"

    aput-object v1, v0, v4

    const-string v1, "02 AM"

    aput-object v1, v0, v5

    const-string v1, "03 AM"

    aput-object v1, v0, v6

    const-string v1, "04 AM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "05 AM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06 AM"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07 AM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08 AM"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09 AM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10 AM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11 AM"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12 PM"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "01 PM"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "02 PM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "03 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "04 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "05 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "06 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "07 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "08 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "09 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "10 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "11 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "12 AM"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->g:[Ljava/lang/String;

    .line 73
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "01"

    aput-object v1, v0, v4

    const-string v1, "02"

    aput-object v1, v0, v5

    const-string v1, "03"

    aput-object v1, v0, v6

    const-string v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "00"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->i:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/aa;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/y;Lam/sunrise/android/calendar/ui/widgets/schedule/z;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->k:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->b()V

    .line 110
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->j:Z

    .line 178
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/y;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->setWillNotDraw(Z)V

    .line 184
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->setBackgroundColor(I)V

    .line 186
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->c:Landroid/graphics/Paint;

    .line 189
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 191
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->c:Landroid/graphics/Paint;

    const v2, 0x7f0c010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 192
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->c:Landroid/graphics/Paint;

    const v2, 0x7f0a00c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 195
    const v1, 0x7f0c010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->d:I

    .line 196
    const v1, 0x7f0c010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->e:I

    .line 198
    const v1, 0x7f0c010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->f:I

    .line 200
    const v1, 0x7f0c0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a:I

    .line 201
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->d:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->f:I

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->g:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->b:I

    .line 203
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a()V

    .line 204
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 3

    .prologue
    .line 128
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->f:I

    int-to-float v0, v0

    .line 129
    const/high16 v1, 0x42700000

    div-float v1, v0, v1

    .line 131
    int-to-float v2, p1

    mul-float/2addr v0, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentTimePosition()I
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 162
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->k:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 171
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->d:I

    .line 145
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->h:[Ljava/lang/String;

    :goto_0
    move v3, v1

    move v1, v2

    .line 147
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 148
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->c:Landroid/graphics/Paint;

    aget-object v5, v0, v1

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->i:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 149
    aget-object v4, v0, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->i:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->e:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->i:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->f:I

    add-int/2addr v3, v4

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->g:[Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->b:I

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->setMeasuredDimension(II)V

    .line 137
    return-void
.end method
