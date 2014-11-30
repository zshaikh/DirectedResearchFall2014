.class public Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;
.super Lam/sunrise/android/calendar/ui/event/details/cards/h;
.source "EventDetailsCardDateTimeInfo.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/event/details/cards/b;


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

.field private r:Lam/sunrise/android/calendar/ui/event/details/cards/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/event/details/cards/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a()V

    .line 88
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;)Lam/sunrise/android/calendar/ui/event/details/cards/g;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->r:Lam/sunrise/android/calendar/ui/event/details/cards/g;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a:I

    .line 136
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->b:Z

    .line 138
    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->c:I

    .line 139
    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->d:Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->e:I

    .line 143
    return-void
.end method

.method private a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->l:Ljava/lang/String;

    .line 155
    :goto_0
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v2

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    :goto_1
    iget v4, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->e:I

    invoke-static {v3, v0, v1, v4}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Landroid/widget/ImageView;)V

    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->g:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setTextWithAutoLinking(Ljava/lang/String;)V

    .line 162
    return-void

    .line 149
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, "default"

    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->k:Ljava/lang/String;

    goto :goto_1
.end method

.method private b(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->p:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->q:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->q:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->setTextWithAutoLinking(Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method private b(Lam/sunrise/android/calendar/ui/event/info/EventInfo;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;)V
    .locals 13

    .prologue
    .line 166
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->i(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v2

    .line 171
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move-object v1, v0

    .line 178
    :goto_0
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->h(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v4

    .line 180
    iget-boolean v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    if-eqz v0, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->h:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->i:Landroid/widget/TextView;

    const v6, 0x7f020122

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 187
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x16

    invoke-static {v8, v6, v7, v9}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->k:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->l:Landroid/widget/TextView;

    const v6, 0x7f02011a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 194
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 195
    const/4 v6, 0x6

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 196
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->d(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 201
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x16

    invoke-static {v8, v6, v7, v9}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->n:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->n:Landroid/widget/TextView;

    iget-boolean v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    if-eqz v0, :cond_4

    const v0, 0x7f02011d

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 237
    iget-boolean v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    if-eqz v0, :cond_6

    .line 238
    const-wide/16 v2, 0x1

    cmp-long v0, v4, v2

    if-lez v0, :cond_5

    .line 239
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-static {v2, v1, v3}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_3
    return-void

    .line 174
    :cond_1
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 175
    const/16 v1, 0xe

    long-to-int v4, v2

    rsub-int/lit8 v4, v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    move-object v1, v0

    goto/16 :goto_0

    .line 203
    :cond_2
    iget-boolean v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    if-nez v0, :cond_3

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 208
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->h:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->i:Landroid/widget/TextView;

    const v6, 0x7f020122

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 210
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 211
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x16

    invoke-static {v8, v6, v7, v9}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v6, v7, v9}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->k:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->l:Landroid/widget/TextView;

    const v8, 0x7f02011a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 217
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 218
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x16

    invoke-static {v10, v8, v9, v11}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v6, v7, v9}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->h:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 228
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x16

    invoke-static {v8, v6, v7, v9}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 233
    :cond_4
    const v0, 0x7f020119

    goto/16 :goto_2

    .line 242
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 244
    :cond_6
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-eqz v0, :cond_d

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_d

    .line 245
    const-wide/16 v2, 0x1

    cmp-long v0, v4, v2

    if-lez v0, :cond_7

    .line 249
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-static {v2, v1, v3}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 252
    :cond_7
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 258
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->b:Z

    if-eqz v0, :cond_8

    .line 259
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string v1, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    const/4 v3, 0x0

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 269
    const-string v0, " - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 271
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 273
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 279
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->c:I

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v0, v2, v3, v5, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 282
    new-instance v2, Lam/sunrise/android/calendar/ui/widgets/ai;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->d:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    iget v7, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a:I

    invoke-direct {v2, v3, v4, v7}, Lam/sunrise/android/calendar/ui/widgets/ai;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 283
    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v4, v6, -0x1

    const/16 v5, 0x21

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 286
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->c:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-interface {v0, v2, v6, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 339
    :goto_4
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 290
    :cond_8
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 291
    if-nez v0, :cond_9

    .line 292
    const/16 v0, 0xc

    .line 294
    :cond_9
    const-string v1, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 296
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "AM"

    .line 299
    :goto_5
    iget-object v1, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 300
    if-nez v1, :cond_a

    .line 301
    const/16 v1, 0xc

    .line 303
    :cond_a
    const-string v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    iget-object v6, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 305
    iget-object v1, p2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "AM"

    .line 309
    :goto_6
    const/4 v5, 0x0

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 312
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 315
    const-string v0, " - "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 317
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 318
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 320
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v0, " ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 328
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->c:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v0, v1, v5, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 331
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/ai;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->d:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    iget v5, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a:I

    invoke-direct {v1, v2, v3, v5}, Lam/sunrise/android/calendar/ui/widgets/ai;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 332
    const/16 v2, 0x21

    invoke-interface {v0, v1, v7, v8, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 335
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->c:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v0, v1, v9, v4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 296
    :cond_b
    const-string v0, "PM"

    goto/16 :goto_5

    .line 305
    :cond_c
    const-string v1, "PM"

    goto :goto_6

    .line 346
    :cond_d
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->b:Z

    if-eqz v0, :cond_e

    .line 347
    const-string v0, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 349
    const/4 v1, 0x0

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 362
    :goto_7
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 364
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->c:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 367
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 352
    :cond_e
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 353
    if-nez v0, :cond_f

    .line 354
    const/16 v0, 0xc

    .line 356
    :cond_f
    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 357
    const/4 v3, 0x0

    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, " AM"

    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_7

    :cond_10
    const-string v0, " PM"

    goto :goto_8
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    .line 97
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->b(Lam/sunrise/android/calendar/ui/event/info/EventInfo;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;)V

    .line 99
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->o:Landroid/view/View;

    iget-boolean v0, p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->b(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    .line 102
    return-void

    .line 99
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->q:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    return-void

    .line 384
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/cards/f;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/f;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    .line 106
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->f:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->g:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->g:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->h:Landroid/view/View;

    .line 111
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->i:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->j:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->k:Landroid/view/View;

    .line 115
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->l:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->m:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->n:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->o:Landroid/view/View;

    .line 122
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->p:Landroid/view/View;

    .line 123
    const v0, 0x7f0b00a8

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->q:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    .line 124
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->q:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    const v2, 0x7f0f00b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c00b4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a008a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Ljava/lang/String;II)V

    .line 128
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->q:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->setOnTextEllipsizedStateChange(Lam/sunrise/android/calendar/ui/event/details/cards/b;)V

    .line 129
    return-void
.end method

.method public setOnEventDescriptionListener(Lam/sunrise/android/calendar/ui/event/details/cards/g;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->r:Lam/sunrise/android/calendar/ui/event/details/cards/g;

    .line 92
    return-void
.end method
