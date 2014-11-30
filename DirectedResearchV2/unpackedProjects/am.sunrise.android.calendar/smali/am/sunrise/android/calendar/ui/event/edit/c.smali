.class public Lam/sunrise/android/calendar/ui/event/edit/c;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "EditEventFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/event/c;
.implements Lam/sunrise/android/calendar/ui/event/edit/ab;
.implements Lam/sunrise/android/calendar/ui/event/m;
.implements Lam/sunrise/android/calendar/ui/event/p;
.implements Lam/sunrise/android/calendar/ui/event/r;
.implements Lam/sunrise/android/calendar/ui/event/y;
.implements Lam/sunrise/android/calendar/ui/locationpicker/g;


# static fields
.field private static final d:[I


# instance fields
.field private A:Z

.field private B:Ljava/util/Calendar;

.field private C:Ljava/lang/String;

.field private D:Ljava/util/Calendar;

.field private E:Ljava/util/Calendar;

.field private F:Z

.field private G:J

.field private H:J

.field private I:Z

.field private J:I

.field private K:I

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Lam/sunrise/android/calendar/ui/utils/b;

.field private P:[Z

.field private Q:Ljava/lang/Runnable;

.field private final R:Lcom/android/datetimepicker/date/e;

.field private final S:Lcom/android/datetimepicker/date/e;

.field private final T:Lcom/android/datetimepicker/time/s;

.field private final U:Lcom/android/datetimepicker/time/s;

.field private a:Lam/sunrise/android/calendar/ui/event/edit/y;

.field private b:Lam/sunrise/android/calendar/b/e;

.field private c:Landroid/content/BroadcastReceiver;

.field private e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

.field private f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

.field private g:Landroid/widget/EditText;

.field private h:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/LinearLayout;

.field private t:[Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

.field private y:Z

.field private z:Lam/sunrise/android/calendar/ui/locationpicker/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lam/sunrise/android/calendar/ui/event/edit/c;->d:[I

    return-void

    :array_0
    .array-data 4
        0x7f0b00c7
        0x7f0b00c8
        0x7f0b00c9
        0x7f0b00ca
        0x7f0b00cb
        0x7f0b00cc
        0x7f0b00cd
        0x7f0b00ce
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 129
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/edit/y;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;Lam/sunrise/android/calendar/ui/event/edit/d;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->a:Lam/sunrise/android/calendar/ui/event/edit/y;

    .line 133
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/d;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/d;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->c:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/o;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/o;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->Q:Ljava/lang/Runnable;

    .line 729
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/l;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/l;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->R:Lcom/android/datetimepicker/date/e;

    .line 747
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/m;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/m;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->S:Lcom/android/datetimepicker/date/e;

    .line 798
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/n;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/n;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->T:Lcom/android/datetimepicker/time/s;

    .line 814
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/p;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/p;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->U:Lcom/android/datetimepicker/time/s;

    .line 209
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->b:Lam/sunrise/android/calendar/b/e;

    .line 210
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->n:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    :goto_0
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->b(Landroid/widget/TextView;Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->o:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    :goto_0
    return-void

    .line 1025
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private C()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1031
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1037
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UTC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 1039
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    .line 1040
    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 1041
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 1043
    cmp-long v0, v2, v10

    if-lez v0, :cond_2

    .line 1044
    const-string v0, "+%d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :goto_1
    cmp-long v0, v4, v10

    if-lez v0, :cond_0

    .line 1050
    const-string v0, ":%02d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    return-void

    .line 1034
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 1046
    :cond_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private D()V
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    return-void
.end method

.method private E()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1061
    move v0, v1

    move v2, v1

    .line 1062
    :goto_0
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 1063
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_0

    .line 1064
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->t:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    :cond_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->t:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    const/4 v2, 0x1

    goto :goto_1

    .line 1071
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->u:Landroid/view/View;

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    return-void

    :cond_2
    move v1, v3

    .line 1071
    goto :goto_2
.end method

.method private F()V
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    return-void
.end method

.method private G()V
    .locals 3

    .prologue
    .line 1079
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->w:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    :goto_0
    return-void

    .line 1083
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/a/b;

    invoke-direct {v0}, Lcom/android/a/b;-><init>()V

    .line 1084
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/a/b;->a(Ljava/lang/String;)V

    .line 1085
    iget v1, v0, Lcom/android/a/b;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1087
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->w:Landroid/widget/TextView;

    const v1, 0x7f0f00bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Lcom/android/a/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    invoke-virtual {v0}, Lcom/android/a/d;->printStackTrace()V

    goto :goto_0

    .line 1091
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->w:Landroid/widget/TextView;

    iget v0, v0, Lcom/android/a/b;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x7f0f00bd

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f00be

    goto :goto_1

    .line 1097
    :pswitch_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->w:Landroid/widget/TextView;

    const v1, 0x7f0f00bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1101
    :pswitch_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->w:Landroid/widget/TextView;

    const v1, 0x7f0f00bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Lcom/android/a/d; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1085
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private H()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1150
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->x:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-nez v0, :cond_2

    .line 1151
    :cond_0
    const-string v0, "EditEventFragment"

    const-string v1, "originalEventInfo is null"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    .line 1170
    :cond_1
    :goto_0
    return-void

    .line 1156
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->x:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    .line 1158
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    if-nez v0, :cond_6

    .line 1159
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    iget-boolean v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_2
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    .line 1161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 1162
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1156
    goto :goto_1

    :cond_4
    move v0, v2

    .line 1159
    goto :goto_2

    :cond_5
    move v1, v2

    .line 1162
    goto :goto_3

    .line 1165
    :cond_6
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    .line 1166
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 1167
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-eqz v3, :cond_8

    :goto_5
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    goto :goto_0

    :cond_7
    move v0, v2

    .line 1165
    goto :goto_4

    :cond_8
    move v1, v2

    .line 1167
    goto :goto_5
.end method

.method private I()V
    .locals 2

    .prologue
    .line 1260
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->z:Lam/sunrise/android/calendar/ui/locationpicker/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/f;->cancel(Z)Z

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->z:Lam/sunrise/android/calendar/ui/locationpicker/f;

    .line 1264
    :cond_0
    return-void
.end method

.method private J()Z
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->z:Lam/sunrise/android/calendar/ui/locationpicker/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->z:Lam/sunrise/android/calendar/ui/locationpicker/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/f;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private K()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1363
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1364
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1365
    :cond_0
    const/4 v0, 0x0

    .line 1367
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private L()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1371
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1373
    :goto_0
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1374
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 1375
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lam/sunrise/android/calendar/g;->a(I)Lam/sunrise/android/calendar/g;

    move-result-object v3

    invoke-virtual {v3}, Lam/sunrise/android/calendar/g;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    invoke-static {v2}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1380
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    .line 1381
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1382
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1385
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    .line 1388
    :cond_3
    return-void
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 5

    .prologue
    .line 1173
    if-nez p2, :cond_0

    .line 1174
    const-wide/16 v0, 0x0

    .line 1179
    :goto_0
    return-wide v0

    .line 1177
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 1179
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

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/edit/c;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->x:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/edit/c;Lam/sunrise/android/calendar/ui/utils/b;)Lam/sunrise/android/calendar/ui/utils/b;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->O:Lam/sunrise/android/calendar/ui/utils/b;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/edit/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/edit/c;Z)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/edit/c;->b(Z)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 986
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 987
    const v0, 0x8012

    .line 990
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 991
    const v0, 0x801a

    .line 994
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    return-void
.end method

.method private a(Ljava/util/Calendar;Lcom/android/datetimepicker/date/e;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v6, 0x7

    .line 763
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v1

    .line 764
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 765
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 766
    const/4 v3, -0x3

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 767
    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 768
    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 769
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 770
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 771
    const/16 v1, 0xc

    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 772
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v3, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 773
    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 775
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p2, v1, v4, v5}, Lcom/android/datetimepicker/date/b;->a(Lcom/android/datetimepicker/date/e;III)Lcom/android/datetimepicker/date/b;

    move-result-object v4

    .line 780
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lcom/android/datetimepicker/date/b;->a(II)V

    .line 782
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v1

    .line 783
    if-ne v1, v6, :cond_1

    .line 786
    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/date/b;->b(I)V

    .line 788
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 789
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v1

    const-string v2, "DatePickerDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 790
    if-eqz v1, :cond_0

    .line 791
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 793
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;)Landroid/support/v4/app/aa;

    .line 795
    const-string v1, "DatePickerDialog"

    invoke-virtual {v4, v0, v1}, Lcom/android/datetimepicker/date/b;->show(Landroid/support/v4/app/aa;Ljava/lang/String;)I

    .line 796
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/util/Calendar;Lcom/android/datetimepicker/time/s;)V
    .locals 4

    .prologue
    .line 828
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->I:Z

    invoke-static {p2, v0, v1, v2}, Lcom/android/datetimepicker/time/l;->a(Lcom/android/datetimepicker/time/s;IIZ)Lcom/android/datetimepicker/time/l;

    move-result-object v0

    .line 834
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v1

    .line 835
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v2

    const-string v3, "TimePickerDialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 836
    if-eqz v2, :cond_0

    .line 837
    invoke-virtual {v1, v2}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 839
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;)Landroid/support/v4/app/aa;

    .line 841
    const-string v2, "TimePickerDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/time/l;->show(Landroid/support/v4/app/aa;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method private a(Z)V
    .locals 7

    .prologue
    .line 663
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    iput-boolean v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    .line 664
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    .line 665
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    .line 667
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 672
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->x:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->B:Ljava/util/Calendar;

    iget-boolean v5, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->A:Z

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->C:Ljava/lang/String;

    move-object v0, p0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/event/edit/aa;->a(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;ZLjava/util/Calendar;ZLjava/lang/String;)Lam/sunrise/android/calendar/ui/event/edit/aa;

    move-result-object v0

    .line 695
    :goto_0
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/edit/aa;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 696
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->x:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-static {p0, v0, v1, p1}, Lam/sunrise/android/calendar/ui/event/edit/aa;->a(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;Z)Lam/sunrise/android/calendar/ui/event/edit/aa;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([Lam/sunrise/android/calendar/ui/event/info/PersonInfo;)[Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 5

    .prologue
    .line 1409
    invoke-static {p0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    const/4 v0, 0x0

    .line 1423
    :goto_0
    return-object v0

    .line 1413
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 1414
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1415
    aget-object v2, p0, v0

    .line 1416
    new-instance v3, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-direct {v3}, Lam/sunrise/android/calendar/api/models/datas/Contact;-><init>()V

    .line 1417
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    iput-object v4, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    .line 1418
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->d:Ljava/lang/String;

    iput-object v4, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    .line 1419
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->e:Ljava/lang/String;

    iput-object v4, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->lastName:Ljava/lang/String;

    .line 1420
    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    iput-object v2, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    .line 1421
    aput-object v3, v1, v0

    .line 1414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1423
    goto :goto_0
.end method

.method private static a([Lam/sunrise/android/calendar/api/models/datas/Contact;[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;)[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1428
    invoke-static {p0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    :goto_0
    return-object v2

    .line 1433
    :cond_0
    invoke-static {p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, v2

    .line 1439
    :goto_1
    array-length v0, p0

    new-array v6, v0, [Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move v3, v4

    .line 1440
    :goto_2
    array-length v0, p0

    if-ge v3, v0, :cond_5

    .line 1441
    aget-object v7, p0, v3

    .line 1443
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_6

    move v5, v4

    .line 1444
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 1445
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 1446
    iget-object v8, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    iget-object v9, v7, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-static {v8, v9}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    iget-object v9, v7, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-static {v8, v9}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1449
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    :goto_4
    if-nez v0, :cond_2

    .line 1455
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;-><init>()V

    .line 1456
    iget-object v5, v7, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    iput-object v5, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    .line 1457
    iget-object v5, v7, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    iput-object v5, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->d:Ljava/lang/String;

    .line 1458
    iget-object v5, v7, Lam/sunrise/android/calendar/api/models/datas/Contact;->lastName:Ljava/lang/String;

    iput-object v5, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->e:Ljava/lang/String;

    .line 1459
    iget-object v5, v7, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    iput-object v5, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    .line 1460
    const-string v5, "notReplied"

    iput-object v5, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->j:Ljava/lang/String;

    .line 1463
    :cond_2
    aput-object v0, v6, v3

    .line 1440
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1436
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    goto :goto_1

    .line 1444
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_5
    move-object v2, v6

    .line 1466
    goto :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_4
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->j()V

    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/edit/c;Z)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Z)V

    return-void
.end method

.method private b(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0xc

    .line 1001
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->I:Z

    if-eqz v0, :cond_0

    .line 1002
    const-string v0, "%02d:%02d"

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    :goto_0
    return-void

    .line 1005
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1006
    if-nez v0, :cond_1

    move v0, v1

    .line 1009
    :cond_1
    const-string v2, "%d:%02d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " AM"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1014
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 1015
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->M:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1017
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1011
    :cond_2
    const-string v0, " PM"

    goto :goto_1
.end method

.method private b(Z)V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v3, 0x0

    const/16 v6, 0xd

    .line 699
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    if-eq v0, p1, :cond_0

    .line 700
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    .line 701
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xe10

    mul-long/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->G:J

    .line 705
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xe10

    mul-long/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->H:J

    .line 709
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 710
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 712
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->j:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->m:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 725
    :goto_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 727
    :cond_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->G:J

    long-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 716
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->H:J

    long-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 718
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->y()V

    .line 719
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->A()V

    .line 721
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/edit/c;)Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->h:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1254
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->I()V

    .line 1255
    new-instance v0, Lam/sunrise/android/calendar/ui/locationpicker/f;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/f;-><init>(Lam/sunrise/android/calendar/ui/locationpicker/g;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->z:Lam/sunrise/android/calendar/ui/locationpicker/f;

    .line 1256
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->z:Lam/sunrise/android/calendar/ui/locationpicker/f;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/locationpicker/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1257
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->k()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1310
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1311
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#ff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1318
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/b/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1319
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->d:Ljava/lang/String;

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->J:I

    invoke-static {v2, v0, p1, v3}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->O:Lam/sunrise/android/calendar/ui/utils/b;

    if-eqz v2, :cond_3

    .line 1323
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->N:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->N:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1360
    :cond_0
    :goto_1
    return-void

    .line 1314
    :cond_1
    const-string v0, "default"

    .line 1315
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->K:I

    goto :goto_0

    .line 1329
    :cond_2
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->O:Lam/sunrise/android/calendar/ui/utils/b;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/utils/b;->a()V

    .line 1330
    iput-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->O:Lam/sunrise/android/calendar/ui/utils/b;

    .line 1333
    :cond_3
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->N:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->N:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1340
    :cond_4
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->N:Ljava/lang/String;

    .line 1341
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/b;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->N:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    sget-object v4, Lam/sunrise/android/calendar/ui/utils/c;->a:Lam/sunrise/android/calendar/ui/utils/c;

    new-instance v5, Lam/sunrise/android/calendar/ui/event/edit/q;

    invoke-direct {v5, p0}, Lam/sunrise/android/calendar/ui/event/edit/q;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lam/sunrise/android/calendar/ui/utils/b;-><init>(Ljava/lang/String;Landroid/widget/TextView;Lam/sunrise/android/calendar/ui/utils/c;Lam/sunrise/android/calendar/ui/utils/d;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->O:Lam/sunrise/android/calendar/ui/utils/b;

    .line 1350
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->L:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1352
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->b(Landroid/graphics/drawable/Drawable;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->O:Lam/sunrise/android/calendar/ui/utils/b;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    goto :goto_1

    .line 1357
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->L:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1358
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->l()V

    return-void
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->m()V

    return-void
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->n()V

    return-void
.end method

.method static synthetic h(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->o()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 480
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 481
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 482
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 483
    if-nez v2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 488
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 489
    :cond_2
    invoke-virtual {v2, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 493
    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method static synthetic i(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->p()V

    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 637
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->i()V

    .line 639
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 640
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    .line 641
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 643
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 644
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->Q:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    :cond_0
    return-void
.end method

.method static synthetic j(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->q()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->R:Lcom/android/datetimepicker/date/e;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Ljava/util/Calendar;Lcom/android/datetimepicker/date/e;)V

    .line 846
    return-void
.end method

.method static synthetic k(Lam/sunrise/android/calendar/ui/event/edit/c;)[Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->T:Lcom/android/datetimepicker/time/s;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Ljava/util/Calendar;Lcom/android/datetimepicker/time/s;)V

    .line 850
    return-void
.end method

.method static synthetic l(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->r()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 859
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->S:Lcom/android/datetimepicker/date/e;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Ljava/util/Calendar;Lcom/android/datetimepicker/date/e;)V

    .line 860
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    goto :goto_0
.end method

.method static synthetic m(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->s()V

    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 866
    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 870
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->U:Lcom/android/datetimepicker/time/s;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Ljava/util/Calendar;Lcom/android/datetimepicker/time/s;)V

    .line 871
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    goto :goto_0
.end method

.method static synthetic n(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->t()V

    return-void
.end method

.method static synthetic o(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 874
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->I()V

    .line 875
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v1, :cond_0

    .line 877
    const-string v1, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    :cond_0
    const/16 v1, 0x7e9

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->startActivityForResult(Landroid/content/Intent;I)V

    .line 881
    return-void
.end method

.method static synthetic p(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 884
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    const-string v1, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    const-string v1, "am.sunrise.android.calendar.extra.PEOPLE"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/event/edit/c;->a([Lam/sunrise/android/calendar/ui/event/info/PersonInfo;)[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 890
    :cond_0
    const/16 v1, 0x7e8

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->startActivityForResult(Landroid/content/Intent;I)V

    .line 891
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 894
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->f:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    invoke-static {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/event/i;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method static synthetic q(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 899
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    const/4 v2, -0x1

    invoke-static {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/event/a;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;[ZI)V

    .line 900
    return-void
.end method

.method static synthetic r(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->w()V

    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 903
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/n;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 904
    return-void
.end method

.method static synthetic s(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->z()V

    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 907
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/s;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method static synthetic t(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->A()V

    return-void
.end method

.method static synthetic u(Lam/sunrise/android/calendar/ui/event/edit/c;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 919
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->w()V

    .line 920
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->B()V

    .line 921
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->C()V

    .line 922
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->D()V

    .line 923
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->v()V

    .line 924
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->E()V

    .line 925
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->F()V

    .line 926
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->G()V

    .line 927
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 930
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->q:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    :goto_0
    return-void

    .line 933
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v0, v0, v2

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v0, v0, v2

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 937
    const-string v0, " +"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 940
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v0, v0, v2

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method private w()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 945
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->h:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setChecked(Z)V

    .line 947
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 955
    :goto_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->x()V

    .line 956
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->y()V

    .line 957
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->z()V

    .line 958
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->A()V

    .line 959
    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 963
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->b(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 967
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Landroid/widget/TextView;Ljava/util/Calendar;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 609
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/edit/z;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Z)V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Z)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1117
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->L()V

    .line 1118
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 1119
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->E()V

    .line 1120
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 1195
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->addressComponents:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1196
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1198
    iget-object v4, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->addressComponents:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 1199
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1200
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->types:[Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1201
    iget-object v7, v6, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->types:[Ljava/lang/String;

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_2

    aget-object v9, v7, v0

    .line 1202
    const-string v10, "street_number"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "route"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "locality"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "administrative_area_level_1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "country"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1207
    :cond_0
    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1214
    :cond_3
    const-string v0, "street_number"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "route"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1217
    const-string v0, "street_number"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    const-string v0, "route"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    .line 1222
    :cond_4
    const-string v0, "locality"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1223
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v0, "locality"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    .line 1225
    :cond_5
    const-string v0, "administrative_area_level_1"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1226
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v0, "administrative_area_level_1"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    .line 1228
    :cond_6
    const-string v0, "country"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1229
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v0, "country"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    .line 1233
    :cond_7
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    if-eqz v0, :cond_8

    .line 1234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;->lat:D

    iput-wide v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    .line 1235
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;->lng:D

    iput-wide v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    .line 1238
    :cond_8
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->B()V

    .line 1240
    if-eqz p2, :cond_9

    iget-object v0, p2, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;->timeZoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1241
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, p2, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;->timeZoneId:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    .line 1242
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->C()V

    .line 1245
    :cond_9
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 1246
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object p1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    .line 1133
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->F()V

    .line 1134
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 1135
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1278
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 1280
    new-instance v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>()V

    .line 1281
    iput-object p1, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    .line 1282
    iput-object p2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 1283
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    iput-boolean v0, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    .line 1284
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 1286
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 1288
    iget-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1296
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1297
    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1298
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/i;->setResult(ILandroid/content/Intent;)V

    .line 1299
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 1300
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 1292
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object p1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    .line 1141
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object p2, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->c:Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object p3, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->d:Ljava/lang/String;

    .line 1143
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object p4, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    .line 1144
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->D()V

    .line 1145
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 1146
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->K()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->d(Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/edit/z;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Z)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Z)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1125
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->L()V

    .line 1126
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 1127
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->E()V

    .line 1128
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object p1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    .line 913
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->G()V

    .line 914
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 915
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    .line 214
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->y:Z

    return v0
.end method

.method protected d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/edit/z;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Z)V

    .line 658
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Z)V

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/q;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 1188
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 1251
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    const v1, 0x7f0f017c

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 1274
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 1305
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 501
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 502
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->a:Lam/sunrise/android/calendar/ui/event/edit/y;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 503
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 533
    packed-switch p1, :pswitch_data_0

    .line 604
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 605
    :cond_1
    :goto_1
    return-void

    .line 564
    :pswitch_0
    if-ne v0, p2, :cond_1

    .line 565
    if-eqz p3, :cond_3

    .line 566
    const-string v0, "am.sunrise.android.calendar.extra.PEOPLE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 567
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 568
    array-length v1, v0

    new-array v1, v1, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 569
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/event/edit/c;->a([Lam/sunrise/android/calendar/api/models/datas/Contact;[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;)[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 575
    :cond_2
    :goto_2
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->v()V

    .line 576
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    goto :goto_1

    .line 573
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    goto :goto_2

    .line 581
    :pswitch_1
    if-ne v0, p2, :cond_0

    .line 582
    if-eqz p3, :cond_5

    .line 583
    const-string v0, "am.sunrise.android.calendar.extras.LOCATION_REFERENCE_ID"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 585
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->c(Ljava/lang/String;)V

    .line 588
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;-><init>()V

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 589
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v1, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v1, "am.sunrise.android.calendar.extras.LOCATION_ADDRESS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    .line 596
    :goto_3
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->B()V

    .line 597
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->C()V

    .line 598
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->H()V

    goto :goto_0

    .line 593
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 594
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    goto :goto_3

    .line 533
    :pswitch_data_0
    .packed-switch 0x7e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 222
    const v2, 0x7f0c0057

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->J:I

    .line 223
    const v2, 0x7f0a00c2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->K:I

    .line 224
    const v2, 0x7f020103

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->L:Landroid/graphics/drawable/Drawable;

    .line 225
    const v2, 0x7f0a000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->M:I

    .line 227
    if-eqz p1, :cond_4

    .line 228
    const-string v0, "saved_event_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    .line 229
    const-string v0, "saved_occurrence_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    .line 230
    const-string v0, "saved_original_is_all_day"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->A:Z

    .line 231
    const-string v0, "saved_original_start_date"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v2

    .line 234
    invoke-static {v2, v0}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->B:Ljava/util/Calendar;

    .line 236
    :cond_0
    const-string v0, "saved_original_timezone"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->C:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->b:Lam/sunrise/android/calendar/b/e;

    const-string v2, "saved_start_date"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    .line 238
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->b:Lam/sunrise/android/calendar/b/e;

    const-string v2, "saved_end_date"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    .line 239
    const-string v0, "saved_is_all_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    .line 240
    const-string v0, "saved_start_time"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->G:J

    .line 241
    const-string v0, "saved_end_time"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->H:J

    .line 270
    :cond_1
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-static {}, Lam/sunrise/android/calendar/g;->values()[Lam/sunrise/android/calendar/g;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    .line 272
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 275
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 276
    :goto_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 277
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/g;->a(J)Lam/sunrise/android/calendar/g;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_3

    .line 279
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->P:[Z

    invoke-virtual {v1}, Lam/sunrise/android/calendar/g;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 276
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    .line 244
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    .line 246
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->A:Z

    .line 248
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    if-nez v0, :cond_5

    .line 249
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->B:Ljava/util/Calendar;

    .line 255
    :goto_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->C:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->B:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    .line 258
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    .line 259
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    .line 261
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 263
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->d(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    goto/16 :goto_0

    .line 251
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->B:Ljava/util/Calendar;

    .line 252
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->B:Ljava/util/Calendar;

    const/16 v2, 0xe

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    invoke-direct {p0, v3, v4}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v3

    long-to-int v3, v3

    rsub-int/lit8 v3, v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 283
    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 309
    const v0, 0x7f030051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEventMainThread(Lam/sunrise/android/calendar/sync/events/EventUpdated;)V
    .locals 4

    .prologue
    .line 626
    if-eqz p1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getOldEventId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getNewEventId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getNewEventId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 631
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->a:Lam/sunrise/android/calendar/ui/event/edit/y;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 634
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 521
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 523
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, La/a/a/c;->a(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 525
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 526
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->I()V

    .line 528
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 529
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 507
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 509
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, La/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 510
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    invoke-virtual {v0, v1}, La/a/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->onEventMainThread(Lam/sunrise/android/calendar/sync/events/EventUpdated;)V

    .line 512
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->I:Z

    .line 516
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->w()V

    .line 517
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->L()V

    .line 291
    const-string v0, "saved_event_info"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->f:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    const-string v0, "saved_occurrence_info"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->e:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 294
    const-string v1, "saved_original_start_date"

    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->A:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->B:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "saved_original_is_all_day"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    const-string v0, "saved_original_timezone"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "saved_start_date"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->b:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->D:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "saved_end_date"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->b:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->E:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "saved_is_all_day"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->F:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    const-string v0, "saved_start_time"

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->G:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 304
    const-string v0, "saved_end_time"

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->H:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    return-void

    .line 294
    :cond_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->B:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 314
    const v0, 0x7f0b00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    .line 315
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->g:Landroid/widget/EditText;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/r;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/r;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 330
    const v0, 0x7f0b00b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->h:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    .line 331
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->h:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/s;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/s;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setOnCheckedChangeListener(Lam/sunrise/android/calendar/ui/widgets/af;)V

    .line 337
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->h:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/t;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/t;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v0, 0x7f0b00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 344
    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/u;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/u;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->i:Landroid/widget/TextView;

    .line 351
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 352
    const v0, 0x7f0b00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->k:Landroid/widget/TextView;

    .line 353
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 354
    const v0, 0x7f0b00b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->j:Landroid/view/View;

    .line 355
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->j:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/v;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/v;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v0, 0x7f0b00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 363
    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/w;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/w;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v1, 0x7f0b00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->l:Landroid/widget/TextView;

    .line 370
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    const v0, 0x7f0b00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->n:Landroid/widget/TextView;

    .line 372
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 373
    const v0, 0x7f0b00bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->m:Landroid/view/View;

    .line 374
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->m:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/x;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/x;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v0, 0x7f0b00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 382
    const v0, 0x7f0b00c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->o:Landroid/widget/TextView;

    .line 383
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 384
    const v0, 0x7f0b00c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->p:Landroid/widget/TextView;

    .line 385
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 386
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/e;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/e;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v0, 0x7f0b00c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 394
    const v0, 0x7f0b00c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->q:Landroid/widget/TextView;

    .line 395
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 396
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/f;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/f;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const v0, 0x7f0b00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 404
    const v0, 0x7f0b00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->r:Landroid/widget/TextView;

    .line 405
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 406
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/g;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const v0, 0x7f0b00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->s:Landroid/widget/LinearLayout;

    .line 414
    sget-object v0, Lam/sunrise/android/calendar/ui/event/edit/c;->d:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->t:[Landroid/view/View;

    .line 416
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 417
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->t:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 418
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->t:[Landroid/view/View;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->s:Landroid/widget/LinearLayout;

    sget-object v4, Lam/sunrise/android/calendar/ui/event/edit/c;->d:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v1

    .line 419
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->t:[Landroid/view/View;

    aget-object v0, v0, v1

    const v3, 0x7f0b0066

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 420
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 422
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->t:[Landroid/view/View;

    aget-object v0, v0, v1

    const v3, 0x7f0b0016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->t:[Landroid/view/View;

    aget-object v0, v0, v1

    new-instance v3, Lam/sunrise/android/calendar/ui/event/edit/h;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/ui/event/edit/h;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->s:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->u:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->u:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/i;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/i;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    const v0, 0x7f0b00d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 444
    const v0, 0x7f0b00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->v:Landroid/widget/TextView;

    .line 445
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 446
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/j;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/j;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v0, 0x7f0b00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 454
    const v0, 0x7f0b00d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->w:Landroid/widget/TextView;

    .line 455
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/k;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/edit/k;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 464
    const v0, 0x7f0b00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 468
    const v0, 0x7f0b00ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 471
    invoke-virtual {v0, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 472
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/c;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 473
    invoke-virtual {v0, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 476
    :cond_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/c;->u()V

    .line 477
    return-void
.end method
